<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="WebApplication1.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Your Password or Password Recovery</title>
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv ="X-UA compatible" content="Google Chrome-edge"/>

    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>


                </button>
                <a class="navbar-brand" href="Default.aspx"> <span><img src="Icon/LogoIcon.jpg" alt="MyChocorichChocolate " height="30" /></span>My Chocolate</a>

                  </div>
            <div class="navbar-collapse collapse">
                <ul class=" nav navbar-nav navbar-right" >
                    <li><a href="Default.aspx">Home</a></li>
                     <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Blog</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">Chocolate</li>
                            <li role="separator" class="divider"></li> 

                            <li><a href="#">White Chocolate</a></li>
                             <li><a href="#">Milk Chocolate</a></li>
                             <li><a href="#">Dark Chocolate</a></li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">Gift Chocolate</li>
                            <li role="separator" class="divider"></li>

                            <li><a href="#">Choclairs Gold Home Pack</a></li>
                             <li><a href="#"> Rich Cocoa Dark Chocolate Bar</a></li>
                             <li><a href="#"> Cocoa Dark Noir Chocolate</a></li>

                        </ul>
                    </li>

                   
                    <li ><a href="SignIn.aspx">SignIn</a></li>
                </ul>
            </div>
             </div>
        </div>



        </div>

<div class="container">
        <div class="form-horizontal">
            <hr />
             <br />
            <br />
     

            <h2>Reset Password</h2>
            <hr />
            <br />
            <br />
            <br />
           
            <h3></h3>
             <div class="form-group">
<asp:Label ID="lblmsg" CssClass="col-md-2 control-label" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>

             </div>


            <div class="form-group">
                <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text=" Your New Password" Visible="False"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtNewPass" CssClass="form-control"  TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblConfirmPass" CssClass="col-md-2 control-label" runat="server" Text=" Confirm New Password" Visible="False"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtConfirmPass" CssClass="form-control"  TextMode="Password" runat="server" Visible="False" OnTextChanged="txtConfirmPass_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass="text-danger" runat="server" ErrorMessage="Enter Your Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirm password not match......try again" ControlToCompare="txtNewPass" ForeColor="Red" ControlToValidate="txtConfirmPass"></asp:CompareValidator>

                </div>

            </div>

            <div class="form-group">
                <div class="col-md-2">  </div>

                <div class="col-md-6">
                    <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"   />
                    
                    
                    
                </div>
            </div>
        
        </div>
            </div>


    </form>

<!-------Footer Contents start here-------->
        <hr />
<footer>

    <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy 2021 Chocolate Site created by Rashmi &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About Us</a>&middot;<a href="#">Contact Us</a>&middot;<a href="#">Blog</a>&middot;<a href="#">Product</a>&middot;<a href="#">Account</a>&middot;</p>

 </div>

</footer>

  <!-------Footer Contents End here--------> 






</body>
</html>
