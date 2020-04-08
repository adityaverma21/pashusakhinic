<%@ Page Title="" Language="C#" MasterPageFile="~/pashusakhi.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="pashusakhi.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>
Admin page:
</h1>
<asp:GridView ID="griddetail" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            onrowcommand="griddetail_RowCommand" 
        onselectedindexchanged="griddetail_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="User Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="FathersName" HeaderText="Father's Name" />
                <asp:BoundField DataField="MothersName" HeaderText="Mother's Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" />
                <asp:BoundField DataField="PhoneNo" HeaderText="Phone No." />
                <asp:BoundField DataField="AccountNo" HeaderText="Account No." />
                <asp:BoundField DataField="IFSCcode" HeaderText="IFSC Code" />
                <asp:BoundField DataField="Bank" HeaderText="Bank" />
                <asp:BoundField DataField="DistrictName" HeaderText="District" />
                <asp:BoundField DataField="BlockName" HeaderText="Block" />
                <asp:BoundField DataField="PanchayatName" HeaderText="Panchayat" />
                <asp:BoundField DataField="VillageName" HeaderText="Village" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                    <asp:LinkButton ID="lnkEditRecord" runat="server" Text="Edit" CommandName="EditRecord" CommandArgument='<%#Eval("ID")%>'></asp:LinkButton>
                    <asp:LinkButton ID="lnkDeleteRecord" runat="server" OnClientClick="return confirm('Are you confirm to delete this Record')" Text="Delete" CommandName="DeleteRecord" CommandArgument='<%#Eval("ID")%>'></asp:LinkButton>
                    </ItemTemplate>
                   
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
</asp:Content>
