<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPermitions.aspx.cs" Inherits="CustodySystem.AdminPermitions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    Admin Permitions
    
    <table >
        
        <tr>
            <td><asp:Label ID="idLabel" runat="server" Text="ID"></asp:Label></td>
            <td><asp:TextBox ID="idText" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="nameLabel" runat="server" Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="nameText" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="deptLabel" runat="server" Text="Department"></asp:Label></td>
            <td><asp:TextBox ID="deptText" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Label ID="accessLabel" runat="server" Text="Access"></asp:Label></td>
            <td><asp:DropDownList ID="accessDropDownList" runat="server" Width="125px">
                    <asp:ListItem Value="1">Admin</asp:ListItem>
                    <asp:ListItem Value="2">Staff</asp:ListItem>
                    <asp:ListItem Selected="True" Value="3">Employee</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
         <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
        <td ></td>
        </tr>
        <tr>
        <td><asp:Button ID="clr" runat="server" Text="Clear" 
                OnClientClick="this.form.reset();return false;" Height="26px" Width="69px" /></td>
        <td><asp:Button ID="sbmt" runat="server" Text="Submit" Height="26px" Width="69px" 
                onclick="permisbmt_Click" /></td>
        </tr>
        </table>
        <br />
    
    
   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
</asp:Content>
