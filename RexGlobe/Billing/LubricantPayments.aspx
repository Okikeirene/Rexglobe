<%@ Page Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="LubricantPayments.aspx.cs" Inherits="RexGlobe.Billing.LubricantPayments" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlLub" KeyFieldName="ID">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1">
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <EditFormLayoutProperties ColCount="1">
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentReference" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductRequestID" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductType" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductQuantity" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Total_Amount" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TrasactionType" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="PaymentDate" VisibleIndex="10">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentYear" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Payment_type" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Payment_currency" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Payment_channel" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Revenue_type" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="17">
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlLub" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [PaymentsLubricant] WHERE [ID] = @ID" InsertCommand="INSERT INTO [PaymentsLubricant] ([PaymentReference], [ProductRequestID], [ProductName], [ProductType], [UnitPrice], [ProductQuantity], [Total_Amount], [PaymentTerms], [TrasactionType], [PaymentDate], [PaymentYear], [Payment_type], [Payment_currency], [Payment_channel], [Revenue_type], [Status], [CreatedDate]) VALUES (@PaymentReference, @ProductRequestID, @ProductName, @ProductType, @UnitPrice, @ProductQuantity, @Total_Amount, @PaymentTerms, @TrasactionType, @PaymentDate, @PaymentYear, @Payment_type, @Payment_currency, @Payment_channel, @Revenue_type, @Status, @CreatedDate)" SelectCommand="SELECT * FROM [PaymentsLubricant]" UpdateCommand="UPDATE [PaymentsLubricant] SET [PaymentReference] = @PaymentReference, [ProductRequestID] = @ProductRequestID, [ProductName] = @ProductName, [ProductType] = @ProductType, [UnitPrice] = @UnitPrice, [ProductQuantity] = @ProductQuantity, [Total_Amount] = @Total_Amount, [PaymentTerms] = @PaymentTerms, [TrasactionType] = @TrasactionType, [PaymentDate] = @PaymentDate, [PaymentYear] = @PaymentYear, [Payment_type] = @Payment_type, [Payment_currency] = @Payment_currency, [Payment_channel] = @Payment_channel, [Revenue_type] = @Revenue_type, [Status] = @Status, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PaymentReference" Type="String" />
            <asp:Parameter Name="ProductRequestID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="Total_Amount" Type="Decimal" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="TrasactionType" Type="String" />
            <asp:Parameter Name="PaymentDate" Type="DateTime" />
            <asp:Parameter Name="PaymentYear" Type="String" />
            <asp:Parameter Name="Payment_type" Type="String" />
            <asp:Parameter Name="Payment_currency" Type="String" />
            <asp:Parameter Name="Payment_channel" Type="String" />
            <asp:Parameter Name="Revenue_type" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PaymentReference" Type="String" />
            <asp:Parameter Name="ProductRequestID" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="Int32" />
            <asp:Parameter Name="Total_Amount" Type="Decimal" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="TrasactionType" Type="String" />
            <asp:Parameter Name="PaymentDate" Type="DateTime" />
            <asp:Parameter Name="PaymentYear" Type="String" />
            <asp:Parameter Name="Payment_type" Type="String" />
            <asp:Parameter Name="Payment_currency" Type="String" />
            <asp:Parameter Name="Payment_channel" Type="String" />
            <asp:Parameter Name="Revenue_type" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
