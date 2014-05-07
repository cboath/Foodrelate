<%@ Page Title="Search Food Database" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="inventory.aspx.vb" Inherits="Foodrelate.dbsearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="left_side">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" 
            GridLines="Horizontal" AllowPaging="True" AllowSorting="True">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Main_ingr" HeaderText="Main Ingredient" 
                    SortExpression="Main_ingr" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" ItemStyle-BorderStyle="Solid" 
                    ItemStyle-HorizontalAlign="Right">
<ItemStyle HorizontalAlign="Right" BorderStyle="Solid"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Quantity_type" HeaderText="Units" 
                    SortExpression="Quantity_type" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="inventory" SelectCommandType="StoredProcedure" 
            UpdateCommand="ingupdate" UpdateCommandType="StoredProcedure">
            <UpdateParameters>
                <asp:Parameter Name="Ingr_ID" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server" Text="New Food Item" 
            PostBackUrl="inginsert.aspx" />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/invupdate.aspx" 
            Text="Update Inventory" />
    </div>
</asp:Content>
