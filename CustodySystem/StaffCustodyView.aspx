<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffCustodyView.aspx.cs" Inherits="CustodySystem.StaffCustodyView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustodyDBConnectionString2 %>" SelectCommand="SELECT * FROM [Custody]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="Custody_ID" DataSourceID="SqlDataSource1">
        
        <Columns>
            <asp:BoundField DataField="Custody_ID" HeaderText="Custody_ID" ReadOnly="True" SortExpression="Custody_ID" />
            <asp:BoundField DataField="Custody_Name" HeaderText="Custody_Name" SortExpression="Custody_Name" />
            <asp:BoundField DataField="Added_Date" HeaderText="Added_Date" SortExpression="Added_Date" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
            <asp:BoundField DataField="Given" HeaderText="Given" SortExpression="Given" />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:BoundField DataField="Custody_Color" HeaderText="Custody_Color" SortExpression="Custody_Color" />
            <asp:BoundField DataField="Custody_Type" HeaderText="Custody_Type" SortExpression="Custody_Type" />
        </Columns>
    </asp:GridView>


   


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
