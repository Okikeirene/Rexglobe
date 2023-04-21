<%@ Page Language="C#"  MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master"  AutoEventWireup="true" CodeBehind="Print.aspx.cs" Inherits="RexLubs.Billing.Print" %>


<%@ Register Assembly="DevExpress.XtraReports.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

        <dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" runat="server" ReportSourceId="RexLubs.Billing.InvoiceXtraReport"></dx:ASPxWebDocumentViewer>
                       
</asp:Content>
