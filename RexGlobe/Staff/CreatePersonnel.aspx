<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SiteSuperAdmin.Master" AutoEventWireup="true" CodeBehind="CreatePersonnel.aspx.cs" Inherits="RexGlobe.Staff.CreatePersonnel" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<%--<div class="col-md-12" >  --%> 
       
             <div style="color: #FF0000; font-size: large;" >
                    <p> <asp:Literal ID="Literal1"  runat="server"></asp:Literal>
                    </p>
             </div>
            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
            <div class="panel panel-primary"> 
            <div class="panel-heading">Create Personal</div>
            <div class="panel-body">
                <div class="row">
                            <div class="col-md-4">
                                                        
                                            <div class="form-group">
                                            <label for="exampleInputText1">First Name</label>
                                            <input type="text" class="form-control" id="FirstName" placeholder="First Name" name="FirstName" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstName" ErrorMessage="You must enter FirstName..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                            </div>                                                        

                            </div>
                            <div class="col-md-4">
                                                        
                                            <div class="form-group">
                                            <label for="exampleInputText1">Middle Name</label>
                                            <input type="text" class="form-control" id="MiddleName" placeholder="Middle Name" name="MiddleName" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MiddleName" ErrorMessage="You must enter MiddleName..!!!"  ForeColor="Red"></asp:RequiredFieldValidator> 
                                            </div>
                                                        

                            </div>
                            <div class="col-md-4">
                                                        
                                            <div class="form-group">
                                            <label for="exampleInputText1">Last Name</label>
                                            <input type="text" class="form-control" id="LastName" placeholder="Last Name" name="LastName" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="LastName" ErrorMessage="You must enter LastName..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                            </div>
                            </div>
                           <div class="col-md-4">
                                        <div class="form-group">
                                        <label for="exampleInputText1">Username</label>
                                        <input type="text" class="form-control" id="Username" placeholder="Username" name="Username" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="You must enter Username..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                        </div>
                            </div>
                             <div class="col-md-4">
                                       <div class="form-group">
                                            <label for="exampleInputText1">Gender</label>
                                            <asp:DropDownList CssClass="form-control" ID="DDLRole" runat="server"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDLRole" ErrorMessage="You must enter Role..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                            </div>                  
                                       <%-- <div class="form-group">
                                        <label for="exampleInputText1">Select Role</label>
                                        <asp:DropDownList CssClass="form-control" ID="DDLRole" runat="server" DataSourceID="SqlRole" DataTextField="RoleID" DataValueField="RoleID"></asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlRole" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [Roles] WHERE [RoleID] = @RoleID" InsertCommand="INSERT INTO [Roles] ([RoleName], [ParentID], [CreatedBy], [CreateDate]) VALUES (@RoleName, @ParentID, @CreatedBy, @CreateDate)" SelectCommand="SELECT * FROM [Roles]" UpdateCommand="UPDATE [Roles] SET [RoleName] = @RoleName, [ParentID] = @ParentID, [CreatedBy] = @CreatedBy, [CreateDate] = @CreateDate WHERE [RoleID] = @RoleID">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="RoleID" Type="Int32" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="RoleName" Type="String" />
                                                    <asp:Parameter Name="ParentID" Type="Int32" />
                                                    <asp:Parameter Name="CreatedBy" Type="String" />
                                                    <asp:Parameter Name="CreateDate" Type="DateTime" />
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="RoleName" Type="String" />
                                                    <asp:Parameter Name="ParentID" Type="Int32" />
                                                    <asp:Parameter Name="CreatedBy" Type="String" />
                                                    <asp:Parameter Name="CreateDate" Type="DateTime" />
                                                    <asp:Parameter Name="RoleID" Type="Int32" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </div>--%>
                                                                        
                                    </div>
                            <div class="col-md-4">
                                            <div class="form-group">
                                            <label for="exampleInputText1">Gender</label>
                                            <asp:DropDownList CssClass="form-control" ID="Gender" runat="server"></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Gender" ErrorMessage="You must enter Gender..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                            </div>
                                </div>
                                  <div class="col-md-4">
                                                                       
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">EmployeeNumber</label>
                                                    <input type="text" class="form-control" id="EmployeeNumber" placeholder="EmployeeNumber"  runat="server" />
                                                    </div>
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="EmployeeNumber" CssClass="text-danger" ErrorMessage="The Designation field is required." />                   
                                    </div>
                                    <div class="col-md-4">
                                                                       
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">Designation</label>
                                                    <asp:DropDownList CssClass="form-control" ID="Designation" runat="server"></asp:DropDownList>
                                                    </div>
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Designation" CssClass="text-danger" ErrorMessage="The Designation field is required." />                   
                                    </div>
                                      <div class="col-md-4">
                                                                       
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">Department</label>
                                                    <asp:DropDownList CssClass="form-control" ID="Department" runat="server"></asp:DropDownList>
                                                    </div>
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Department" CssClass="text-danger" ErrorMessage="The Department field is required." />                   
                                    </div>
                                    <div class="col-md-4">
                                                        
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">Personnel Type</label>
                                                    <asp:DropDownList CssClass="form-control" ID="personnel_type" runat="server"></asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="personnel_type" CssClass="text-danger" ErrorMessage="The personnel type field is required." />
                                                    </div>
                                                                        
                                    </div>
                                            <div class="col-md-4">
                                                                       
                                                            <div class="form-group">
                                                            <label for="exampleInputText1">Phone Number</label>
                                                            <input type="tel" class="form-control" id="PhoneNumber" placeholder="Phone Number" name="PhoneNumber" runat="server" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="You must enter PhoneNumber..!!!" ForeColor="Red"></asp:RequiredFieldValidator> 
                                                            </div>
                                                                        
                                            </div>
                                                <div class="col-md-4">
                                                    
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">Email Address</label>
                                                    <input type="email" class="form-control" id="Email1" AssociatedControlID="Email" placeholder="EmailAddresss" name="Email Addresss" runat="server" />
                                                    </div>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email1" CssClass="text-danger" ErrorMessage="The email field is required." />            
                                            </div>

                                            <div class="col-md-4">
                                                                       
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">Manager</label>
                                                    <asp:DropDownList CssClass="form-control" ID="Manager" runat="server"></asp:DropDownList>
                                                    </div>
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Manager" CssClass="text-danger" ErrorMessage="The Manager field is required." />                   
                                            </div>
                                            <div class="col-md-4">
                                                                       
                                                    <div class="form-group">
                                                    <label for="exampleInputText1">Upload Picture</label>
                                                     <asp:FileUpload ID="FileUploadPicture" runat="server" />
                                                    </div>
                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FileUploadPicture" CssClass="text-danger" ErrorMessage="The Picture field is required." />                   
                                            </div>
                                             
                                        </div><!----row end---->

                                                  <%--     
                                          </div>
                                    </div>
                      </div>--%>

                 <div id="Uploadattachment" class="panel-collapse collapse in" >
                                                
                                                <div class="panel-body">
                                                    
                                                     <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" Width="100%" DataSourceID="SqlEmployeeFiles" ClientInstanceName="formlayout" ColCount="2" OnDataBound="ASPxFormLayout1_DataBound" ColumnCount="2">
		                                                    <Items>
                                                               <dx:LayoutGroup ColCount="4" ColSpan="2" Caption="Supporting Documents - Ensure you upload (Bachelors Or Masters and NYSC Certificate) ">
				                                                    <Items>
					                                                    <dx:LayoutItem ColSpan="2" Caption="Bachelors Or Masters Certificate" FieldName="FileName1" RequiredMarkDisplayMode="Required">
						                                                    <LayoutItemNestedControlCollection>
							                                                    <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
								                                                    <dx:ASPxTextBox ID="FileName1" runat="server" ClientInstanceName="Certificate"  text="Certificate" Width="100%" Height="25px">
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
					                                                    <dx:LayoutItem ColSpan="2" Caption="NYSC" FieldName="FileName2" >
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
                                                                   </dx:LayoutGroup>
                                                                
                                                            </Items>
                                                                    <SettingsItemCaptions Location="Top" />
	                                                    </dx:ASPxFormLayout>
                                                    
                                                    
                                                </div>
                 <div style="float:right">


                      <div class="form-group">
                            <div class="col-md-4 col-md-offset-4">
                                <asp:Button runat="server" OnClick="CreatePersonal_Click" Text="Create Personal" CssClass="btn btn-primary" />
                                <asp:Button ID="AspxButtonref" runat="server"  Text="Refresh" OnClick="Refresh_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>

            </div>      
        </div>
    &nbsp;

    <asp:SqlDataSource ID="SqlEmployeeFiles" runat="server" ConnectionString="<%$ ConnectionStrings:RexGlobeDB %>" DeleteCommand="DELETE FROM [EmployeeFiles] WHERE [FileId] = @FileId" InsertCommand="INSERT INTO [EmployeeFiles] ([FileId], [EmployeeFilesID], [FileName], [FileDescription], [FileType], [FileContent], [CreateDate]) VALUES (@FileId, @EmployeeFilesID, @FileName, @FileDescription, @FileType, @FileContent, @CreateDate)" SelectCommand="SELECT * FROM [EmployeeFiles]" UpdateCommand="UPDATE [EmployeeFiles] SET [EmployeeFilesID] = @EmployeeFilesID, [FileName] = @FileName, [FileDescription] = @FileDescription, [FileType] = @FileType, [FileContent] = @FileContent, [CreateDate] = @CreateDate WHERE [FileId] = @FileId">
        <DeleteParameters>
            <asp:Parameter Name="FileId" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FileId" Type="Object" />
            <asp:Parameter Name="EmployeeFilesID" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FileDescription" Type="String" />
            <asp:Parameter Name="FileType" Type="String" />
            <asp:Parameter Name="FileContent" Type="Object" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EmployeeFilesID" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FileDescription" Type="String" />
            <asp:Parameter Name="FileType" Type="String" />
            <asp:Parameter Name="FileContent" Type="Object" />
            <asp:Parameter Name="CreateDate" Type="DateTime" />
            <asp:Parameter Name="FileId" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
