<%@ Page Title="" Language="C#" MasterPageFile="~/pashusakhi.Master" AutoEventWireup="true" CodeBehind="districtadmin.aspx.cs" Inherits="pashusakhi.districtadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3>
This is the page for district admins.
<br /><br />
<asp:Label runat="server" ID="lbl1"></asp:Label><br />
Email:
<asp:Label runat="server" ID="lbl2"></asp:Label><br />
District Code:
<asp:Label runat="server" ID="lbl3"></asp:Label><br />
</h3>
<asp:Menu ID="menu1" runat="server" onmenuitemclick="menu1_MenuItemClick">
 <Items>
 <asp:MenuItem Text="Block admins" Value="Blkadm" ></asp:MenuItem>
 <asp:MenuItem Text="Members" Value="members"></asp:MenuItem>
 <asp:MenuItem Text="Create Block Admin" NavigateUrl="register.aspx"></asp:MenuItem>
 </Items>
</asp:Menu> 
<br /><br />
<asp:GridView ID="gridView1" runat="server" CellPadding="4" CssClass="dynamic" 
        ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
<asp:GridView ID="gridView2" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</asp:Content>
