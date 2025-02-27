﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ASMWebsite.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <title></title>
    <style>
        body{
            margin:0;
            padding:0;
            font-family:sans-serif;
            background:#34495e;
        }
        .box {
            width: 300px;
            padding: 40px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            background: #191919;
            text-align: center;
            border-radius: 38px;
        }
        .box h1{
            color:white;
            text-transform:uppercase;
            font-weight:500;
        }
        .box input[type="text"],.box input[type="password"]{
            border:0;
            background:none;
            display:block;
            margin:20px auto;
            text-align:center;
            border:2px solid #3498db;
            padding: 14px 10px;
            width:200px;
            outline:none;
            color:white;
            border-radius:24px;
            transition:0.25s;
        }
        .box input[type="text"]:focus,.box input[type="password"]:focus{
            width: 280px;
            border-color:#2ecc71;
        }
            .box input[type="submit"] {
                border: 0;
                background: none;
                display: block;
                margin: 20px auto;
                text-align: center;
                border: 2px solid #2ecc71;
                padding: 14px 40px;
                outline: none;
                color: white;
                border-radius: 24px;
                transition: 0.25s;
                cursor:pointer;
            }
            .box input[type="submit"]:hover{
                background: #2ecc71;
            }
    </style>
</head>
<body>
    <form class="box" runat="server">
        <h1>Login</h1>
        <asp:TextBox ID="usernameinput" runat="server" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="passinput"  TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
        <asp:Button ID="Loginbutton" runat="server" Text="Submit" OnClick="Loginbutton_Click" />
    </form>
</body>
</html>
