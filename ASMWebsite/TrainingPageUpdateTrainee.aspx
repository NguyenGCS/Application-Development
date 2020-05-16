<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainingPageUpdateTrainee.aspx.cs" Inherits="ASMWebsite.TrainingPageUpdateTrainee" %>


<!DOCTYPE html>

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
                <li><a>Welcome : Staff</a> </li>
                <li><a href="TrainingPage.aspx">Manager Page</a> </li>
                <li><a href="News.aspx">Logout</a> </li>
            </ul>
        </div>
        <div class="aboutus">    
            <table style="width: 100%;">                                               
                <tr>
                    <td class="texttr">Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Width="193px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">DoB</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Address</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">TOEIC</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">ProLanguage</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox8" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Phone</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox9" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Working Place</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="CreateButton" runat="server" OnClick="Button1_Click" Text="Update" Width="100px" />
                        <asp:Button ID="ClearButton" runat="server" OnClick="Button2_Click" Text="Clear" Width="100px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
