<%@ Page Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManageLubricantBooking.aspx.cs" Inherits="RexGlobe.Customers.ManageLubricantBooking" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server" >

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlLubREq" KeyFieldName="ID">
    <SettingsAdaptivity>
        <AdaptiveDetailLayoutProperties ColCount="1">
        </AdaptiveDetailLayoutProperties>
    </SettingsAdaptivity>
    <EditFormLayoutProperties ColCount="1">
    </EditFormLayoutProperties>
    <Columns>
        <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
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
        <dx:GridViewDataTextColumn FieldName="ContactPerson" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactPersonEmail" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ContactPersonPhoneNumber" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductType" VisibleIndex="13">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="14">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="ProductQuantity" VisibleIndex="15">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Total_Amount" VisibleIndex="16">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="17">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="TrasactionType" VisibleIndex="18">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="WarehouseManagerName" VisibleIndex="19">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="WarehouseManagerEmail" VisibleIndex="20">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="WarehouseLocation" VisibleIndex="21">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PickUpPersonName" VisibleIndex="22">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="PickUpPersonPhone" VisibleIndex="23">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="24">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="ExpectedDeliveryDate" VisibleIndex="25">
        </dx:GridViewDataDateColumn>
        <dx:GridViewDataTextColumn FieldName="CreatedBy" VisibleIndex="26">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="27">
        </dx:GridViewDataDateColumn>
    </Columns>
</dx:ASPxGridView>
<asp:SqlDataSource ID="SqlLubREq" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [ProductRequest] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductRequest] ([BusinessName], [Email], [PhoneNumber], [Address], [State], [Country], [SalesRepresentative], [ContactPerson], [ContactPersonEmail], [ContactPersonPhoneNumber], [ProductName], [ProductType], [UnitPrice], [ProductQuantity], [Total_Amount], [PaymentTerms], [TrasactionType], [WarehouseManagerName], [WarehouseManagerEmail], [WarehouseLocation], [PickUpPersonName], [PickUpPersonPhone], [Status], [ExpectedDeliveryDate], [CreatedBy], [CreatedDate]) VALUES (@BusinessName, @Email, @PhoneNumber, @Address, @State, @Country, @SalesRepresentative, @ContactPerson, @ContactPersonEmail, @ContactPersonPhoneNumber, @ProductName, @ProductType, @UnitPrice, @ProductQuantity, @Total_Amount, @PaymentTerms, @TrasactionType, @WarehouseManagerName, @WarehouseManagerEmail, @WarehouseLocation, @PickUpPersonName, @PickUpPersonPhone, @Status, @ExpectedDeliveryDate, @CreatedBy, @CreatedDate)" SelectCommand="SELECT * FROM [ProductRequest]" UpdateCommand="UPDATE [ProductRequest] SET [BusinessName] = @BusinessName, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [Address] = @Address, [State] = @State, [Country] = @Country, [SalesRepresentative] = @SalesRepresentative, [ContactPerson] = @ContactPerson, [ContactPersonEmail] = @ContactPersonEmail, [ContactPersonPhoneNumber] = @ContactPersonPhoneNumber, [ProductName] = @ProductName, [ProductType] = @ProductType, [UnitPrice] = @UnitPrice, [ProductQuantity] = @ProductQuantity, [Total_Amount] = @Total_Amount, [PaymentTerms] = @PaymentTerms, [TrasactionType] = @TrasactionType, [WarehouseManagerName] = @WarehouseManagerName, [WarehouseManagerEmail] = @WarehouseManagerEmail, [WarehouseLocation] = @WarehouseLocation, [PickUpPersonName] = @PickUpPersonName, [PickUpPersonPhone] = @PickUpPersonPhone, [Status] = @Status, [ExpectedDeliveryDate] = @ExpectedDeliveryDate, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
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
        <asp:Parameter Name="ContactPerson" Type="String" />
        <asp:Parameter Name="ContactPersonEmail" Type="String" />
        <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductType" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="ProductQuantity" Type="Int32" />
        <asp:Parameter Name="Total_Amount" Type="Decimal" />
        <asp:Parameter Name="PaymentTerms" Type="String" />
        <asp:Parameter Name="TrasactionType" Type="String" />
        <asp:Parameter Name="WarehouseManagerName" Type="String" />
        <asp:Parameter Name="WarehouseManagerEmail" Type="String" />
        <asp:Parameter Name="WarehouseLocation" Type="String" />
        <asp:Parameter Name="PickUpPersonName" Type="String" />
        <asp:Parameter Name="PickUpPersonPhone" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
        <asp:Parameter Name="CreatedBy" Type="String" />
        <asp:Parameter Name="CreatedDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="BusinessName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="PhoneNumber" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="State" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="SalesRepresentative" Type="String" />
        <asp:Parameter Name="ContactPerson" Type="String" />
        <asp:Parameter Name="ContactPersonEmail" Type="String" />
        <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="ProductType" Type="String" />
        <asp:Parameter Name="UnitPrice" Type="Decimal" />
        <asp:Parameter Name="ProductQuantity" Type="Int32" />
        <asp:Parameter Name="Total_Amount" Type="Decimal" />
        <asp:Parameter Name="PaymentTerms" Type="String" />
        <asp:Parameter Name="TrasactionType" Type="String" />
        <asp:Parameter Name="WarehouseManagerName" Type="String" />
        <asp:Parameter Name="WarehouseManagerEmail" Type="String" />
        <asp:Parameter Name="WarehouseLocation" Type="String" />
        <asp:Parameter Name="PickUpPersonName" Type="String" />
        <asp:Parameter Name="PickUpPersonPhone" Type="String" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="ExpectedDeliveryDate" Type="DateTime" />
        <asp:Parameter Name="CreatedBy" Type="String" />
        <asp:Parameter Name="CreatedDate" Type="DateTime" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>