<%@ Page Title="Search Page" Language="vb" AutoEventWireup="false" MasterPageFile="~/MainPages/SiteMaster.Master" CodeBehind="dbsearch.aspx.vb" Inherits="Foodrelate.classtest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="both_sides">
    <table>
    <tr>
    <td><p>Please select the Main ingedient you would like to search for: </p></td>
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
            BorderStyle="Outset" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
     <Columns>
          <asp:TemplateField HeaderText="Recipe">
            <ItemTemplate>
                   <asp:HyperLink ID="HyperLink1" runat="server" 
                   Text='<%# Eval("Recipe_name") %>'
                   NavigateUrl='<%# Eval("url") %>'
                   Target='_blank'>
                   </asp:HyperLink>
            </ItemTemplate>                  
          </asp:TemplateField>
          <asp:BoundField DataField="nutriattrib_val" HeaderText="Calories Per Serving" 
                    SortExpression="Main_ingr" ItemStyle-HorizontalAlign="Right" ItemStyle-BorderStyle="Solid" />
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
        SelectCommand="selecteddisplay" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ingrid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

