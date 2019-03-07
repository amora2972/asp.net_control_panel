<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title></title>
    <style>
        .navbar{
            color: #fff;
        }
        .nav-link{ 
             background:none!important;
             border:none;
        }
        .modal #deleteBtn{
            margin-top: 10px;
        }
        input,.form-control{
             background: #EAEAEA ;
        }
        h2{
            margin-top: 65px;
            text-align: center;
            margin-bottom: 40px;
        }
        .uppercase {text-transform: uppercase;}
        body{
            background: #f4f4f4;
        }

#form1 {
  margin-top: 80px !important; }
  #form1 input[type=text] {
    border-radius: 0px;
    width: 400px !important; }


.contact-button {
  display: block;
  width: 150px;
  color: white !important;
  margin-top: 25px;
  background-color: #343A40 !important; }
  .contact-button:hover {
    background-color: #ffffff !important;
    color: black !important;
    border: 1px solid black !important; }

@media (max-width: 991.5px) and (min-width: 576px) {
  #form1 form input {
    width: 280px !important; } }
@media (max-width: 575px) {
  #form1 form input {
    width: 300px !important; } }
    </style>

</head>
<body>
    <form id="form1" runat="server">
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                    <div class="container">
                        <asp:HyperLink class="navbar-brand" ID="HyperLink1" runat="server" NavigateUrl="~/CustomerControl.aspx">CarRental</asp:HyperLink>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                          <li class="nav-item active">
                              <asp:HyperLink class="nav-link" ID="newRent" runat="server" NavigateUrl="~/NewRent.aspx">New Rent</asp:HyperLink>
                          </li>
                           <li class="nav-item">
                               <asp:HyperLink class="nav-link" ID="HyperLink3" runat="server" NavigateUrl="~/updateRent.aspx">Update Rent</asp:HyperLink>
                           </li>
                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-male"></i> <asp:Label ID="Label2" runat="server"></asp:Label>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <asp:HyperLink class="dropdown-item" ID="HyperLink2" runat="server" NavigateUrl="~/profile.aspx">View profile</asp:HyperLink>
                                    <asp:Button OnClick="SignOutBtn_Click" class="dropdown-item" ID="SignOutBtn" runat="server" Text="Sign out" />
                                </div>
                              </li>
                        </ul>
                      </div>
            </nav>
            <div class="container">
				<h3 class = "uppercase">Edit your profile data</h3>
					<div class="row">
						<div class="col-sm-6">
							Username: <asp:TextBox ID="TextBox1" class="form-control" Width="50%" runat="server" required></asp:TextBox> <br />
							First Name: <asp:TextBox ID="TextBox2" class="form-control" Width="50%" runat="server"></asp:TextBox>
							Last Name: <asp:TextBox ID="TextBox3" class="form-control" Width="50%" runat="server"></asp:TextBox>
                            Email: <asp:TextBox ID="TextBox4" class="form-control" Width="50%" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="btnCenter">
                        <asp:button class="btn btn-outline-primary contact-button" OnClick="updateUser" runat="server" text="Save" />
					</div>
			</div>

    </form>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

            