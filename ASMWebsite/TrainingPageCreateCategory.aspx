<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainingPageCreateCategory.aspx.cs" Inherits="ASMWebsite.TrainingPageCreateCategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css"/>
    <style>
        table{
            text-align: center;
        }
        h1{
            text-align:center;
        }
    </style>
</head>
<body class="aboutus0">
    <form id="form1" runat="server">
        <div class="navbar">
            <ul>
                <li><a>Welcome Staffs</a> </li>
                <li><a href="TrainingPage.aspx">Manager Page</a> </li>
                <li><a href="News.aspx">Logout</a> </li>
            </ul>
        </div>


        <div class="aboutus">
            
            <h1>CREATE CATEGORY PAGE</h1>

            <table style="width: 100%;">
                <tr>
                    <td class="texttr">Category ID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Description</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="CreateButton" runat="server" OnClick="Button1_Click" Text="Create" Width="100px" />
                        <asp:Button ID="ClearButton" runat="server" OnClick="Button2_Click" Text="Clear" Width="92px" />
                    </td>
                </tr>
            </table>

            
            

        </div>
    </form>
</body>
</html>
