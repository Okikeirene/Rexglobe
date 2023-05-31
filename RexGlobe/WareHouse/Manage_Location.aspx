<%@ Page Title="" Language="C#" MasterPageFile="~/WareHouse/SiteEngineer.Master" AutoEventWireup="true" CodeBehind="Manage_Location.aspx.cs" Inherits="RexLubs.WareHouse.Manage_Location" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataLocation" KeyFieldName="ID" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LocationName" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LocationCategory" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="State" FieldName="State"   VisibleIndex="4">
            <PropertiesComboBox DataSourceID="SqlState" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="Country"   VisibleIndex="5">
            <PropertiesComboBox DataSourceID="SqlCountry" TextField="Name"  ValueField="Name" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>


    <asp:SqlDataSource ID="SqlDataLocation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Location] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Location] ([LocationName], [LocationCategory], [State], [Country]) VALUES (@LocationName, @LocationCategory, @State, @Country)" SelectCommand="SELECT * FROM [Location]" UpdateCommand="UPDATE [Location] SET [LocationName] = @LocationName, [LocationCategory] = @LocationCategory, [State] = @State, [Country] = @Country WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LocationName" Type="String" />
            <asp:Parameter Name="LocationCategory" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LocationName" Type="String" />
            <asp:Parameter Name="LocationCategory" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlState" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [StateID] ,[Name] ,[Region_ID] FROM [RexGlobe].[dbo].[States]">
</asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Code],[Name]  FROM [RexGlobe].[dbo].[Country]">
</asp:SqlDataSource>  


</asp:Content>
