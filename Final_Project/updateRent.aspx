<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updateRent.aspx.cs" Inherits="updateRent" %>

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
        input,select,.form-control{
            margin: 10px;
            margin-left: 0px;
            margin-bottom: 15px;
            background: #EAEAEA;
        }
        h1{
            margin: 10px;
            margin-bottom: 20px;
            font-size: 22px;
            font-weight: bold;
        }
        body{
            background: #f4f4f4;
            font-family: cursive;
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
                      <asp:HyperLink class="nav-link" ID="newRent" runat="server" NavigateUrl="~/NewRent.aspx">New Rent</asp:HyperLink>
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
            
            <h1>Enter an Id to update the user data</h1>
            <div class="row">
                <div class="col">
                    <asp:TextBox placeholder="Enter an Id" style="width: 50%;" class="form-control" ID="adminIdInput" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Button class="btn btn-outline-primary" ID="getDataBtn" OnClick ="getData" runat="server" Text="Find"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    id:
                    <asp:TextBox style="width: 50%;" class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col">
                     name:
                    <asp:TextBox style="width: 50%;" class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    age:
                    <asp:TextBox style="width: 50%;" class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    address:
                    <asp:TextBox style="width: 50%;" class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                     rented car
                    <asp:TextBox style="width: 50%;" class="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <asp:Calendar TodayDayStyle-BackColor="red" TodayDayStyle-ForeColor="White" ID="Calendar1" runat="server" Height="290px" Width="411px"></asp:Calendar>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Button class="btn btn-outline-primary" ID="update" OnClick="updateData" runat="server" Text="Update"/>
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
