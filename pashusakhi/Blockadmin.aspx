<%@ Page Title="" Language="C#" MasterPageFile="~/pashusakhi.Master" AutoEventWireup="true" CodeBehind="Blockadmin.aspx.cs" Inherits="pashusakhi.Blockadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
This is the page for block admins.<br />
Some of the services provided are:
</h3>
<br />
<div style="font-style: normal; color: #800000; font-family: 'Bahnschrift SemiLight SemiConde';">
<dl>
<dt>Services(Community Based)</dt>
<dd>-Goat Deworming</dd>
<dd>-Goat Vaccination</dd>
<dd>-Goat Castration</dd>
<dd>-Dana Mishran</dd>
<dd>-Pashu Chat</dd>
<dd>-Pashu Aahar</dd>
<dd>-Goats Insemination by supplied buck</dd>
<dt>Services(Incentive Based)</dt>
<dd>-Goat Rearers Survey</dd>
<dd>-No of HHs having Azola pit</dd>
<dd>-No of HHs constructed Shed /machan</dd>
<dd>-No of HHs trained on rearing practices</dd>
<dd>-No of HHs Using Feeding trough/hanging fooder</dd>
<dd>-Case studies developed ( nos)</dd>				
</dl></div>
<br />
<asp:Label runat="server" ID="lbl1"></asp:Label><br />
Email:
<asp:Label runat="server" ID="lbl2"></asp:Label><br />
District Code:
<asp:Label runat="server" ID="lbl3"></asp:Label><br />
Block Code:
<asp:Label runat="server" ID="lbl4"></asp:Label><br />

<asp:Menu ID="menu1" runat="server" onmenuitemclick="menu1_MenuItemClick" 
        BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" 
        Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#FFFBD6" />
    <DynamicSelectedStyle BackColor="#FFCC66" />
 <Items>
 <asp:MenuItem Text="DisplayMembers" Value="members"></asp:MenuItem>
 <asp:MenuItem Text="Create Member" Value="Member" NavigateUrl="register.aspx"></asp:MenuItem>
 
 </Items>
    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#FFCC66" />
</asp:Menu>
<br /><br />
<asp:GridView ID="gridview1" runat="server" CellPadding="4" ForeColor="#333333" 
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
