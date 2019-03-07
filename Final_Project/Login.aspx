<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>log in</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body{
            position: relative;
            background: #fff;
            color: #fff;
            font-family: cursive;
        }
        header{
        	height: 100vh;
        	background-image: url("images//5.jpg");
        	min-height: 100vh;
        	background-size: cover;
        	background-position: center;
        	background-repeat: none;  
            text-align: left;
        }
        .overlay{
        	position: absolute;
        	height: 100%;width: 100%;
        	background: rgba(0,0,0,0.6);
        }
        .centered{
        	position: absolute;
        	top: 50%;left: 50%;
        	transform: translate(-50%,-50%);
            width: 600px;
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

        .centered input{
            margin-bottom: 10px;
            padding-right: 10px;
            background: #EAEAEA;
        }
        .centered h1{
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <header>
   	
		<div class="overlay"></div>

		<div class="centered">
			<h1>log in form</h1>
			<div class="container">
				<form id="form1" runat="server">

                    <div class="row">
                        
                        <asp:RequiredFieldValidator cssclass="alert alert-danger" display="Dynamic" ValidationGroup='valGroup1' ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernametxt" ErrorMessage="Enter user name" ForeColor="black" Width="600px"></asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="row">
                        <asp:RequiredFieldValidator cssclass="alert alert-danger" display="Dynamic" ValidationGroup='valGroup1' ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" ErrorMessage="Enter Password" ForeColor="black" Width="600px"></asp:RequiredFieldValidator>
                    </div>

					<div class="row">
						<div class="col-md-12">
							<asp:TextBox placeholder="username" CssClass="form-control" ID="usernametxt" runat="server"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<asp:TextBox placeholder="password" CssClass="form-control" ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2">
							<asp:Button ValidationGroup='valGroup1' ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" CssClass="btn btn-md btn-outline-primary" />
						</div>
                        <div class="col">
                            <asp:Button ID="signupBtn" runat="server" OnClick="signupBtn_Click" Text="sign up" CssClass="btn btn-md btn-outline-primary" />
                        </div>
					</div>
				</form>
			</div>
        </div>

   </header>    
</body>
</html>
