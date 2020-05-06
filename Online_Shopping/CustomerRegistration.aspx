<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegistration.aspx.cs" Inherits="CustomerRegistration" Title="Customer Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 533px; position: static; height: 100px" align="center">
        <tr>
            <td colspan="4" bgcolor="White" style="position: relative; top: 2px; left: 2px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="position: static"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="4" style="position: relative;" bgcolor="White">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Red" Style="position: static"
                    Text="*"></asp:Label>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Style="position: static"
                    Text="All are mandatory>>"></asp:Label></td>
        </tr>
        <tr>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label2" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
            </td>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label3" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label4" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">

                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="-- Select Gender --" Value="-- Select Gender --" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvGender" ErrorMessage="Gender is required field" ControlToValidate="ddlGender" runat="server" Text="*" ForeColor="Red" InitialValue="-- Select Gender --" />

            </td>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label5" runat="server" Style="position: static" Text="Email Address :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label6" runat="server" Style="position: static" Text="City :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="City is required" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
            </td>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label7" runat="server" Style="position: static" Text="State :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is required" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label8" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Country is required" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>
            </td>
            <td style="position: relative;" bgcolor="White">
                <asp:Label ID="Label9" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
            <td style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox8" runat="server" Style="position: static"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ErrorMessage="Mobile No is required" ControlToValidate="TextBox8">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Enter valid mobile number" ControlToValidate="TextBox8" ValidationExpression="^9\d{9}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" style="position: relative;" bgcolor="White">
                <asp:Label ID="Label10" runat="server" Style="position: static" Text="Login Values >>>"
                    Width="135px"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="position: relative;" bgcolor="White">
                <asp:Label ID="Label11" runat="server" Style="position: static" Text="User Name :"></asp:Label></td>
            <td colspan="2" style="position: relative;" bgcolor="White">
                <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True"
                    Style="position: static" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="User Name is required" ControlToValidate="TextBox9">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4" valign="top" bgcolor="White" style="position: relative">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Style="position: static"
                    Width="230px"></asp:Label></td>
        </tr>
        
        <tr>
            <td align="right" colspan="2" style="position: relative;" bgcolor="White">
                <asp:Label ID="Label15" runat="server" Style="position: static" Text="Enter Security text :"></asp:Label></td>
            <td colspan="2" style="position: relative;" bgcolor="White">


                <!-- 
                    ************** modification code strats here
                    -->

                <script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6LfqXPYSAAAAAORhsF6D8-f9PRbEF7FchrOWh43t"></script>
                <noscript>
                    <iframe src="http://www.google.com/recaptcha/api/noscript?k=6LfqXPYSAAAAAORhsF6D8-f9PRbEF7FchrOWh43t"
                        height="300" width="500" frameborder="0"></iframe>
                    <br>
                    <textarea name="recaptcha_challenge_field" rows="3" cols="40">

                                      </textarea>
                    <input type="hidden" name="recaptcha_response_field"
                        value="manual_challenge">
                </noscript>






                <!-- 
                    ************** modification code ends here
                    -->




                <!--
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Stencil"
                    Font-Size="XX-Large" Style="position: static"></asp:Label>

                -->
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="position: relative;" bgcolor="White"></td>
            <td colspan="2" style="position: relative;" bgcolor="White">
                

                <asp:Label ID="lblCaptchaResult" runat="server"></asp:Label>

                <!-- 
                    <asp:TextBox ID="TextBox11" runat="server" Style="position: static"></asp:TextBox></td>
                    -->

        </tr>



        <tr>
            <td align="center" colspan="4" valign="top" bgcolor="White" style="position: relative">
                <asp:Button ID="Button1" runat="server" Style="position: static"
                    Text="Submit&gt;&gt;" OnClick="Button1_Click" /></td>
        </tr>

        <tr>
            <td colspan="4" bgcolor="White">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />

            </td>
        </tr>
    </table>
</asp:Content>

