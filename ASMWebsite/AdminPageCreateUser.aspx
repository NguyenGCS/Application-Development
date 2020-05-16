<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPageCreateUser.aspx.cs" Inherits="ASMWebsite.AdminPageCreateUser" %>

<style type="text/css">
    .auto-style2 {
        width: 80%;
        color:aliceblue;
    }
    .texttr{
        color: aliceblue;
    }
</style>

DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css"/>
</head>
<body class="aboutus0">
    <form id="form1" runat="server">
        <div class="navbar">
            <ul>
                <li><a>Welcome : Admin</a> </li>
                <li><a href="AdminPage.aspx">Accounts Manager</a> </li>
                <li><a href="News.aspx">Logout</a> </li>
            </ul>
        </div>

        <div class="aboutus">    
            <table style="width: 100%;">
                <tr>
                    <td class="texttr">Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Password</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Role</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Width="193px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="CreateButton" runat="server" OnClick="Button1_Click" Text="Create" Width="100px" />
                        <asp:Button ID="ClearButton" runat="server" OnClick="Button2_Click" Text="Clear" Width="100px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

