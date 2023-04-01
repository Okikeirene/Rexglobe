<%@ Page Language="C#"  MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master"  AutoEventWireup="true" CodeBehind="Procurement.aspx.cs" Inherits="RexGlobe.Staff.Procurement" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    
<div class="panel panel-primary"> 
            <div class="panel-heading">Create Procurement Requests</div>
            <div class="panel-body">


    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2"  DataSourceID="SqlProcurement" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Procument Details">
		<Items>
			<dx:LayoutItem  Caption="RequestPerson" FieldName="RequestPerson" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						&nbsp;&nbsp;
                        <br />
						<dx:ASPxComboBox ID="RequestPerson" runat="server"  IncrementalFilteringMode="Contains" TextField="UserName" ValueField="UserName" Width="100%" Height="25px" DataSourceID="SqlSaleRep">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem  Caption="Procurement Type"  FieldName="Procurement_Type" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxComboBox ID="Procurement_Type" runat="server"  IncrementalFilteringMode="Contains" TextField="Procurement_Type" ValueField="Procurement_Type" Width="100%" Height="25px" DataSourceID="SqlProcurementDescritpion">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			
            <dx:LayoutItem Caption="Quantity" FieldName="Quantity"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="Quantity" runat="server" ClientInstanceName="ProductQuantity" Width="100%" Height="25px" NullText="0" DisplayFormatString="0">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Amount" FieldName="Amount"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="Amount" runat="server" ClientInstanceName="Amount" Width="100%" Height="25px" NullText="0.00" DisplayFormatString="0">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Expense Description" FieldName="Description"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxMemo ID="Description" runat="server" Height="100px" Width="500px"></dx:ASPxMemo>
`                       <%--<dx:ASPxTextBox ID="Description" runat="server" ClientInstanceName="Description" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox> --%>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
                                                                   
	</dx:LayoutGroup>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Budget Details">
		<Items>
			<dx:LayoutItem  Caption="Budget Name" FieldName="BudgetName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						&nbsp;&nbsp;
                        <br />
						<dx:ASPxComboBox ID="BudgetName" runat="server"  IncrementalFilteringMode="Contains" TextField="BudgetName" ValueField="BudgetName" Width="100%" Height="25px" DataSourceID="SqlBudget">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem  Caption="Department" FieldName="Department" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						 <dx:ASPxComboBox ID="Department" runat="server"  IncrementalFilteringMode="Contains" TextField="DepartmentName" ValueField="DepartmentName" Width="100%" Height="25px" DataSourceID="SqlDepartment">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Financial Month" FieldName="FinancialMonth"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="FinancialMonth" runat="server"  IncrementalFilteringMode="Contains" TextField="Month" ValueField="Month" Width="100%" Height="25px" DataSourceID="SqlYearMonth">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Financial Year" FieldName="FinancialYear"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="FinancialYear" runat="server"  IncrementalFilteringMode="Contains" TextField="Year" ValueField="Year" Width="100%" Height="25px" DataSourceID="SqlYearMonth">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Location" FieldName="LocationName"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="LocationName" runat="server"  IncrementalFilteringMode="Contains" TextField="LocationName" ValueField="LocationName" Width="100%" Height="25px" DataSourceID="SqlLocation">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
           
		</Items>
                                                                   
	</dx:LayoutGroup>

    <dx:LayoutGroup ColSpan="2" HorizontalAlign="Right" ShowCaption="False">
		<Items>
			<dx:LayoutItem ShowCaption="False" HorizontalAlign="Center">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxButton ID="ASPxButtonSubmit" runat="server" Text="Submit Request" CommandName="New"  OnClick="ASPxButtonSubmit_Click" ClientInstanceName="submit" CssClass="btn btn-primary"  HorizontalAlign="Center" AutoPostBack="False">
                            <ClientSideEvents Click="function(s, e) {
                            ASPxClientEdit.ValidateEditorsInContainer(formlayout);
                            }" />
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:LayoutGroup>

    </Items>
<SettingsItemCaptions Location="Top" />
</dx:ASPxFormLayout>

 </div>      
 </div>

    <asp:SqlDataSource ID="SqlSaleRep" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [UserName] FROM [Employees]">
</asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlYearMonth" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [Year] ,[Month] FROM [RexGlobe].[dbo].[YearMonth]">
</asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlProcurement" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [Procurement]" DeleteCommand="DELETE FROM [Procurement] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Procurement] ([RequestPerson], [Category], [Description], [Quantity], [Amount], [BudgetName], [Department], [FinancialMonth], [FinancialYear], [Location], [Compliance], [HeadOfOperations], [HeadOfFinance], [ManagingDirector], [CreatedDate]) VALUES (@RequestPerson, @Category, @Description, @Quantity, @Amount, @BudgetName, @Department, @FinancialMonth, @FinancialYear, @Location, @Compliance, @HeadOfOperations, @HeadOfFinance, @ManagingDirector, @CreatedDate)" UpdateCommand="UPDATE [Procurement] SET [RequestPerson] = @RequestPerson, [Category] = @Category, [Description] = @Description, [Quantity] = @Quantity, [Amount] = @Amount, [BudgetName] = @BudgetName, [Department] = @Department, [FinancialMonth] = @FinancialMonth, [FinancialYear] = @FinancialYear, [Location] = @Location, [Compliance] = @Compliance, [HeadOfOperations] = @HeadOfOperations, [HeadOfFinance] = @HeadOfFinance, [ManagingDirector] = @ManagingDirector, [CreatedDate] = @CreatedDate WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RequestPerson" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="BudgetName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="FinancialMonth" Type="String" />
            <asp:Parameter Name="FinancialYear" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Compliance" Type="String" />
            <asp:Parameter Name="HeadOfOperations" Type="String" />
            <asp:Parameter Name="HeadOfFinance" Type="String" />
            <asp:Parameter Name="ManagingDirector" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RequestPerson" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Quantity" Type="String" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="BudgetName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="FinancialMonth" Type="String" />
            <asp:Parameter Name="FinancialYear" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
            <asp:Parameter Name="Compliance" Type="String" />
            <asp:Parameter Name="HeadOfOperations" Type="String" />
            <asp:Parameter Name="HeadOfFinance" Type="String" />
            <asp:Parameter Name="ManagingDirector" Type="String" />
            <asp:Parameter Name="CreatedDate" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlProcurementDescritpion" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Procurement_Type],[Response],[Budget] FROM [RexGlobe].[dbo].[ProcurementDescritpion]">
</asp:SqlDataSource>  
       <asp:SqlDataSource ID="SqlLocation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[LocationName],[LocationCategory],[State],[Country]  FROM [RexGlobe].[dbo].[Location]">
</asp:SqlDataSource>  Select [BudgetName]  FROM  [RexGlobe].[dbo].[ProcurementBudget]  


<asp:SqlDataSource ID="SqlBudget" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="Select [BudgetName]  FROM  [RexGlobe].[dbo].[ProcurementBudget]  ">
</asp:SqlDataSource> 

 <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[DepartmentName] FROM [RexGlobe].[dbo].[Departments] " >
    </asp:SqlDataSource>

</asp:Content>
