<%@ Page Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="RexLubs.Billing.Invoice" %>


<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <script>
        

        var keyValue;
        function OnMoreInfoClick(element, key) {
            callbackPanel.SetContentHtml("");
            popup.ShowAtElement(element);
            keyValue = key;
        }

        function popup_Shown(s, e) {
            callbackPanel.PerformCallback(keyValue);
        }
      

</script>
<dx:ASPxPopupControl ID="popup" ClientInstanceName="popup" runat="server" AllowDragging="true"  PopupHorizontalAlign="Center" HeaderText="Add Product Request to Schedule" Width="800">
        <ContentCollection>
            <dx:PopupControlContentControl runat="server">
                <dx:ASPxCallbackPanel ID="callbackPanel" ClientInstanceName="callbackPanel" runat="server" Width="1200px" Height="100px"  RenderMode="Table">
                    <PanelCollection>
                        <dx:PanelContent runat="server">
                           <dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" runat="server" ReportSourceId="RexLubs.Billing.InvoiceXtraReport"></dx:ASPxWebDocumentViewer>
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </dx:PopupControlContentControl>
        </ContentCollection>
        <ClientSideEvents Shown="popup_Shown" />
    </dx:ASPxPopupControl>





 <dx:ASPxGridView ID="ASPxGridView1"  ClientInstanceName="mastergrid" runat="server" AutoGenerateColumns="False" DataSourceID="PaymentReceipts" KeyFieldName="ID" Width="100%" OnCustomUnboundColumnData="ASPxgvPayments_CustomUnboundColumnData" OnStartRowEditing="ASPxgvPayments_StartRowEditing" >

        <Columns>
            <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0" Width="30px" SelectAllCheckboxMode="AllPages">
            </dx:GridViewCommandColumn>
             <dx:GridViewCommandColumn ShowApplyFilterButton="True" ShowClearFilterButton="True" VisibleIndex="18" Width="70px">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="ID" VisibleIndex="2" Width="50px" FieldName="SNo" UnboundType="Integer">
                <Settings AllowAutoFilter="False" ShowInFilterControl="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BusinessName" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="State" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductType" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductQuantity" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Total_Amount" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SalesRepresentative" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TrasactionType" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Status" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedBy" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate" VisibleIndex="16">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataColumn Caption="View Schedule" VisibleIndex="17" Width="15%">
               <DataItemTemplate>
                    <a href="javascript:void(0);" onclick="OnMoreInfoClick(this, '<%# Container.KeyValue %>')">Print Receipt</a>
                </DataItemTemplate>
            </dx:GridViewDataColumn>
        </Columns>
        <SettingsBehavior FilterRowMode="OnClick" AllowSelectByRowClick="True" ColumnResizeMode="Control" />
        <SettingsPager ShowSeparators="True">
        </SettingsPager>
        <Settings EnableFilterControlPopupMenuScrolling="True" ShowFilterBar="Visible" ShowFilterRow="True" ShowFilterRowMenu="True" ShowFooter="True" />
        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
      
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="PaymentReceipts" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [BusinessName], [State], [Country], [ProductName], [ProductType], [UnitPrice], [ProductQuantity], [Total_Amount], [SalesRepresentative], [PaymentTerms], [TrasactionType], [Status], [CreatedBy], [CreatedDate] FROM [ProductRequest]"></asp:SqlDataSource>
    




</asp:Content>