<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addsalesman.aspx.cs" Inherits="Admin_addsalesman" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td align="center" colspan="3" 
                style="font-weight: bolder; font-size: 16px; background-color: #008000">
                Sales Man Details
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3" 
                                        style="font-weight: bolder; font-size: 16px; background-color: #008000">
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000">
                                        Employee Name</td>
            <td style="background-color: #e9e9e9">
                <asp:TextBox ID="txtname" runat="server" ValidationGroup="grpAdd"></asp:TextBox>
            </td>
            <td style="background-color: #e9e9e9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Employee Name is required" ValidationGroup="grpAdd">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="font-weight: bolder; font-size: 16px; background-color: #008000">
                Phone No</td>
            <td style="background-color: #e9e9e9">
                <asp:TextBox ID="txtphno" runat="server" ValidationGroup="grpAdd"></asp:TextBox>
            </td>
            <td style="background-color: #e9e9e9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtphno" ErrorMessage="Phone No is required" ValidationGroup="grpAdd">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno" ErrorMessage="Please enter valid phone no" ValidationExpression="^9\d{9}$" ValidationGroup="grpAdd">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="font-weight: bolder; font-size: 16px; background-color: #008000">
                Date of Join</td>
            <td style="background-color: #e9e9e9">
                <asp:TextBox ID="txtdoj" runat="server" ValidationGroup="grpAdd"></asp:TextBox>
            </td>
            <td style="background-color: #e9e9e9">
                <asp:Label ID="Label1" runat="server" Font-Size="13pt" 
                    Text="Enter Date in 'dd/mm/yyyy' Formate"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdoj" ErrorMessage="Date of join required" ValidationGroup="grpAdd">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 16px; background-color: #008000">
                Email</td>
            <td style="background-color: #e9e9e9">
                <asp:TextBox ID="txtemail" runat="server" ValidationGroup="grpAdd"></asp:TextBox>
            </td>
            <td style="background-color: #e9e9e9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Email is required" ValidationGroup="grpAdd">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter an valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grpAdd">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bolder; font-size: 16px; background-color: #008000">
                Login</td>
            <td style="background-color: #e9e9e9">
                <asp:TextBox ID="txtlogin" runat="server" ValidationGroup="grpAdd"></asp:TextBox>
            </td>
            <td style="background-color: #e9e9e9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtlogin" ErrorMessage="Login is required" ValidationGroup="grpAdd">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        
        <tr>
            <td align="center" colspan="3" 
                style="font-weight: bolder; font-size: 16px; background-color: #e9e9e9">
                <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" 
                    style="height: 26px" Text="Add Details" ValidationGroup="grpAdd" />
                <asp:Button ID="btnclear" runat="server" CausesValidation="False" 
                    Text="Clear" />
            </td>
        </tr>
        <tr>
            <td colspan="3" 
                style="font-weight: bolder; font-size: 16px; background-color: #008000; height: 23px; text-align: left;">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" 
                style="font-weight: bolder; font-size: 16px; background-color: #e9e9e9; height: 23px;">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="text-align: left" ValidationGroup="grpAdd" />
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

