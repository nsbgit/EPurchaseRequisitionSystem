<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddItemDetails.aspx.cs" Inherits="Admin_AddItemDetailst" Title="Add New Product type details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 492px; position: static; height: 100px">
            <tr>
                <td colspan="3">
                    <strong>Add Item Details</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Select item type :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        Style="position: static">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfvItemType" ErrorMessage="Item field is required field" ControlToValidate="DropDownList1" runat="server" Text="*" ForeColor="Red" InitialValue="--select--" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="232px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Item for :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfvItemFor" ErrorMessage="Item for is required field" runat="server" Text="*" ForeColor="Red" InitialValue="--select--" ControlToValidate="DropDownList2" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Brand name :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" Width="114px"></asp:TextBox>
                &nbsp;</td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="rfvBrandName" runat="server" ControlToValidate="TextBox1" ErrorMessage="Brand Name is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Upload image :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="position: static" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    Cost :</td>
                <td align="left" style="width: 100px; height: 26px" valign="top">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
                <td style="width: 100px; height: 26px">
                    <asp:RequiredFieldValidator ID="rfvCost" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cost is required">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter only digits" ValidationExpression="(\d*)([1-9])(\d*)">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="left" valign="top">
                    Description :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static" Height="47px" TextMode="MultiLine" Width="267px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Description is required">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Add.." OnClick="Button1_Click" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="text-align: left" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

