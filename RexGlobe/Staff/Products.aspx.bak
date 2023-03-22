<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="RexGlobe.Staff.Products" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
<dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProduct" KeyFieldName="ProductID" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

    <Settings ShowFilterRow="True" />
    <SettingsDataSecurity AllowDelete="False" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" ShowEditButton="True">
        </dx:GridViewCommandColumn>
        <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Code" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
    </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlProduct" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([Code], [ProductName]) VALUES (@Code, @ProductName)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [Code] = @Code, [ProductName] = @ProductName WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Code" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
