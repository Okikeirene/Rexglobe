<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="ViewApprovals.aspx.cs" Inherits="RexGlobe.Staff.ViewApprovals" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlApproval" KeyFieldName="ID">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1">
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <Settings ShowFilterRow="True" />
        <SettingsSearchPanel Visible="True" />
        <EditFormLayoutProperties ColCount="1">
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1"  ReadOnly="True">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RequestID" Visible="false" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ManagerName" Caption="Manager"  VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PhoneNumber" Caption="Phone" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Message" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="FinalStatus" FieldName="ApprovalStatus"   VisibleIndex="6">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn FieldName="SalesRepresentative" Caption="SalesRep" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPerson" Visible="false" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonEmail" Visible="false" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ContactPersonPhoneNumber" Visible="false" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ProductType" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RequestedProductQuantity" Caption="RequestedQuantity" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="AvailableProductQuantity" Caption="AvailableQuantity" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Total_Amount" Caption="TotalAmount" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="PaymentTerms" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TrasactionType" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="CreatedDate"  VisibleIndex="19">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataComboBoxColumn FieldName="FinanceApproval"  ReadOnly="True" VisibleIndex="20">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn Caption="OperatonsApproval" FieldName="HeadOfOperatonsApproval" ReadOnly="True"  VisibleIndex="21">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="CreditRiskApproval"  ReadOnly="True" VisibleIndex="22">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataComboBoxColumn FieldName="DirectorApproval" ReadOnly="True"  VisibleIndex="23">
            <PropertiesComboBox DataSourceID="SqlProcurementDescritpion" TextField="Response"  ValueField="Response" >                                                     
                                                    
            <ValidationSettings CausesValidation="True" ErrorDisplayMode="ImageWithText">                                                   
                       
            <RequiredField ErrorText="Required" IsRequired="True" />                                                                                         
                                                    
            </ValidationSettings>                                 
                                                    
            </PropertiesComboBox>
            <EditFormSettings CaptionLocation="Top" />
            </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlApproval" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [ProductRequestApproval]" DeleteCommand="DELETE FROM [ProductRequestApproval] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductRequestApproval] ([RequestID], [ManagerName], [PhoneNumber], [Message], [ApprovalStatus], [SalesRepresentative], [ContactPerson], [ContactPersonEmail], [ContactPersonPhoneNumber], [ProductName], [ProductType], [UnitPrice], [RequestedProductQuantity], [AvailableProductQuantity], [Total_Amount], [PaymentTerms], [TrasactionType], [CreatedDate], [FinanceApproval], [HeadOfOperatonsApproval], [CreditRiskApproval], [DirectorApproval]) VALUES (@RequestID, @ManagerName, @PhoneNumber, @Message, @ApprovalStatus, @SalesRepresentative, @ContactPerson, @ContactPersonEmail, @ContactPersonPhoneNumber, @ProductName, @ProductType, @UnitPrice, @RequestedProductQuantity, @AvailableProductQuantity, @Total_Amount, @PaymentTerms, @TrasactionType, @CreatedDate, @FinanceApproval, @HeadOfOperatonsApproval, @CreditRiskApproval, @DirectorApproval)" UpdateCommand="UPDATE [ProductRequestApproval] SET [RequestID] = @RequestID, [ManagerName] = @ManagerName, [PhoneNumber] = @PhoneNumber, [Message] = @Message, [ApprovalStatus] = @ApprovalStatus, [SalesRepresentative] = @SalesRepresentative, [ContactPerson] = @ContactPerson, [ContactPersonEmail] = @ContactPersonEmail, [ContactPersonPhoneNumber] = @ContactPersonPhoneNumber, [ProductName] = @ProductName, [ProductType] = @ProductType, [UnitPrice] = @UnitPrice, [RequestedProductQuantity] = @RequestedProductQuantity, [AvailableProductQuantity] = @AvailableProductQuantity, [Total_Amount] = @Total_Amount, [PaymentTerms] = @PaymentTerms, [TrasactionType] = @TrasactionType, [CreatedDate] = @CreatedDate, [FinanceApproval] = @FinanceApproval, [HeadOfOperatonsApproval] = @HeadOfOperatonsApproval, [CreditRiskApproval] = @CreditRiskApproval, [DirectorApproval] = @DirectorApproval WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RequestID" Type="Int32" />
            <asp:Parameter Name="ManagerName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="ApprovalStatus" Type="String" />
            <asp:Parameter Name="SalesRepresentative" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ContactPersonEmail" Type="String" />
            <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="RequestedProductQuantity" Type="Int32" />
            <asp:Parameter Name="AvailableProductQuantity" Type="Int32" />
            <asp:Parameter Name="Total_Amount" Type="Decimal" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="TrasactionType" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="FinanceApproval" Type="String" />
            <asp:Parameter Name="HeadOfOperatonsApproval" Type="String" />
            <asp:Parameter Name="CreditRiskApproval" Type="String" />
            <asp:Parameter Name="DirectorApproval" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RequestID" Type="Int32" />
            <asp:Parameter Name="ManagerName" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="Message" Type="String" />
            <asp:Parameter Name="ApprovalStatus" Type="String" />
            <asp:Parameter Name="SalesRepresentative" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="ContactPersonEmail" Type="String" />
            <asp:Parameter Name="ContactPersonPhoneNumber" Type="String" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductType" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="RequestedProductQuantity" Type="Int32" />
            <asp:Parameter Name="AvailableProductQuantity" Type="Int32" />
            <asp:Parameter Name="Total_Amount" Type="Decimal" />
            <asp:Parameter Name="PaymentTerms" Type="String" />
            <asp:Parameter Name="TrasactionType" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="FinanceApproval" Type="String" />
            <asp:Parameter Name="HeadOfOperatonsApproval" Type="String" />
            <asp:Parameter Name="CreditRiskApproval" Type="String" />
            <asp:Parameter Name="DirectorApproval" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlProcurementDescritpion" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Procurement_Type],[Response],[Budget] FROM [RexGlobe].[dbo].[ProcurementDescritpion]">
</asp:SqlDataSource>  
</asp:Content>

