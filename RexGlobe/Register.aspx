<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RexGlobe.Register" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="RexGlobe App" />
    <link href="StyleSheetED.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="css/bootstrap.min.css"/>  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
    <script src="bootstrap.min.js"></script> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css" />
    <%--<link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css"/>
    <script src="Content/js/jquery.min.js"></script>
    <script src="Content/js/bootstrap.min.js"></script>--%>
    </head>
<body >
    <form id="form1" runat="server">
       <div class="header">
            
      </div>
    <div class="col-md-1"></div>
    <div class="col-md-10" align="center" ">   
             <div class="row" align="center"  >
                    <br />
                    <div class="div Tasks"><img src="Resources/logo.png" /></div>

                 </div>
            <div class="panel panel-primary"> 
            <div class="panel-heading">Register</div>
            <div class="panel-body">
                <div class="row">
                      <div class="col-md-12" align="left">Access Information
                                <div class="panel panel-default">
                                      <div class="panel-body">
                                          
                                    
                                     

                                            <div class="row">
                                                    <div class="col-md-6">
                                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Username" ErrorMessage="You must enter Username..!!!" ForeColor="Red">
                                                                    </asp:RequiredFieldValidator> 
                                                                    <div class="form-group">
                                                                    <label for="exampleInputText1">Username</label>
                                                                    <input type="text" class="form-control" id="Username" placeholder="Username" name="Username" runat="server" />
                                                                    </div>
                                                        </div>
                                                          <div class="col-md-6">
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="You must enter Password..!!!" 
                                                                     ForeColor="Red"></asp:RequiredFieldValidator>
                                                                    <div class="form-group">
                                                                    <label for="exampleInputText1">Password</label>
                                                                    <%--<input type="text" class="form-control" id="Password" placeholder="Password" name="Password" textmode="Password"  runat="server" hidden="hidden" />--%>
                                                                        <asp:TextBox class="form-control" ID="txtPassword" placeholder="Enter your Password" runat="server" TextMode="Password" ></asp:TextBox>
                                                                    </div>
                                                                        
                                                                </div>
                                            </div> <br />
                                         
                                      </div>
                                </div>
                      </div>


                      <div class="col-md-12" align="left">Personal Information
                                <div class="panel panel-default">
                                          <div class="panel-body">
                            
                                                <div class="row">
                                                        <div class="col-md-4">
                                                        
                                                                      <div class="form-group">
                                                                        <label for="exampleInputText1">Company Name</label>
                                                                        <input type="text" class="form-control" id="CompanyName" placeholder="Company Name" name="CompanyName" runat="server" />
                                                                      </div>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="CompanyName" ErrorMessage="You must enter CompanyName..!!!" 
                                                                         ForeColor="Red"></asp:RequiredFieldValidator> 

                                                        </div>
                                                        <div class="col-md-4">
                                                                       
                                                                        <div class="form-group">
                                                                        <label for="exampleInputText1">Email Address</label>
                                                                        <input type="email" class="form-control" id="Email" placeholder="EmailAddresss" name="Email Addresss" runat="server" />
                                                                        </div>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Email" ErrorMessage="You must enter Email..!!!" 
                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </div>
                                                        <div class="col-md-4">
                                                        
                                                                      <div class="form-group">
                                                                        <label for="exampleInputText1">First Name</label>
                                                                        <input type="text" class="form-control" id="FirstName" placeholder="First Name" name="FirstName" runat="server" />
                                                                      </div>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstName" ErrorMessage="You must enter FirstName..!!!" 
                                                                         ForeColor="Red"></asp:RequiredFieldValidator> 

                                                        </div>
                                                       <div class="col-md-4">
                                                        
                                                                      <div class="form-group">
                                                                        <label for="exampleInputText1">Middle Name</label>
                                                                        <input type="text" class="form-control" id="MiddleName" placeholder="Middle Name" name="FirstName" runat="server" />
                                                                      </div>
                                                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MiddleName" ErrorMessage="You must enter MiddleName..!!!" 
                                                                            ForeColor="Red"></asp:RequiredFieldValidator> 

                                                        </div>
                                                        <div class="col-md-4">
                                                        
                                                                      <div class="form-group">
                                                                        <label for="exampleInputText1">Last Name</label>
                                                                        <input type="text" class="form-control" id="LastName" placeholder="Last Name" name="FirstName" runat="server" />
                                                                      </div>
                                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="LastName" ErrorMessage="You must enter LastName..!!!" 
                                                                            ForeColor="Red"></asp:RequiredFieldValidator> 

                                                        </div>
                                                        <div class="col-md-4">
                                                                       
                                                                        <div class="form-group">
                                                                        <label for="exampleInputText1">Phone Number</label>
                                                                        <input type="tel" class="form-control" id="PhoneNumber" placeholder="Phone Number" name="PhoneNumber1" runat="server" />
                                                                        </div>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneNumber" ErrorMessage="You must enter PhoneNumber..!!!" 
                                                                        ForeColor="Red"></asp:RequiredFieldValidator> 
                                                        </div>
                                                        
                                                        <div class="col-md-4">
                                                                       
                                                                        <div class="form-group">
                                                                        <label for="exampleInputText1">Country</label> 
                                                                         <input type="text" class="form-control" id="Country" readonly="true" name="Country" value="Nigeria" runat="server" /><%--<asp:DropDownList ID="DDLCountry" Height="30" runat="server"></asp:DropDownList>;--%>
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Country" ErrorMessage="You must Select Country..!!!" 
                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                        </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                                       
                                                                        <div class="form-group">
                                                                        <label for="exampleInputText1">State</label>
                                                                        <asp:DropDownList ID="DDLState" Height="30" Width="100%" runat="server"></asp:DropDownList>
                                                                        </div>
                                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DDLState" ErrorMessage="You must Select State..!!!" 
                                                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                                                        </div>
                                                    </div>
                            
                                            </div><!----row end---->

                                                       
                                 </div>
                       </div>
                 </div>
                        <div class="col-md-4 col-md-offset-4">
                            <asp:Button ID="btnregister" runat="server"  Text="Register" OnClick="btnregister_Click" CssClass="btn btn-primary" />
                            <asp:Button ID="Refresh" runat="server"  Text="Refresh" OnClick="Refresh_Click" CssClass="btn btn-primary" />
                        </div>

                </div>
            </div>      
        
            <hr />
            <footer>
                <p class="text-center">&copy; <%: DateTime.Now.Year %> - RexGlobe Limited</p>
            </footer>
    </div>
    <div class="col-md-1">

    </div>
      
    </form>
</body>
</html>
