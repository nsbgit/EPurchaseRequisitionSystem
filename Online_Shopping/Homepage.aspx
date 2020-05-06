<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 719px; width: 1229px; background-color: #99CCFF; background-image: url('Images/empire-state-building-new-york-city-new-york.jpg');">
    
        <div style="border-style: solid; height: 140px; width: 1217px;">
            <div style="border-style: solid; position: relative; top: 0px; left: 0px; width: 332px; height: 138px;">
                <a href="Homepage.aspx">
                    <asp:Image ID="Image1" runat="server" Height="141px" Width="328px" ImageUrl="~/images/online-banner.jpg" />
                </a>
            </div>
            <div class="auto-style1" style="border-style: solid; position: relative; top: -92px; left: 339px; width: 867px; height: 38px; text-align: center; font-size: x-large; background-color: #FF0000;">
                <strong>WELCOME TO FANCY E-SHOP</strong></div>
            <div style="position: relative; top: -52px; left: -1px; height: 56px; width: 1213px;">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <table style="width: 1216px; position: relative; height: 62px; top: -9px; left: 0px;">
                    <tr>
                        <td style="width: 100px; height: 21px; margin-left: 40px;">
                            <asp:Button ID="Button1" runat="server" Height="33px"  style="font-weight: 700" Text="Home" Width="106px" Font-Bold="True" Font-Size="Medium" PostBackUrl="~/Homepage.aspx" />
                        </td>
                        <td style="width: 100px; height: 21px; margin-left: 40px;">
                            <asp:Button ID="Button2" runat="server" Height="33px"  style="font-weight: 700" Text="Contact us" Width="106px" Font-Bold="True" PostBackUrl="~/Contactus.aspx" />
                        </td>
                        <td style="width: 100px; height: 21px">
                            <asp:Button ID="Button4" runat="server"  style="font-weight: 700" Text="User Login" Height="33px" PostBackUrl="~/UserLogin.aspx" />
                        </td>
                        <td style="width: 100px; height: 21px">
                            <asp:Button ID="Button5" runat="server" Height="33px"  style="font-weight: 700" Text="Salesman" Width="94px" PostBackUrl="~/salesmanlogin.aspx" />
                        </td>
                        <td style="width: 100px; height: 21px">
                            <asp:Button ID="Button6" runat="server" Height="33px"  style="font-weight: 700" Text="Admin" Width="87px" PostBackUrl="~/adminlogin.aspx" />
                        </td>
                    </tr>
                </table>
            </div>
            <div style="position: relative; top: -26px; left: 4px; width: 792px; height: 404px;">
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
                <div style="position: absolute; top: 13px; left: 1041px; width: 155px; height: 249px; margin-top: 0px;">
                    
                    <a href="~/UserInBox/ProductGallery.aspx">
                        <asp:Image ID="Image3" runat="server" Height="249px" ImageUrl="~/Images/nokia-lumia-720-400x400-imadjvfsz3kt9zzf.jpeg" Width="152px" />
                    </a>

                </div>
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/HomePageAd.xml"></asp:XmlDataSource>
                <div style="position: absolute; top: 7px; left: 851px; width: 352px; height: 399px; background-image: none;">
                    <div style="height: 264px; width: 143px">
                        
                        <a href="~/UserInBox/ProductGallery.aspx">
                            <asp:Image ID="Image2" runat="server" Height="257px" ImageUrl="~/Images/motorola-moto-x-400x400-imadu97xwrjynssw.jpeg" Width="137px" />
                        </a>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
            <div style="position: relative; top: -14px; left: -1px; height: 63px; font-weight: 700; text-align: center; font-size: x-large; color: #FFFF66;">
                All rights <a href="mailto:reserved@FANCY" style="color: #3333FF">reserved@FANCY</a> E-SHOP.COM 2014<div style="position: relative; top: -145px; left: 895px; width: 264px; color: #000066; background-color: #CCCCCC;">
                    BUY NOW<br />
                    (BEST DEALS)</div>
            </div>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
