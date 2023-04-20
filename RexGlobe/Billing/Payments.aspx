<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="RexLubs.Billing.Payments" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlPayment" KeyFieldName="PaymentReference" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <Settings ShowFilterRow="True" />
        <SettingsDataSecurity AllowDelete="False" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="PaymentReference" ReadOnly="True" VisibleIndex="0">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TIN" Visible="false" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductID" Visible="false" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CustomerID" Visible="false" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BusinessName" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductQuantity" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Amount" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="PaymentDate" VisibleIndex="8">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentYear" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TrasactionType" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="payment_currency" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="payment_channel" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TIN_Number" Visible="false" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="DateOfBirth" Visible="false" VisibleIndex="15">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="Email" Visible="false" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PhoneNumber" Visible="false" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Address" Visible="false" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="19">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="20">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SalesRepresentative" Visible="false" VisibleIndex="21">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="DateofIncorporation" Visible="false" VisibleIndex="22">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="TypeOfBusiness" Visible="false" VisibleIndex="23">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NextOfKinName" Visible="false" VisibleIndex="24">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NextOfKinPhone" Visible="false" VisibleIndex="25">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPerson" Visible="false" VisibleIndex="26">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonEmail" Visible="false" VisibleIndex="27">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonGender" Visible="false" VisibleIndex="28">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonPhoneNumber" Visible="false" VisibleIndex="29">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedBy" VisibleIndex="30">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="31">
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlPayment" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Payments] WHERE [PaymentReference] = @PaymentReference" InsertCommand="INSERT INTO [Payments] ([PaymentReference], [TIN], [ProductID], [Amount], [PaymentDate], [PaymentYear], [payment_type], [payment_currency], [payment_channel], [BookingID], [revenue_type]) VALUES (@PaymentReference, @TIN, @ProductID, @Amount, @PaymentDate, @PaymentYear, @payment_type, @payment_currency, @payment_channel, @BookingID, @revenue_type)" SelectCommand="SELECT P.PaymentReference, P.TIN, P.ProductID, P.CustomerID, P.BusinessName, P.UnitPrice, P.ProductQuantity, P.Amount, P.PaymentDate, P.PaymentYear, P.PaymentTerms, P.TrasactionType, P.payment_currency, P.payment_channel, C.TIN_Number, C.DateOfBirth, C.Email, C.PhoneNumber, C.Address, C.State, C.Country, C.SalesRepresentative, C.DateofIncorporation, C.TypeOfBusiness, C.NextOfKinName, C.NextOfKinPhone, C.ContactPerson, C.ContactPersonEmail, C.ContactPersonGender, C.ContactPersonPhoneNumber, C.CreatedBy, C.CreatedDate FROM Payments AS P INNER JOIN Customers AS C ON C.ID = P.CustomerID" UpdateCommand="UPDATE [Payments] SET [TIN] = @TIN, [ProductID] = @ProductID, [Amount] = @Amount, [PaymentDate] = @PaymentDate, [PaymentYear] = @PaymentYear, [payment_type] = @payment_type, [payment_currency] = @payment_currency, [payment_channel] = @payment_channel, [BookingID] = @BookingID, [revenue_type] = @revenue_type WHERE [PaymentReference] = @PaymentReference">
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
