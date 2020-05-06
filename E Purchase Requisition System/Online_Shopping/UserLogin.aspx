<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" Title="Customer login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left; width: 601px; position: relative; top: 144px; left: 283px;">
        <table style="width: 589px; position: static; height: 100px; margin-right: 141px;" bgcolor="White">
            <tr>
                <td align="center" colspan="3" valign="top">
                    <strong>User Login</strong></td>
            </tr>
            <tr>
                <td align="center" colspan="3" valign="top">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF8080" Height="28px"
                        Style="position: static" Width="424px"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 22px" align="center" colspan="3">
                    Username&nbsp; :<asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name is required" ValidationGroup="vgSignIn">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    Password&nbsp; :<asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required" ValidationGroup="vgSignIn">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="SignIn" OnClick="Button1_Click" ValidationGroup="vgSignIn" />
                </td>
            </tr>
            <tr>
                <td style="width: 69px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 69px">
                    New User ?</td>
                <td style="width: 100px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Style="position: static" Width="152px" PostBackUrl="~/CustomerRegistration.aspx" OnClick="LinkButton1_Click">SignUp Click here....</asp:LinkButton></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="vgSignIn" />
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>

