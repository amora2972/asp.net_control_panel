<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerControl.aspx.cs" Inherits="CustomerControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
        h2{
            margin-top: 65px;
            text-align: center;
            margin-bottom: 40px;
        }
        body{
            font-family: sans-serif;
            background: #f4f4f4;
        }
    </style>
</head>
<body>



    <form id="form1" runat="server">
            
        
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
              <a class="navbar-brand" href="#">CarRental</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                      <asp:HyperLink class="nav-link" ID="newRent" runat="server" NavigateUrl="~/NewRent.aspx">New Rent</asp:HyperLink>
                  </li>
                    
                  <li class="nav-item active">
                      <asp:HyperLink class="nav-link" ID="updateRent" runat="server" NavigateUrl="~/updateRent.aspx">Update Rent</asp:HyperLink>
                  </li>
                  <li class="nav-item">
                      <button type="button" class="nav-link" data-toggle="modal" data-target="#exampleModal">
                        Delete a rent
                     </button>
                  </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-male"></i> <asp:Label ID="Label2" runat="server"></asp:Label>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <asp:HyperLink class="dropdown-item" ID="HyperLink1" runat="server" NavigateUrl="~/profile.aspx">View profile</asp:HyperLink>
                            <asp:Button OnClick="SignOutBtn_Click" class="dropdown-item" ID="SignOutBtn" runat="server" Text="Sign out" />
                        </div>
                      </li>
                </ul>
              </div>
                </div>
            </nav>

        
        <h2>Existed Customers in the database</h2>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete A Customer</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <asp:TextBox placeholder="Enter an Id" style="width: 50%;" class="form-control" ID="adminIdInput" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button class="btn btn-outline-primary" ID="deleteBtn" OnClick ="deleteRow" runat="server" Text="Delete"/>
                            </div>
                        </div>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  </div>
                </div>
              </div>
            </div>
        

            
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
