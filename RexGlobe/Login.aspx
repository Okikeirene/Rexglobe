<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RexGlobe.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>Rex Globe Portal </title>
	<link href="Content/login.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/bootstrap.min.css"/>
    <link rel="stylesheet" href="Content/bootstrap-theme.min.css"/>
    <script src="Content/js/jquery.min.js"></script>
    <script src="Content/js/bootstrap.min.js"></script>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style type="text/css">
        .auto-style2 {
            height: 116px;
        }
    </style>
</head>
<body>
    <div class="form-area" >
      <br />
                
  		<h2 style="color:whitesmoke">User Login</h2>
                
        
    <form id="form1" runat="server">
        
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Visible="false" ControlToValidate="txtUserName" ErrorMessage="You must enter Username..!!!" 
                ForeColor="Red"></asp:RequiredFieldValidator> 
                                    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Visible="false" ControlToValidate="txtPassword" ErrorMessage="You must enter Password..!!!" 
                ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>
                               
				
                
                <p>UserName</p>
                <div> 
                    <input type="text" id="txtUserName" placeholder="Enter your Username" runat="server" />
                    
                </div>

                <p>Password</p>
                <div> 
                    <input type="password" id="txtPassword"  placeholder="Enter your Password" runat="server" />
                </div>
                <p>
                <br />
                <div class="submit">
                    <asp:Button ID="ASPxButtonLogin" runat="server" Text="Login" OnClick="ASPxButtonLogin_Click"/>
                    <asp:Button ID="Button1" runat="server"  Text="Register" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </div>
                </p>
               
                  <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="enabled">Forgot Your Password?</asp:HyperLink>
                </p>
    </form>
    </div>
</body>
</html>
