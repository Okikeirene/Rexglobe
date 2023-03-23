<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="RexGlobe.Billing.Payments" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlPayment" KeyFieldName="PaymentReference">
        <Settings ShowFilterRow="True" />
        <SettingsDataSecurity AllowDelete="False" />
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentReference" ReadOnly="True" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TIN" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductID" Visible="false" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Amount" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="PaymentDate" VisibleIndex="5">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentYear" Visible="false" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="payment_type" Visible="false" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="payment_currency" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="payment_channel" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BookingID" Visible="false" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="revenue_type" Visible="false" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipmentID" Visible="false" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SenderName" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SenderEmail" Visible="false" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="OriginServiceLocation" Visible="false" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReceiverName" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReceiverEmail" Visible="false" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReceiverDestination" Visible="false" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReceiverPinCode" Visible="false" VisibleIndex="19">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReceiverRegion" Visible="false" VisibleIndex="20">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ReceiverCity" Visible="false" VisibleIndex="21">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ServiceLocation" Visible="false" VisibleIndex="22">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreateDate" Visible="false" VisibleIndex="23">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Commodity" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Weight" Visible="false" VisibleIndex="25">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TotalWeight" VisibleIndex="26">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RatePerKG" Visible="false" VisibleIndex="27">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="Date" Visible="false" VisibleIndex="28">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="ExpectedDeliveryDate"  VisibleIndex="29">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="ServiceTax" VisibleIndex="30">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Freight" Visible="false" VisibleIndex="31">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BookingID1" Visible="false" VisibleIndex="32">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedBy" Visible="false" VisibleIndex="33">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlPayment" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Payments] WHERE [PaymentReference] = @PaymentReference" InsertCommand="INSERT INTO [Payments] ([PaymentReference], [TIN], [ProductID], [Amount], [PaymentDate], [PaymentYear], [payment_type], [payment_currency], [payment_channel], [BookingID], [revenue_type]) VALUES (@PaymentReference, @TIN, @ProductID, @Amount, @PaymentDate, @PaymentYear, @payment_type, @payment_currency, @payment_channel, @BookingID, @revenue_type)" SelectCommand="SELECT P.PaymentReference, P.TIN, P.ProductID, P.Amount, P.PaymentDate, P.PaymentYear, P.payment_type, P.payment_currency, P.payment_channel, P.BookingID, P.revenue_type, B.ShipmentID, B.SenderName, B.SenderEmail, B.OriginServiceLocation, B.ReceiverName, B.ReceiverEmail, B.ReceiverDestination, B.ReceiverPinCode, B.ReceiverRegion, B.ReceiverCity, B.ServiceLocation, B.CreateDate, S.Commodity, S.Weight, S.TotalWeight, S.RatePerKG, S.Date, S.ExpectedDeliveryDate, S.ServiceTax, S.Freight, S.BookingID AS Expr1, S.CreatedBy FROM Booking AS B INNER JOIN Shipment AS S ON S.ID = B.ShipmentID INNER JOIN Payments AS P ON P.BookingID = B.ID" UpdateCommand="UPDATE [Payments] SET [TIN] = @TIN, [ProductID] = @ProductID, [Amount] = @Amount, [PaymentDate] = @PaymentDate, [PaymentYear] = @PaymentYear, [payment_type] = @payment_type, [payment_currency] = @payment_currency, [payment_channel] = @payment_channel, [BookingID] = @BookingID, [revenue_type] = @revenue_type WHERE [PaymentReference] = @PaymentReference">
        <DeleteParameters>
            <asp:Parameter Name="PaymentReference" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PaymentReference" Type="String" />
            <asp:Parameter Name="TIN" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="PaymentDate" Type="DateTime" />
            <asp:Parameter Name="PaymentYear" Type="String" />
            <asp:Parameter Name="payment_type" Type="String" />
            <asp:Parameter Name="payment_currency" Type="String" />
            <asp:Parameter Name="payment_channel" Type="String" />
            <asp:Parameter Name="BookingID" Type="Int32" />
            <asp:Parameter Name="revenue_type" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TIN" Type="String" />
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="PaymentDate" Type="DateTime" />
            <asp:Parameter Name="PaymentYear" Type="String" />
            <asp:Parameter Name="payment_type" Type="String" />
            <asp:Parameter Name="payment_currency" Type="String" />
            <asp:Parameter Name="payment_channel" Type="String" />
            <asp:Parameter Name="BookingID" Type="Int32" />
            <asp:Parameter Name="revenue_type" Type="String" />
            <asp:Parameter Name="PaymentReference" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
