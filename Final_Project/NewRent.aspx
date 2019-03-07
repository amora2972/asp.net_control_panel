<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewRent.aspx.cs" Inherits="NewRent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        *{
            margin: 0px;
            padding :0;
        }
        body{
            background: #f4f4f4;
            font-family: cursive;
        }
        input,select{
            margin: 15px;
            margin-bottom: 20px;
            background: #EAEAEA;
        }
        input[type=submit]{
            margin-left: 30px;
        }
        #Calendar1{
            margin-left: 30px;
            margin-bottom: 20px;
        }
        h1{
            margin: 15px;
            margin-left: 30px;
            margin-bottom: 20px;
        }
        .navbar{
            color: #fff;
        }
        .nav-link{ 
             background:none!important;
             border:none;
        }
        h2 {
            margin-top: 65px;
            text-align: center;
            margin-bottom: 40px;
        }
        .ads{
            float: right;
        }
        .ads img{
            height: 600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <asp:HyperLink class="navbar-brand" ID="HyperLink1" runat="server" NavigateUrl="~/CustomerControl.aspx">CarRental</asp:HyperLink>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    
                  <li class="nav-item active">
                      <asp:HyperLink class="nav-link" ID="updateRent" runat="server" NavigateUrl="~/updateRent.aspx">Update Rent</asp:HyperLink>
                  </li>
                </ul>
              
            <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-male"></i> <asp:Label ID="Label2" runat="server"></asp:Label>
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <asp:HyperLink class="dropdown-item" ID="HyperLink2" runat="server" NavigateUrl="~/profile.aspx">View profile</asp:HyperLink>
                    <asp:Button style="margin-left: 0px;" OnClick="SignOutBtn_Click" class="dropdown-item" ID="SignOutBtn" runat="server" Text="Sign out" />
                </div>
                </li>
        </ul></div>
        </div>
        
    </nav>

        <h1>Add a new Rent</h1>
        
    <div class="container-fluid ontheleft">
        <div class="ads">
            <asp:AdRotator CssClass="img-fluid" ID="AdRotator1" runat="server" AdvertisementFile="~/ads.xml" />
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:textbox ID="customeridtxt" class="form-control" placeholder="customer id" runat="server"></asp:textbox>
            </div>
            <div class="col-md-6">
                <asp:requiredfieldvalidator runat="server" controlToValidate="customeridtxt" ForeColor="red" errormessage="Enter customer(primary key)"></asp:requiredfieldvalidator>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <asp:textbox ID="customernametxt" class="form-control" placeholder="name" runat="server"></asp:textbox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:textbox ID="customerage" class="form-control" placeholder="age" runat="server"></asp:textbox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:textbox ID="customeraddress" class="form-control" placeholder="address" runat="server"></asp:textbox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <select id="carsSelect" runat="server">
                    <option></option>

                </select>
            </div>
        </div>
        <div class="row">
            <asp:Calendar TodayDayStyle-BackColor="red" TodayDayStyle-ForeColor="White" ID="Calendar1" runat="server" Height="290px" Width="411px"></asp:Calendar>
        </div>
        <div class="row">
            <asp:Button ID="AddingBtn" CssClass="btn btn-outline-primary" runat="server" Text="Add" OnClick="AddingBtn_Click" />
        </div>
    </div>
</form>

     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
