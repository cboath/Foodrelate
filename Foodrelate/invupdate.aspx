<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="invupdate.aspx.vb" Inherits="Foodrelate.invupdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="both_sides">
       
    <table>
    <tr>
    <td><p>Please select the Main ingedient you would like to update your inventory with: </p></td>
    <td>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="Main_ingr"
        DataValueField="Ingr_ID" AppendDataBoundItems="True">
        <asp:ListItem Value="">{Select One}</asp:ListItem>
    </asp:DropDownList>
    </td>
    </tr>
    </table>

   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="ingrselect" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
  
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="Outset" BorderWidth="1px" CellPadding="3" 
            GridLines="Horizontal" AllowPaging="True" AllowSorting="True" 
            DataKeyNames="Ingr_ID">
        <AlternatingRowStyle BackColor="#F7F7F7" />
     <Columns>
          <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
          <asp:BoundField DataField="Main_ingr" HeaderText="Main_ingr" 
              SortExpression="Main_ingr" />
          <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
              SortExpression="Quantity" />
          <asp:BoundField DataField="Quantity_type" HeaderText="Quantity_type" 
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
        SelectCommand="ingupdateselect" SelectCommandType="StoredProcedure" 
            UpdateCommand="ingupdate" UpdateCommandType="StoredProcedure" 
            DeleteCommand="ingrdelete" DeleteCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Ingr_ID" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="Ingr_ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ingr_ID" Type="Int32" />
            <asp:Parameter Name="Main_ingr" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Quantity_type" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</div>
</asp:Content>
