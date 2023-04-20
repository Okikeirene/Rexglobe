<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ToolBarExport1.ascx.cs" Inherits="RexLubs.ToolBarExport1" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<div class="OptionsBottomMargin">
<dx:ASPxMenu ID="ASPxMenu1" runat="server">

</dx:ASPxMenu>
    <dx:ASPxMenu runat="server" ID="MenuExportButtons" ClientInstanceName="MenuExportButtons" ShowAsToolbar="true" OnItemClick="MenuExportButtons_ItemClick" AutoPostBack="true">
        <Items>
            <dx:MenuItem Name="ToolbarCaption">
                <Template>
                    <div class="exportToolbarCaption">
                        <dx:ASPxLabel runat="server" ID="labelCaption" Text="Export type:" />
                    </div>
                </Template>
            </dx:MenuItem>
        </Items>
    </dx:ASPxMenu>
</div>
