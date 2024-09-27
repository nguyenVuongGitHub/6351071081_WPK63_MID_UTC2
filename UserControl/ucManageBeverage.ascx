<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageBeverage.ascx.cs" Inherits="de1.UserControl.ucManageBeverage" %>
<style type="text/css">
    .auto-style1 {
        height: 24px;
    }
    .auto-style2 {
        height: 23px;
    }
</style>

<p>
    &nbsp;</p>
<table style="width:100%;">
    <tr>
        <td>Beverage Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Berevage Price:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Category</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Berevage Description:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Beverage Picture:</td>
        <td class="auto-style1">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2"></td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" Text="Add new" />
        </td>
    </tr>
</table>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="EntityDataSource1" style="margin-bottom: 0px">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
        <asp:BoundField DataField="ImageFilePath" HeaderText="ImageFilePath" ReadOnly="True" SortExpression="ImageFilePath" />
    </Columns>
</asp:GridView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages" Select="it.[Name], it.[ImageFilePath]">
</asp:EntityDataSource>

