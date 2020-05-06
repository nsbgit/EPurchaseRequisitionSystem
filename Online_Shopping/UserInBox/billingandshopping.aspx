<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="billingandshopping.aspx.cs" Inherits="user_billingandshopping" Title="Shipping and billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 487px; position: static; height: 100px" bgcolor="White">
            <tr>
                <td colspan="2">
                    &nbsp;<asp:Label ID="Label2" runat="server" Style="position: static" Text="Billing Address >>>"
                        Width="146px"></asp:Label></td>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Text="Shipping Address >>>"
                        Width="156px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 84px">
                </td>
                <td style="width: 100px">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Style="position: static"
                        Text="Same address" OnCheckedChanged="CheckBox1_CheckedChanged" Width="151px" /></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label3" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label12" runat="server" Style="position: static" Text="First Name :"></asp:Label></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="TextBox10" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBox10">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label4" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 84px">
                    <asp:Label ID="Label13" runat="server" Style="position: static" Text="Last Name :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox11" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Last Name is required" ControlToValidate="TextBox11">*</asp:RequiredFieldValidator>
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
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Gender is required" style="text-align: left" ControlToValidate="DropDownList1"  InitialValue="-- Selecte Gender --" >*</asp:RequiredFieldValidator>
           
                </td>
                <td style="width: 84px">
                    <asp:Label ID="Label14" runat="server" Style="position: static" Text="Gender :"></asp:Label></td>
                <td style="width: 100px">
                    <!--
                    <asp:TextBox ID="TextBox12" runat="server" Style="position: static"></asp:TextBox>
                        -->
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Text="-- Selecte Gender --" Value="-- Selecte Gender --" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />

                </asp:DropDownList>
                </td>
                <td>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Gender is required" style="text-align: left" ControlToValidate="DropDownList2"  InitialValue="-- Selecte Gender --" >*</asp:RequiredFieldValidator>
           
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label6" runat="server" Style="position: static" Text="E-mail :" Width="64px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">?</asp:RegularExpressionValidator>
                </td>
                <td style="width: 84px">
                    <asp:Label ID="Label15" runat="server" Style="position: static" Text="E-mail :" Width="64px"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox13" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox13">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox13" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">?</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label7" runat="server" Style="position: static" Text="City :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="City is required" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 84px">
                    <asp:Label ID="Label16" runat="server" Style="position: static" Text="City :"></asp:Label></td>

                <td style="width: 100px">
                    <asp:TextBox ID="TextBox14" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="City is required" ControlToValidate="TextBox14">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label8" runat="server" Style="position: static" Text="State :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="State is required" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 84px">
                    <asp:Label ID="Label17" runat="server" Style="position: static" Text="State :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox15" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="State is required" ControlToValidate="TextBox15">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    <asp:Label ID="Label9" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Country is required" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 84px; height: 26px">
                    <asp:Label ID="Label18" runat="server" Style="position: static" Text="Country :"></asp:Label></td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox16" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Country is required" ControlToValidate="TextBox16">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="Label11" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox9" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Mobile No is required" ControlToValidate="TextBox9">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revMobile0" runat="server" ErrorMessage="Enter valid mobile number" ControlToValidate="TextBox9" ValidationExpression="^9\d{9}$">*</asp:RegularExpressionValidator>
                </td>
                <td style="width: 84px">
                    <asp:Label ID="Label20" runat="server" Style="position: static" Text="Mobile no :"></asp:Label></td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox18" runat="server" Style="position: static"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Mobile No is required" ControlToValidate="TextBox18">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Enter valid mobile number" ControlToValidate="TextBox18" ValidationExpression="^9\d{9}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 84px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Style="position: static" Text="Proceed & Continue>>" OnClick="Button1_Click" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 84px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>

            <tr>
                <td colspan="6">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

