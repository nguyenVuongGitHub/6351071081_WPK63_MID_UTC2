<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoriesList.ascx.cs" Inherits="de1.UserControl.ucCategoriesList" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="listCategory">

    <ItemTemplate>
        <li>
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("CatName") + "("+ Eval("Beverages.Count")+")" %>' NavigateUrl='<%# "~/Category.aspx?CatID=" + Eval("CatID")%>'></asp:HyperLink>
        </li>
    </ItemTemplate>

</asp:DataList>
<asp:EntityDataSource ID="listCategory" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" EntityTypeFilter="Category" Include="Beverages">
</asp:EntityDataSource>

