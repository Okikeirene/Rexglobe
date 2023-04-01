<%@ Page Language="C#"  MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManageLuricantRequest.aspx.cs" Inherits="RexGlobe.Customers.ManageLuricantRequest" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server" >

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlLubricant" KeyFieldName="ID">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1">
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <Settings ShowFilterRow="True" />
        <EditFormLayoutProperties ColCount="1">
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BusinessName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PhoneNumber" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SalesRepresentative" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductType" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="11">
                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductQuantity" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Total_Amount" VisibleIndex="13">
                <PropertiesTextEdit DisplayFormatInEditMode="True" DisplayFormatString="#,##0.00">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="ExpectedDeliveryDate" VisibleIndex="14">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="WarehouseLocation" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlLubricant" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [ProductRequest] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductRequest] ([BusinessName], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [ProductName], [ProductType], [UnitPrice], [ProductQuantity], [Total_Amount], [ExpectedDeliveryDate], [Status], [WarehouseLocation], [PaymentTerms]) VALUES (@BusinessName, @Email, @PhoneNumber, @Address, @State, @Country, @SalesRepresentative, @ProductName, @ProductType, @UnitPrice, @ProductQuantity, @Total_Amount, @ExpectedDeliveryDate, @Status, @WarehouseLocation, @PaymentTerms)" SelectCommand="SELECT [ID], [BusinessName], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [ProductName], [ProductType], [UnitPrice], [ProductQuantity], [Total_Amount], [ExpectedDeliveryDate], [Status], [WarehouseLocation], [PaymentTerms] FROM [ProductRequest]" UpdateCommand="UPDATE [ProductRequest] SET [BusinessName] = @BusinessName, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [Address] = @Address, [State] = @State, [Country] = @Country, [SalesRepresentative] = @SalesRepresentative, [ProductName] = @ProductName, [ProductType] = @ProductType, [UnitPrice] = @UnitPrice, [ProductQuantity] = @ProductQuantity, [Total_Amount] = @Total_Amount, [ExpectedDeliveryDate] = @ExpectedDeliveryDate, [Status] = @Status, [WarehouseLocation] = @WarehouseLocation, [PaymentTerms] = @PaymentTerms WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BusinessName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="SalesRepresentative" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="Total_Amount" Type="Decimal" />
            <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="WarehouseLocation" Type="String" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BusinessName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="SalesRepresentative" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="Total_Amount" Type="Decimal" />
            <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="WarehouseLocation" Type="String" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
