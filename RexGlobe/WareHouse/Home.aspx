﻿<%@ Page Title="" Language="C#" MasterPageFile="~/WareHouse/SiteEngineer.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RexLubs.WareHouse.Home" %>

<%@ Register Assembly="DevExpress.Dashboard.v18.1.Web.WebForms, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<dx:ASPxDashboardViewer ID="ASPxDashboardViewer3" runat="server" DashboardSource="RexLubs.Analytics.HomeDashboard" ClientInstanceName="dashboardViewer" RegisterJQuery="True" AllowExportDashboardItems="True" Width="100%" Height="600px" OnConfigureDataConnection="ASPxDashboardViewer1_ConfigureDataConnection" DisableHttpHandlerValidation="False">
    </dx:ASPxDashboardViewer>
    
    <dx:ASPxLoadingPanel ID="ASPxLoadingPanel2" runat="server" ClientInstanceName="LoadingPanel" ContainerElementID="ASPxDashboardViewer3">
    </dx:ASPxLoadingPanel>

               

</asp:Content>