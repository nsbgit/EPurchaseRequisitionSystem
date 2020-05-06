<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Admin login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left; position: relative; top: 150px; left: 274px; width: 487px; height: 195px;">
        <table style="width: 436px; position: static; height: 179px" bgcolor="White">
            <tr>
                <td align="center" colspan="2" style="position: relative">
                    <strong>Admin Login</strong></td>
            </tr>
            <tr>
                <td align="center" style="position: relative">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="position: relative;">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" style="position: relative">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="position: relative;">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="position: relative; top: -23px; left: -272px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="SignIn" Width="90px" /></td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
                        
        </table>
    </div>
</asp:Content>

