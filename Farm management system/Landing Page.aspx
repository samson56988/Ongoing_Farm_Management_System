<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing Page.aspx.cs" Inherits="Farm_management_system.Landing_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Landing.css" />
</head>
<body>
    <div class="wrapper">
        <div class="nav">
            <div class="logo">
              FarmTech
            </div>

            <div class="menu">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Listing</a></li>
                    <li><a href="#">Location</a></li>
                    <li><a href="#">Contact</a></li>
                     <li><a href="#">Register</a></li>

                </ul>
            </div>
        </div>
        <div class="header">
            <h1>Farm Management System</h1>
            
            <a href="Session.aspx"><button>Login</button></a>
        </div>
    </div>
</body>
</html>
