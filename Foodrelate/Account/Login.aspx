<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="Login.aspx.vb" Inherits="Foodrelate.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="left_side">
    <asp:Login ID="Login1" runat="server" 
        CreateUserText="Regiser for a new account." CreateUserUrl="~/Account/register.aspx">
    </asp:Login>
</div>
</asp:Content>
