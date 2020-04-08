<%@ Page Title="" Language="C#" MasterPageFile="~/pashusakhi.Master" AutoEventWireup="true" CodeBehind="member.aspx.cs" Inherits="pashusakhi.member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
Name of Pasusakhi:
<asp:TextBox ID="name" runat="server"></asp:TextBox><br /><br />
Husband Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="hsbname" runat="server"></asp:TextBox><br /><br />
Date of Joining:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="doj" runat="server" TextMode="Date"></asp:TextBox><br />
</asp:Content>
