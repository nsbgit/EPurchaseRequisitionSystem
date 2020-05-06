<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salesmanlogin.aspx.cs" Inherits="salesmanlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left; position: relative; top: 155px; left: 325px; width: 411px;">
    <table style="width: 427px; position: static; height: 100px" bgcolor="White">
        <tr>
            <td align="center" colspan="3" valign="top">
                <strong>Salesman Login</strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3" valign="top">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF8080" Height="28px"
                        Style="position: static" Width="424px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 69px; height: 22px">
                    Username&nbsp;<br />
                    : </td>
            <td style="width: 100px; height: 22px">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="175px"></asp:TextBox>
            </td>
            <td style="width: 100px; height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name is required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
                    Password&nbsp; :</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password" Width="174px"></asp:TextBox>
            </td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password is required">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 69px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="SignIn" OnClick="Button1_Click" />
            </td>
            <td style="width: 100px">
            </td>
            

        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>

