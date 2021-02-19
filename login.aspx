<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="clinic_management_system.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

    <link rel="stylesheet" href="fonts/icomoon/style2.css">

    <link rel="stylesheet" href="css/owl2.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap2.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style2.css">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/apple-touch-icon1.png" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon1.png">

    <title>Login - Clinic Management Sysytem</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="load" class="d-lg-flex half">
    <div class="bg order-1 order-md-2 bgimage" style="background-image: url('images/bg_3.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <div class="mb-4 text-center">
              <h3> <strong>Sign In</strong></h3>
              <p class="mb-4">Signin form for the clinic that can
                login to their account.</p>
            </div>


              <div runat="server" id="alert" class="alert alert-danger alert-dismissible fade">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>  Login Failed ! </strong>
  </div>

           
              <div class="form-group first rounded glow">
                <label class="" for="email"><strong>Email address</strong></label>
                  <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
              </div>
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Required" Font-Size="Small">*Required</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ErrorMessage="email not match" Font-Size="Small">*email not match</asp:RegularExpressionValidator>

              
<br>


              <div class="form-group last mb-3 rounded glow">
                <label for="password"><strong>Password</strong> <i style="color:#b0b435;" class=" fas fa-eye"  id="togglePassword"></i></label>
                  
                  <asp:TextBox  ID="password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                  
              </div>
              
              <script>
                  const togglePassword = document.querySelector('#togglePassword');
                  const password = document.querySelector('#password');
                  togglePassword.addEventListener('click', function (e) {
                      // toggle the type attribute
                      const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
                      password.setAttribute('type', type);
                      // toggle the eye slash icon
                      this.classList.toggle('fa-eye-slash');
                  });
              </script>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="*Required" Font-Size="Small">*Required</asp:RequiredFieldValidator>


                <br />


                <br />
             
                <div class="text-center">
      <asp:Button ID="clinic" style="background-color:#b0b435 ;color: white;" class="btn btn-light btn-block dropdown-toggle login " runat="server" OnClick="clinic_Click2" Text="Login" />
                    
</div>

              <br>
              <div class="mb-4 text-center">
              <p class="text-dark">Not registered? So:<a class="text-strong text-bold" href="register.aspx" class="forgot-pass">Register here</a></p>
              </div>
            
          </div>
        </div>
      </div>
    </div>

    
  </div>



    <script src="js/jjquery-3.3.1.min.js"></script>
    <script src="js/ppopper.min.js"></script>
    <script src="js/bbootstrap.min.js"></script>
    <script src="js/mmain.js"></script>
        </div>
    </form>
</body>
</html>
