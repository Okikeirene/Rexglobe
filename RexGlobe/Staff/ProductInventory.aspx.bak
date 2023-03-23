<%@ Page MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" Language="C#" AutoEventWireup="true" CodeBehind="ProductInventory.aspx.cs" Inherits="RexGlobe.Staff.ProductInventory" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProductDescription" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

    <Settings ShowFilterRow="True" />
    <SettingsDataSecurity AllowDelete="False" />
<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
    <Columns>

        <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
        </dx:GridViewCommandColumn>

        <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductCode" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductDescritpion" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Units_In_Store" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Location" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CreateBy" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="9">
        </dx:GridViewDataDateColumn>
    </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlProductDescription" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [ProductDescription]">
    </asp:SqlDataSource>
</asp:Content>
