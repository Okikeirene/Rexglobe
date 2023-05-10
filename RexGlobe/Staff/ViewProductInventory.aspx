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

        <dx:GridViewCommandColumn VisibleIndex="0">
        </dx:GridViewCommandColumn>

        <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" ReadOnly="True">
            <EditFormSettings Visible="False" />
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductCode" VisibleIndex="2">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductDescription" VisibleIndex="4">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Units_Price_In_Carton" VisibleIndex="6">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Units_In_Store" VisibleIndex="7">
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

    <asp:SqlDataSource ID="SqlProductDescription" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [ProductDescription] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductDescription] ([ProductCode], [ProductName], [ProductDescription], [UnitPrice], [Units_Price_In_Carton], [Units_In_Store], [Location], [CreateBy], [CreatedDate]) VALUES (@ProductCode, @ProductName, @ProductDescription, @UnitPrice, @Units_Price_In_Carton, @Units_In_Store, @Location, @CreateBy, @CreatedDate)" SelectCommand="SELECT * FROM [ProductDescription]" UpdateCommand="UPDATE [ProductDescription] SET [ProductCode] = @ProductCode, [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [UnitPrice] = @UnitPrice, [Units_Price_In_Carton] = @Units_Price_In_Carton, [Units_In_Store] = @Units_In_Store, [Location] = @Location, [CreateBy] = @CreateBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
       <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDescription" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="Units_Price_In_Carton" Type="Decimal" />
            <asp:Parameter Name="Units_In_Store" Type="Int32" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="CreateBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDescription" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="Units_Price_In_Carton" Type="Decimal" />
            <asp:Parameter Name="Units_In_Store" Type="Int32" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="CreateBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
