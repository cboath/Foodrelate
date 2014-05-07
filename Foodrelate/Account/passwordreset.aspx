<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="passwordreset.aspx.vb" Inherits="Foodrelate.passwordreset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div id="both_sides">
    <asp:ChangePassword ID="ChangePassword1" runat="server" 
        SuccessPageUrl="~/Default.aspx">
    </asp:ChangePassword>
</div>
</asp:Content>