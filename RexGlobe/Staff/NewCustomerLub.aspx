<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="NewCustomerLub.aspx.cs" Inherits="RexLubs.Staff.NewCustomerLub" %>


<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server" >


    <div class="panel panel-primary"> 
            <div class="panel-heading">Create New Customer Requests</div>
            <div class="panel-body">

                
<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" ClientInstanceName="formlayout" ColCount="2"   OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
    <Items>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Customer Details">
		<Items>
			<dx:LayoutItem  Caption="Business Name" FieldName="BusinessName"  ColSpan="2" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="BusinessName" runat="server" ClientInstanceName="BusinessName" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
             <dx:LayoutItem FieldName="TIN_Number" Caption="TIN" RequiredMarkDisplayMode="Required">
                 <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                            <dx:ASPxTextBox ID="TIN_Number" runat="server" ClientInstanceName="TIN_Number"  Width="100%" Height="25px" EnableClientSideAPI="True" >
                            <ValidationSettings Display="Dynamic" SetFocusOnError="True">
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Date Of Incorporation" FieldName="DateOfIncorporation">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxDateEdit ID="DateOfIncorporation" runat="server" ClientInstanceName="DateOfIncorporation" Width="100%" Height="25px">
                            <TimeSectionProperties>
                            <TimeEditProperties>
                            <ClearButton Visibility="Auto"></ClearButton>
                            </TimeEditProperties>
                            </TimeSectionProperties>

                            <ClearButton Visibility="Auto"></ClearButton>

                            <ValidationSettings ValidateOnLeave="False">
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
			<dx:LayoutItem  Caption="Business Email" FieldName="Email" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="Email" runat="server" ClientInstanceName="Email" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Business Phone Number" FieldName="PhoneNumber"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="PhoneNumber" runat="server" ClientInstanceName="PhoneNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Address" FieldName="Address"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="Address" runat="server" ClientInstanceName="Address" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="State" FieldName="State"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="State" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlState">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Country" FieldName="Country"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="Country" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlCountry">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Sales Representative" FieldName="SalesRepresentative"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="SalesRepresentative" runat="server"  IncrementalFilteringMode="Contains" TextField="UserName" ValueField="UserName" Width="100%" Height="25px" DataSourceID="SqlSaleRep">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem  Caption="Type Of Business" FieldName="TypeOfBusiness" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxComboBox ID="TypeOfBusiness" runat="server" DataSourceID="SqlBusinessLines" IncrementalFilteringMode="Contains" TextField="BusinessLineName" ValueField="BusinessLineName" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>

                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem  Caption="Next Of Kin Name" FieldName="NextOfKinName" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="NextOfKinName" runat="server" ClientInstanceName="NextOfKinName" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem  Caption="Next Of Kin Phone" FieldName="NextOfKinPhone" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="NextOfKinPhone" runat="server" ClientInstanceName="NextOfKinPhone" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
                                                                   
	</dx:LayoutGroup>
    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Contact Person Details">
		<Items>
			<dx:LayoutItem  Caption="Contact Person Name" FieldName="ContactPerson" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="ContactPerson" runat="server" ClientInstanceName="ContactPerson" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem  Caption="Contact Person Email" FieldName="ContactPersonEmail" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="ContactPersonEmail" runat="server" ClientInstanceName="ContactPersonEmail" Width="100%" Height="25px">
							<ValidationSettings>
                                <RegularExpression ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Contact Person PhoneNumber" FieldName="ContactPersonPhoneNumber"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxTextBox ID="ContactPersonPhoneNumber" runat="server" ClientInstanceName="ContactPersonPhoneNumber" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>     
            <dx:LayoutItem Caption="Contact Person Gender" FieldName="ContactPersonGender"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
`                       <dx:ASPxComboBox ID="ContactPersonGender" runat="server"  IncrementalFilteringMode="Contains" TextField="Name" ValueField="Name" Width="100%" Height="25px" DataSourceID="SqlGender">
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox> 
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem> 
            <dx:LayoutItem Caption="Date Of Birth" FieldName="0">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                        <dx:ASPxDateEdit ID="DateOfBirth" runat="server" ClientInstanceName="DateOfBirth" Width="100%" Height="25px">
                            <TimeSectionProperties>
                            <TimeEditProperties>
                            <ClearButton Visibility="Auto"></ClearButton>
                            </TimeEditProperties>
                            </TimeSectionProperties>

                            <ClearButton Visibility="Auto"></ClearButton>

                            <ValidationSettings ValidateOnLeave="False">
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
             <dx:LayoutItem Caption="Payment Terms" FieldName="PaymentTerms"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="PaymentTerms" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="PaymentTerms" DataSourceID="SqlPaymentTypes" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="PaymentType" ValueField="PaymentType" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
            <dx:LayoutItem Caption="Trasaction Type" FieldName="TrasactionType"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <dx:ASPxComboBox ID="TrasactionType" runat="server" AutoPostBack="False" AutoResizeWithContainer="True" ClientInstanceName="TrasactionType" DataSourceID="SqlPaymentTypes" EnableIncrementalFiltering="True" IncrementalFilteringMode="StartsWith" TextField="Payementerms" ValueField="Payementerms" Width="100%" Height="25px">
                            <ClearButton Visibility="Auto"></ClearButton>
                            <ValidationSettings>
                                <RequiredField ErrorText="Required" IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		
        </Items>                                          
	</dx:LayoutGroup>

    <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Supporting Documents - Ensure you upload either (Driver’s license or International Passport) ">
		<Items>
			<dx:LayoutItem ColSpan="2" Caption="Certificate of incorporation" FieldName="FileName1" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="FileName1" runat="server" ClientInstanceName="Certificateofincorporation"  text="Certificate of incorporation" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Document Description" FieldName="FileDescription1" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="FileDescription1" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="File Content" FieldName="FileContent1"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
`                             
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
        <Items>
			<dx:LayoutItem ColSpan="2" Caption="Articles of Association" FieldName="FileName2" >
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="FileName2" runat="server" ClientInstanceName="FileName" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="False" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Document Description" FieldName="FileDescription2" >
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="FileDescription2" runat="server" ClientInstanceName="FileDescription" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="False" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem FieldName="FileContent2" Caption="File Content" >
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<asp:FileUpload ID="FileUpload2"  runat="server" />
                                                                                                                       
                    </dx:LayoutItemNestedControlContainer>
                            
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
		</Items>
            <Items>
			<dx:LayoutItem ColSpan="2" Caption="ID for Identification" FieldName="FileName3" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxTextBox ID="FileName3" runat="server" ClientInstanceName="FileName3" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="Document Description" FieldName="FileDescription3" RequiredMarkDisplayMode="Required">
				<LayoutItemNestedControlCollection>
					<dx:LayoutItemNestedControlContainer runat="server">
						<dx:ASPxTextBox ID="FileDescription3" runat="server" ClientInstanceName="FileDescription3" Width="100%" Height="25px">
							<ValidationSettings Display="Dynamic">
								<RequiredField IsRequired="True" />
							</ValidationSettings>
						</dx:ASPxTextBox>
					</dx:LayoutItemNestedControlContainer>
				</LayoutItemNestedControlCollection>
			</dx:LayoutItem>
			<dx:LayoutItem Caption="File Content" FieldName="FileUpload3"  RequiredMarkDisplayMode="Required" >
				<LayoutItemNestedControlCollection>
						<dx:LayoutItemNestedControlContainer>
                        <asp:FileUpload ID="FileUpload3" runat="server" />
`                               
                                                                                    

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


     <asp:SqlDataSource ID="SqlState" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [States] WHERE [StateID] = @StateID" InsertCommand="INSERT INTO [States] ([StateID], [Name], [Region_ID]) VALUES (@StateID, @Name, @Region_ID)" SelectCommand="SELECT * FROM [States]" UpdateCommand="UPDATE [States] SET [Name] = @Name, [Region_ID] = @Region_ID WHERE [StateID] = @StateID">
        <DeleteParameters>
            <asp:Parameter Name="StateID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StateID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Region_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Region_ID" Type="Int32" />
            <asp:Parameter Name="StateID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlSaleRep" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID], [UserName] FROM [Employees]">
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlGender" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[Name] FROM [RexGlobe].[dbo].[Gender]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlLocation" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID],[LocationName],[State],[Country] FROM [RexGlobe].[dbo].[Location]">
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="SqlCountry" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [ID] ,[Code],[Name] FROM [RexGlobe].[dbo].[Country]">
    </asp:SqlDataSource> 

     <asp:SqlDataSource ID="SqlPaymentTypes" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT [PaymentID],[PaymentType],[PaymentChannel],[Payementerms] FROM [RexGlobe].[dbo].[PaymentTypes]">
    </asp:SqlDataSource> 

   <asp:SqlDataSource ID="SqlBusinessLines" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" SelectCommand="SELECT * FROM [BusinessLines]"></asp:SqlDataSource>



    </asp:Content>