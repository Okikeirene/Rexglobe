<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="ViewProductInventory.aspx.cs" Inherits="RexLubs.Staff.ViewProductInventory" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlProductDescription" Width="100%" KeyFieldName="ID">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

    <Settings ShowFilterRow="True" />
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" />
<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
    <Columns>

        <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="0" ReadOnly="True">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductCode" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductDescription" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Units_Price_In_Carton" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Pieces_In_Store" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Cartons_In_Store" VisibleIndex="7">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Location" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="CreateBy" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="10">
        </dx:GridViewDataDateColumn>
    </Columns>
    </dx:ASPxGridView>
    <br />
    <br />
    <br />

    <asp:SqlDataSource ID="SqlProductDescription" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [ProductDescription]">
    </asp:SqlDataSource>
</asp:Content>
