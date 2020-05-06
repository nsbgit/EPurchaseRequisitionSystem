using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.IO;

public partial class CustomerRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Label16.Text = Guid.NewGuid().ToString().Substring(0, 6);
        //ddlGender.SelectedItem = 0;

        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have successfully registered. Your User ID and Password is send to your email address')", true);
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have successfully registered. Your User ID and Password is send to your email address')", true);
       
    }




    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select count(uname) from tbl_login where uname='" + TextBox9.Text + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_login");

        if (ds.Tables["tbl_login"].Rows.Count == 1 && ds.Tables["tbl_login"].Rows[0][0].ToString() == "1")
        {
            Label17.Text = "Username is not Available.";
            Label17.ForeColor = System.Drawing.Color.Red;
            //Label17.BackColor = System.Drawing.Color.Red;
            TextBox9.Focus();
        }
        else
        {
            if (TextBox9.Text != "")
            {
                Label17.Text = "Username is Available.";
                Label17.ForeColor = System.Drawing.Color.Green;
                //Label17.BackColor = System.Drawing.Color.Green;
                //TextBox10.Focus(); 
            }
            else
            {
                Label17.Text = "Don't leave User Name field blank.";
                Label17.ForeColor = System.Drawing.Color.Red;
            }
        }
    }




    private int GetUid(string uname)
    {
        da = new SqlDataAdapter("select uid from tbl_login where uname='" + uname.ToString() + "' ", con);
        return Convert.ToInt32(da.SelectCommand.ExecuteScalar());
    }





    /********* modified code starts here ******************************/

    private Dictionary<bool, string> CaptchaValidate()
    {
        // Validate Captcha here
        var IsValidCaptcha = new Dictionary<bool, string>();
        string[] resultsFromGoogle;
        HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://www.google.com/recaptcha/api/verify");
        req.Timeout = 0x7530;
        req.Method = "POST";
        req.UserAgent = "reCAPTCHA/ASP.NET";
        req.ContentType = "application/x-www-form-urlencoded";
        string Fdata = string.Format("privatekey={0}&remoteip={1}&challenge={2}&response={3}",
            new object[]{ //6LfqXPYSAAAAAMAqsWaan6WE6juyBdsW9iqHGWzT
                HttpUtility.UrlEncode("6LfqXPYSAAAAAMAqsWaan6WE6juyBdsW9iqHGWzT"),// give private key here
                HttpUtility.UrlEncode(Dns.GetHostEntry(Dns.GetHostName()).AddressList[1].ToString()),
                HttpUtility.UrlEncode(Request.Form["recaptcha_challenge_field"]),
                HttpUtility.UrlEncode(Request.Form["recaptcha_response_field"]),
            });

        byte[] resData = Encoding.ASCII.GetBytes(Fdata);
        using (Stream rStream = req.GetRequestStream())
        {
            rStream.Write(resData, 0, resData.Length);

        }
        try
        {
            using (WebResponse wResponse = req.GetResponse())
            {
                using (TextReader readStream = new StreamReader(wResponse.GetResponseStream(), Encoding.UTF8))
                {
                    resultsFromGoogle = readStream.ReadToEnd().Split(new string[] { "\n", "@\n" }, StringSplitOptions.RemoveEmptyEntries);
                }
            }
        }
        catch (WebException ex)
        {
            IsValidCaptcha.Add(false, ex.InnerException.ToString());
            return IsValidCaptcha;
        }

        IsValidCaptcha.Add(resultsFromGoogle[0] == "true", resultsFromGoogle[1]);
        return IsValidCaptcha;




        //req.ProtocolVersion = HttpVersion.Version10;

        //return IsValidCaptcha;
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        var IsValidCaptcha = CaptchaValidate();
        string val = "";

        try
        {
            IsValidCaptcha.TryGetValue(true, out val);
            if (val == null)
            {
                lblCaptchaResult.Text = "Provided security code is not valid plese try again....";
                lblCaptchaResult.ForeColor = System.Drawing.Color.Red;
                return;
            }
        }
        catch (Exception ex)
        {
            lblCaptchaResult.Text = "Provided security code is not valid plese try again....";
            lblCaptchaResult.BackColor = System.Drawing.Color.Red;
            return;
        }




        if (Label17.Text == "Username is Available.")
        {
            string password = new SomeFunctionalities().CreateStrongPassword();
            string email = TextBox4.Text;
            string gender = ddlGender.Text;


            da = new SqlDataAdapter("insert into tbl_login(uname,password,securitycode,status,cdate)values('" + TextBox9.Text + "','" + password + "','" + TextBox11.Text + "','Activate',getdate())", con);
            da.SelectCommand.ExecuteNonQuery();
            int uid = GetUid(TextBox9.Text);
            if (uid > 0)
            {
                da = new SqlDataAdapter("insert into tbl_contact(uid,fname,lname,gender,email,city,state,country,mobileno,cdate)values(" + uid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + gender + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "',getdate())", con);
                int n = da.SelectCommand.ExecuteNonQuery();
                // int k = da.ExecuteNonQuery();


                if (n == 1)
                {

                    /*********** SEND MAIL *************/


                    string subject = "Account Confirmation Mail";
                    string message = "Dear Mr./Mrs. " + TextBox1.Text + " " + TextBox2.Text + "\n"
                        + "\tYour User ID is : " + TextBox9.Text + "\n" 
                        + "\tYour Password is : " + password + "\n" +
                        "Please use this information to login into your account.";

                    new SomeFunctionalities().SendEmail(email, subject, message);



                    /************************************/



                    //Response.Write("<script>alert('User Details Added')</script>");
                    //System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert(' You have successfully registered.\n Your User ID ')</SCRIPT>");
                    Response.Redirect("~/Userlogin.aspx");
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You have successfully registered. Your User ID and Password is send to your email address')", true);
                    
                }
            }
        }
        else
        {
            Label1.Text = "The Username is already taken.Choose another Name.";
            Label1.BackColor = System.Drawing.Color.Red;
        }








    }













    /********* modified code ends here ******************************/














    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    if (Label17.Text == "Username is Available.")
    //    {
    //        string password = TextBox10.Text;
    //        string email = TextBox4.Text;


    //        da = new SqlDataAdapter("insert into tbl_login(uname,password,securitycode,status,cdate)values('" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','Activate',getdate())", con);
    //        da.SelectCommand.ExecuteNonQuery();
    //        int uid = GetUid(TextBox9.Text);
    //        if (uid > 0)
    //        {
    //            da = new SqlDataAdapter("insert into tbl_contact(uid,fname,lname,gender,email,city,state,country,mobileno,cdate)values(" + uid + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "',getdate())", con);
    //            int n=da.SelectCommand.ExecuteNonQuery();
    //           // int k = da.ExecuteNonQuery();


    //            if (n == 1)
    //            {

    //                /*********** SEND MAIL *************/


    //                string subject = "Passowrd Confirmation Mail";
    //                string message = "Dear Mr./Mrs. " + TextBox1.Text + " " + TextBox2.Text + "\n"
    //                    + "\tYour Password is : " + password + "\n" +
    //                    "Please use this information to login into your account.";

    //                new SomeFunctionalities().SendEmail(email, subject, message);



    //                /************************************/



    //                Response.Write("<script>alert('User Details Added')</script>");
    //                Response.Redirect("~/Userlogin.aspx");
    //            }
    //        }            
    //    }
    //    else
    //    {
    //        Label1.Text = "The Username is already taken.Choose another Name.";
    //        Label1.BackColor = System.Drawing.Color.Red;
    //    }
    //}
}
