<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="UserInBox_Order" Title="Welcome to orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100px; position: static; height: 100px" bgcolor="White">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Style="position: static" Text="Order Confirmation>>"
                    Width="368px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="20"
                    Style="position: static" EnableModelValidation="True">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbpro1ConnectionString %>" SelectCommand="SELECT * FROM [tbl_soldproducts]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Style="position: static"
                    Text="Credit and Debit cards" Width="208px" /></td>
            <td style="width: 100px">
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Style="position: static"
                    Text="Drafts and Cheques" Width="181px" /></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Style="position: static"
                    Text="Continue and proceed>>" /></td>
        </tr>
    </table>
</asp:Content>

