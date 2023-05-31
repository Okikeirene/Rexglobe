<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master"  CodeBehind="PrintInvoice.aspx.cs" Inherits="RexLubs.Billing.PrintInvoice" %>


<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dxxr" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxpc" %>

<%--<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

      <script type="text/javascript">
        function OnGridSelectionComplete(values) {
            var sParam = "";
            
            for(var i = 0; i < values.length; i ++) {
                sParam += values[i].toString() + ",";
            }
     
            document.getElementById('HiddenField1').value = sParam;
            
            if (values.length == 0)
            {
                ASPxPopupControl1.Hide();
            }
            else
            {
     	        reportViewer.Refresh();
     	        ASPxPopupControl1.Show();
     	    }
        }
    </script>

    <div>

        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" ClientInstanceName="gridView1"
                AutoGenerateColumns="False" KeyFieldName="CategoryID">
                <Columns>
                    <dxwgv:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
                    </dxwgv:GridViewCommandColumn>
                    <dxwgv:GridViewDataColumn FieldName="CategoryID" VisibleIndex="1">
                    </dxwgv:GridViewDataColumn>
                    <dxwgv:GridViewDataColumn FieldName="CategoryName" VisibleIndex="2">
                    </dxwgv:GridViewDataColumn>
                </Columns>
                <ClientSideEvents SelectionChanged="function(s, e) {
	                gridView1.GetSelectedFieldValues('CategoryID', OnGridSelectionComplete);
                }" />
            </dxwgv:ASPxGridView>

        <dxwgv:ASPxGridView ID="Grid" runat="server" DataSourceID="PaymentReceipts" ClientInstanceName="Grid" AutoGenerateColumns="False" KeyFieldName="PaymentReference" >

            <Columns>
            <dxwgv:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0">
            </dxwgv:GridViewCommandColumn>
            <dxwgv:GridViewDataTextColumn FieldName="PaymentReference" ReadOnly="True" VisibleIndex="1">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="CustomerID" Visible="false" VisibleIndex="1">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="BusinessName" VisibleIndex="2">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="ProductName" Visible="false" VisibleIndex="3">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" Visible="false" VisibleIndex="4">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="ProductQuantity" Visible="false" VisibleIndex="5">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="Amount" Visible="false" VisibleIndex="6">
            </dxwgv:GridViewDataTextColumn>
                <dxpc:GridViewDataDateColumn FieldName="PaymentDate" VisibleIndex="7">
                </dxpc:GridViewDataDateColumn>
            <dxwgv:GridViewDataTextColumn FieldName="PaymentYear" VisibleIndex="8">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="PaymentTerms" Visible="false" VisibleIndex="9">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="TrasactionType" Visible="false" VisibleIndex="10">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="payment_currency" Visible="false" VisibleIndex="11">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="payment_channel" Visible="false" VisibleIndex="12">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="TIN_Number" Visible="false" VisibleIndex="13">
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataDateColumn FieldName="DateOfBirth" Visible="false" VisibleIndex="14">
            </dxwgv:GridViewDataDateColumn>
                <dxpc:GridViewDataTextColumn FieldName="Email" Visible="false" VisibleIndex="15">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="PhoneNumber" Visible="false" VisibleIndex="16">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="Address" Visible="false" VisibleIndex="17">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="State" Visible="false" VisibleIndex="18">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="Country" Visible="false" VisibleIndex="19">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="SalesRepresentative" Visible="false" VisibleIndex="20">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataDateColumn FieldName="DateofIncorporation" Visible="false" VisibleIndex="21">
                </dxpc:GridViewDataDateColumn>
                <dxpc:GridViewDataTextColumn FieldName="TypeOfBusiness" Visible="false" VisibleIndex="22">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="NextOfKinName" Visible="false" VisibleIndex="23">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="NextOfKinPhone" Visible="false" VisibleIndex="24">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ContactPerson" Visible="false" VisibleIndex="25">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ContactPersonEmail" Visible="false" VisibleIndex="26">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ContactPersonGender" Visible="false" VisibleIndex="27">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ContactPersonPhoneNumber" Visible="false" VisibleIndex="28">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="CreatedBy" Visible="false" VisibleIndex="29">
                </dxpc:GridViewDataTextColumn>
            <dxwgv:GridViewDataDateColumn FieldName="CreatedDate" Visible="false" VisibleIndex="30">
            </dxwgv:GridViewDataDateColumn>
                
                <dxpc:GridViewDataDateColumn FieldName="ExpectedDeliveryDate" Visible="false" VisibleIndex="31">
                </dxpc:GridViewDataDateColumn>
                <dxpc:GridViewDataTextColumn FieldName="ProductNameByPiece" Caption="Piece Name" VisibleIndex="32">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ProductTypeP" VisibleIndex="33">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="UnitPriceByPiece" Caption="Unit P" VisibleIndex="34">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ProductQuantityP" Caption="Peice Qty"  VisibleIndex="35">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="TotalPiece" ReadOnly="True" VisibleIndex="36">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ProductNameByCarton" Caption="Carton Name" VisibleIndex="37">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ProductTypeC" VisibleIndex="38">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="UnitPriceByCarton" Caption="Unit C" VisibleIndex="39">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="ProductQuantityC" Caption="Carton Qty" VisibleIndex="40">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="TotalCarton" ReadOnly="True" VisibleIndex="41">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="Total_Amount" VisibleIndex="42">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="VAT" ReadOnly="True" VisibleIndex="43">
                </dxpc:GridViewDataTextColumn>
                <dxpc:GridViewDataTextColumn FieldName="GrandTotal" ReadOnly="True" VisibleIndex="44">
                </dxpc:GridViewDataTextColumn>
                
            </Columns>
            <ClientSideEvents SelectionChanged="function(s, e) {
	                gridView1.GetSelectedFieldValues('PaymentReference', OnGridSelectionComplete);
                }" />
        </dxwgv:ASPxGridView>

        <dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" HeaderText="Report" ShowCloseButton="false"
                AllowDragging="true" AllowResize="true" CloseAction="None" PopupHorizontalOffset="250">

                <ContentCollection>
                    <dxpc:PopupControlContentControl ID="PopupControlContentControl1" runat="server">
                              <div style="background-color: Aqua; text-align: center; border: solid 1px; padding: 10px;
                min-width: 550px;">
                <dxxr:ReportToolbar ID="ReportToolbar1" runat="server" ReportViewer="<%# ReportViewer1 %>"
                    ShowDefaultButtons="False" Width="286px">
                    <Styles>
                        <LabelStyle>
                            <Margins MarginLeft="3px" MarginRight="3px" />
                        </LabelStyle>
                    </Styles>
                    <Items>
                        <dxxr:ReportToolbarButton ItemKind="Search" ToolTip="Display the search window" />
                        <dxxr:ReportToolbarSeparator />
                        <dxxr:ReportToolbarButton ItemKind="PrintReport" ToolTip="Print the report" />
                        <dxxr:ReportToolbarButton ItemKind="PrintPage" ToolTip="Print the current page" />
                        <dxxr:ReportToolbarSeparator />
                        <dxxr:ReportToolbarButton Enabled="False" ItemKind="FirstPage" ToolTip="First Page" />
                        <dxxr:ReportToolbarButton Enabled="False" ItemKind="PreviousPage" ToolTip="Previous Page" />
                        <dxxr:ReportToolbarLabel Text="Page" />
                        <dxxr:ReportToolbarComboBox ItemKind="PageNumber" Width="65px">
                        </dxxr:ReportToolbarComboBox>
                        <dxxr:ReportToolbarLabel Text="of" />
                        <dxxr:ReportToolbarTextBox IsReadOnly="True" ItemKind="PageCount" />
                        <dxxr:ReportToolbarButton ItemKind="NextPage" ToolTip="Next Page" />
                        <dxxr:ReportToolbarButton ItemKind="LastPage" ToolTip="Last Page" />
                        <dxxr:ReportToolbarSeparator />
                        <dxxr:ReportToolbarButton ItemKind="SaveToDisk" ToolTip="Export a report and save it to the disk" />
                        <dxxr:ReportToolbarButton ItemKind="SaveToWindow" ToolTip="Export a report and show it in a new window" />
                        <dxxr:ReportToolbarComboBox ItemKind="SaveFormat" Width="70px">
                            <Elements>
                                <dxxr:ListElement Text="Pdf" Value="pdf" />
                                <dxxr:ListElement Text="Xls" Value="xls" />
                                <dxxr:ListElement Text="Rtf" Value="rtf" />
                                <dxxr:ListElement Text="Mht" Value="mht" />
                                <dxxr:ListElement Text="Text" Value="txt" />
                                <dxxr:ListElement Text="Csv" Value="csv" />
                                <dxxr:ListElement Text="Image" Value="png" />
                            </Elements>
                        </dxxr:ReportToolbarComboBox>
                    </Items>
                </dxxr:ReportToolbar>
                <dxxr:ReportViewer ID="ReportViewer1" ClientInstanceName="reportViewer" runat="server" OnUnload="ReportViewer1_Unload">
                </dxxr:ReportViewer>
            </div>
                    </dxpc:PopupControlContentControl>
                </ContentCollection>
            </dxpc:ASPxPopupControl>
            <asp:HiddenField ID="HiddenField1" runat="server" />


    <asp:SqlDataSource ID="PaymentReceipts" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT P.[PaymentReference],P.[CustomerID],P.[BusinessName],P.[ProductName], P.[UnitPrice],P.[ProductQuantity],P.[Amount] 
                    , P.[PaymentDate], P.[PaymentYear], P.[PaymentTerms], P.[TrasactionType], P.[payment_currency], P.[payment_channel], 
                     C.[TIN_Number], C.[DateOfBirth], C.[Email], C.[PhoneNumber], C.[Address], C.[State], C.[Country], C.[SalesRepresentative], 
                     C.[DateofIncorporation], C.[TypeOfBusiness], C.[NextOfKinName], C.[NextOfKinPhone], C.[ContactPerson], C.[ContactPersonEmail] 
                    , C.[ContactPersonGender], C.[ContactPersonPhoneNumber], C.[CreatedBy], C.[CreatedDate], R.[ExpectedDeliveryDate], 
                    R.[ProductNameByPiece], R.[ProductTypeP], R.[UnitPriceByPiece], R.[ProductQuantityP], R.[UnitPriceByPiece] * R.[ProductQuantityP] as TotalPiece, R.[ProductNameByCarton] 
                    , R.[ProductTypeC], R.[UnitPriceByCarton], R.[ProductQuantityC], R.[UnitPriceByCarton] * R.[ProductQuantityC] as TotalCarton, R.[Total_Amount], 0.075 * R.[Total_Amount] as VAT, R.[Total_Amount] + (0.075 * R.[Total_Amount]) as GrandTotal 
                    FROM[RexGlobe].[dbo].[Payments] P 
                    INNER JOIN[RexGlobe].[dbo].[Customers] C on C.ID = P.CustomerID 
                    INNER JOIN[RexGlobe].[dbo].[ProductRequest] R on R.ID = P.RequestID"></asp:SqlDataSource>
    




</asp:Content>