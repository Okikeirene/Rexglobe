<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="ManageTrucks.aspx.cs" Inherits="RexLubs.Staff.ManageTrucks" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlManageTrucks" KeyFieldName="ID">
        <SettingsDataSecurity AllowDelete="False" />
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Vehicle Provider" FieldName="VehicleProvider" ShowInCustomizationForm="True" VisibleIndex="2">
                <PropertiesComboBox DataSourceID="SqlVehicleProvider" TextField="VehicleProvider" ValueField="ID" EnableFocusedStyle="False" IncrementalFilteringMode="Contains">
                                        
                    <ValidationSettings CausesValidation="True" EnableCustomValidation="True" ErrorDisplayMode="ImageWithText">
                                            
                        <RequiredField ErrorText="Required" IsRequired="True" />
                                            
                    </ValidationSettings>
                                        
                </PropertiesComboBox>
                <EditFormSettings Caption="Transfer To Tax Office" CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="WorkServiceLocation" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="VehicleNumber" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="TransportationvType" FieldName="TransportationType" ShowInCustomizationForm="True" VisibleIndex="5">
                <PropertiesComboBox DataSourceID="SqlTransportation" TextField="TransportationType" ValueField="ID" EnableFocusedStyle="False" IncrementalFilteringMode="Contains">
                                        
                    <ValidationSettings CausesValidation="True" EnableCustomValidation="True" ErrorDisplayMode="ImageWithText">
                                            
                        <RequiredField ErrorText="Required" IsRequired="True" />
                                            
                    </ValidationSettings>
                                        
                </PropertiesComboBox>
                <EditFormSettings Caption="Transfer To Tax Office" CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="VehicleDetails" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PermitofStates" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="PermitExpiryDate" VisibleIndex="8">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedBy" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CreatedDate" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>

    <asp:SqlDataSource ID="SqlTransportation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Transportation] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Transportation] ([TransportationType]) VALUES (@TransportationType)" SelectCommand="SELECT * FROM [Transportation]" UpdateCommand="UPDATE [Transportation] SET [TransportationType] = @TransportationType WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TransportationType" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TransportationType" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlVehicleProvider" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [VechicleType] WHERE [ID] = @ID" InsertCommand="INSERT INTO [VechicleType] ([VehicleProvider]) VALUES (@VehicleProvider)" SelectCommand="SELECT * FROM [VechicleType]" UpdateCommand="UPDATE [VechicleType] SET [VehicleProvider] = @VehicleProvider WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VehicleProvider" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VehicleProvider" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlManageTrucks" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Vechicle] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Vechicle] ([VehicleProvider], [WorkServiceLocation], [VehicleNumber], [TransportationType], [VehicleDetails], [PermitofStates], [PermitExpiryDate], [CreatedBy], [CreatedDate]) VALUES (@VehicleProvider, @WorkServiceLocation, @VehicleNumber, @TransportationType, @VehicleDetails, @PermitofStates, @PermitExpiryDate, @CreatedBy, @CreatedDate)" SelectCommand="SELECT * FROM [Vechicle]" UpdateCommand="UPDATE [Vechicle] SET [VehicleProvider] = @VehicleProvider, [WorkServiceLocation] = @WorkServiceLocation, [VehicleNumber] = @VehicleNumber, [TransportationType] = @TransportationType, [VehicleDetails] = @VehicleDetails, [PermitofStates] = @PermitofStates, [PermitExpiryDate] = @PermitExpiryDate, [CreatedBy] = @CreatedBy, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VehicleProvider" Type="String" />
            <asp:Parameter Name="WorkServiceLocation" Type="String" />
            <asp:Parameter Name="VehicleNumber" Type="String" />
            <asp:Parameter Name="TransportationType" Type="Int32" />
            <asp:Parameter Name="VehicleDetails" Type="String" />
            <asp:Parameter Name="PermitofStates" Type="String" />
            <asp:Parameter Name="PermitExpiryDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VehicleProvider" Type="String" />
            <asp:Parameter Name="WorkServiceLocation" Type="String" />
            <asp:Parameter Name="VehicleNumber" Type="String" />
            <asp:Parameter Name="TransportationType" Type="Int32" />
            <asp:Parameter Name="VehicleDetails" Type="String" />
            <asp:Parameter Name="PermitofStates" Type="String" />
            <asp:Parameter Name="PermitExpiryDate" Type="DateTime" />
            <asp:Parameter Name="CreatedBy" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource> 
    

</asp:Content>
