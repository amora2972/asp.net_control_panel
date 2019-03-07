<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        header{
            height: 100vh;
            width: 100%;
            position: relative;
            background-image: url("images//5.jpg");
            background-size: cover;background-position: center;
            background-attachment: fixed;
            color: #fff;
            font-family: cursive;
        }
        .overlay{
            position: absolute;
            width: 100%;height: 100%;
            background: rgba(0,0,0,0.2);
        }
        header .centered{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: #fff;
            color: black;
            border-radius: 5px;
            opacity: 0.8;
            text-align: center;
            padding: 5px;
            -webkit-box-shadow: 0px 0px 41px 7px rgba(0,0,0,0.8);
            -moz-box-shadow: 0px 0px 41px 7px rgba(0,0,0,0.8);
            box-shadow: 0px 0px 41px 7px rgba(0,0,0,0.8);
        }
        .centered *{
            margin: 5px;
        }
        input[placeholder]{
            text-transform:capitalize;
        }

        header input{
            margin-bottom: 10px;
        }
        header h1{
            margin-bottom: 25px;
        }
        
    </style>
</head>
<body>
    <header>
        <div class="overlay"></div>

        <div class="centered">
            <h1>Create A New Account</h1>
            <div class="container">
            <form id="form1" runat="server">
                <div class="row">
                    <div class="col"> 
                        <asp:TextBox placeholder="username" class="form-control" ID="usernametxt" runat="server" Width="250px"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator9" runat="server" ControlToValidate="usernametxt" ErrorMessage="Enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <asp:TextBox placeholder="first name" class="form-control" ID="firstnametxt" runat="server" Width="250px"></asp:TextBox>
                    </div>
                    <div class="col">
                      <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator8" runat="server" ControlToValidate="firstnametxt" ErrorMessage="Enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox placeholder="last name" class="form-control" ID="lastnametxt" runat="server" Width="250px"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator7" runat="server" ControlToValidate="lastnametxt" ErrorMessage="enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox placeholder="Email" class="form-control" ID="emailtxt" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator6" runat="server" ControlToValidate="emailtxt" ErrorMessage="enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:TextBox placeholder="password" class="form-control" ID="passtxt" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:RegularExpressionValidator ValidationGroup='valGroup1' ID="RegularExpressionValidator1" runat="server" ControlToValidate="passtxt" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[\s\S]{8,20}$"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator1" forecolor="red" runat="server" ControlToValidate="passtxt" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Button ValidationGroup='valGroup1' class="btn btn-outline-primary btn-xs" ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Sign up" Width="86px" />
                    </div>
                    <div class="col">
                        <asp:Button class="btn btn-outline-primary btn-xs" ID="Button2" runat="server" Height="36px" OnClick="Button2_Click" Text="login" Width="97px" />
                    </div>

                </div>
            </form>
        </div>
        </div>
        
    </header>
</body>
</html>