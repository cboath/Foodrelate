<%@ Page Title="New Recipe" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="newrecipe.aspx.vb" Inherits="Foodrelate.newrecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="both_sides">
        <p>Select main ingredient to associate with recipe:</p>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Main_ingr" 
            DataValueField="Ingr_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="ingrselect" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        <br />
    </div>

</asp:Content>
