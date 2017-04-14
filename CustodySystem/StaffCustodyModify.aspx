<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="StaffCustodyModify.aspx.cs" Inherits="CustodySystem.CustodyModify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 140%;
            height: 333px;
            margin-bottom: 0;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
            text-align: right;
        }
        .auto-style5 {
            height: 25px;
            text-align: right;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            height: 23px;
            text-align: right;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustodyDBConnectionString2 %>" DeleteCommand="DELETE FROM [Custody] WHERE [Custody_ID] = @Custody_ID" InsertCommand="INSERT INTO [Custody] ([Custody_ID], [Custody_Name], [Added_Date], [Amount], [Available], [Given], [Status], [Notes], [Custody_Color], [Custody_Type]) VALUES (@Custody_ID, @Custody_Name, @Added_Date, @Amount, @Available, @Given, @Status, @Notes, @Custody_Color, @Custody_Type)" SelectCommand="SELECT * FROM [Custody]" UpdateCommand="UPDATE [Custody] SET [Custody_Name] = @Custody_Name, [Added_Date] = @Added_Date, [Amount] = @Amount, [Available] = @Available, [Given] = @Given, [Status] = @Status, [Notes] = @Notes, [Custody_Color] = @Custody_Color, [Custody_Type] = @Custody_Type, [Custody_Image] = @Custody_Image WHERE [Custody_ID] = @Custody_ID">
            <DeleteParameters>
                <asp:Parameter Name="Custody_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtCustody_ID" Name="Custody_ID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtCustody_Name" Name="Custody_Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtAdded_Date" DbType="Date" Name="Added_Date" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtAmount" Name="Amount" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtAvailable" Name="Available" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtGiven" Name="Given" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtStatus" Name="Status" PropertyName="Text" Type="Boolean" />
                <asp:ControlParameter ControlID="txtNotes" Name="Notes" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Custody_Color" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="Custody_Type" PropertyName="SelectedValue" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Custody_Name" Type="String" />
                <asp:Parameter DbType="Date" Name="Added_Date" />
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="Available" Type="Int32" />
                <asp:Parameter Name="Given" Type="Int32" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Custody_Color" Type="String" />
                <asp:Parameter Name="Custody_Type" Type="String" />
                <asp:Parameter Name="Custody_Image" Type="Object" />
                <asp:Parameter Name="Custody_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Custody_ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCustody_ID" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Custody_Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCustody_Name" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Added_Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAdded_Date" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Amont"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Available"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAvailable" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="Given"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGiven" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Custody_Color"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Custody_Color" DataValueField="Custody_ID">
                        <asp:ListItem Selected="True">Red</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Pinck</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Custody_Type"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Custody_Type" DataValueField="Custody_ID" Height="16px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Selected="True">hp</asp:ListItem>
                        <asp:ListItem>wood</asp:ListItem>
                        <asp:ListItem>iron</asp:ListItem>
                        <asp:ListItem>Dell</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
           
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label10" runat="server" Text="Notes"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNotes" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="4" rowspan="1">
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Height="112px" Width="551px" AutoGenerateColumns="False" DataKeyNames="Custody_ID">
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
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>



    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>


