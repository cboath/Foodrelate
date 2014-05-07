<%@ Page Title="Contact Form" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="contact.aspx.vb" Inherits="Foodrelate.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .style1
    {
        width: 16px;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content_wrapper">
<h1 align="center">Contact Form</h1>
    <table style="width:100%;">
        <tr>
            <td>
                First Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="First name required" ControlToValidate="TextBox1" 
                    CssClass="errors">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Last Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Last name required" ControlToValidate="TextBox2" 
                    CssClass="errors">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Incorrect phone number format" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ControlToValidate="TextBox3" CssClass="errors">*</asp:RegularExpressionValidator>
            </td>
        </tr>
                <tr>
            <td>
                Email Address</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Email address required" ControlToValidate="TextBox4" 
                    CssClass="errors">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Incorrect email format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="TextBox4" CssClass="errors">*</asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td>
                Business Name</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                 &nbsp;</td>
        </tr>
        <tr>
            <td>
                Comments</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Columns="50" Rows="4" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Comment or question?" ControlToValidate="TextBox6" 
                    CssClass="errors">*</asp:RequiredFieldValidator>
            </td>
        </tr>
     </table>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="errors" 
        HeaderText="Please correct the following errors:" ShowMessageBox="True" />
    <br />
<br />
    <asp:Button ID="Sendbutton" runat="server" Text="Submit" /> &nbsp
</div>
</asp:Content>
