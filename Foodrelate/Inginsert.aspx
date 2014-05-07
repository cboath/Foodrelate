<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="Inginsert.aspx.vb" Inherits="Foodrelate.classaddtest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="both_sides">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="Ingr_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Ingr_ID" HeaderText="Ingr_ID" 
                SortExpression="Ingr_ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Main_ingr" HeaderText="Main Ingredient" 
                SortExpression="Main_ingr" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Quantity_type" HeaderText="Quantity Type" 
                SortExpression="Quantity_type" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="newingred" InsertCommandType="StoredProcedure" 
        SelectCommand="drtim" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="Ingr_ID" Type="Int32" />
            <asp:Parameter Name="Main_ingr" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Quantity_type" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
