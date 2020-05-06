<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="CustomerProfile.aspx.cs" Inherits="UserInBox_CustomerProfile" Title="view customer details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 487px; position: static; height: 100px" bgcolor="White">
        <tr>
            <td colspan="2">
                &nbsp;<asp:Label ID="Label2" runat="server" Style="position: static" Text="User Profile >>>"
                    Width="146px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="Label3" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name is required" style="text-align: left" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                <asp:Label ID="Label4" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name is required" style="text-align: left" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
            <td style="width: 100px">
                <!--
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static"></asp:TextBox>
                    -->

                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="-- Selecte Gender --" Value="-- Selecte Gender --" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />

                </asp:DropDownList>

            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Gender is required" style="text-align: left" ControlToValidate="DropDownList1"  InitialValue="-- Selecte Gender --" >*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Style="position: static" Text="Email Address :"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email address is required" style="text-align: left" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Style="position: static" Text="City :"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="City is required" style="text-align: left" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Style="position: static" Text="State :"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="State is required" style="text-align: left" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                <asp:Label ID="Label9" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country is required" style="text-align: left" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox8" runat="server" Style="position: static"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mobile No is required" style="text-align: left" ControlToValidate="TextBox8">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Enter valid mobile number" ControlToValidate="TextBox8" ValidationExpression="^9\d{9}$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                    Text="Update >>>" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="4">

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="text-align: left" />

            </td>
        </tr>
    </table>
</asp:Content>

