<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainingPage.aspx.cs" Inherits="ASMWebsite.TrainingPage" %>

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
                <li><a href="News.aspx">Logout</a> </li>
            </ul>
        </div>


        <div class="aboutus">
            
            <h1>TRAINING MANAGER PAGE</h1>

            <table style="width: 100%;">
                <tr>
                    <td>Create</td>
                    <td>Search, Update, Delete</td>
                    
                    <td>Asign</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Trainee" Width="120px" OnClick="Button1_Click"/></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Trainee" Width="120px" OnClick="Button2_Click"/></td>
                    
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Trainee to Course" Width="160px" OnClick="Button5_Click"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button6" runat="server" Text="Topic" Width="120px" OnClick="Button6_Click"/></td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Text="Topic" Width="120px" OnClick="Button7_Click"/></td>
                    
                    <td>
                        <asp:Button ID="Button10" runat="server" Text="Trainer to Topic" Width="160px" OnClick="Button10_Click"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button11" runat="server" Text="Category" Width="120px" OnClick="Button11_Click"/></td>
                    <td>
                        <asp:Button ID="Button12" runat="server" Text="Category" Width="120px" OnClick="Button12_Click"/></td>
                    
                    <td>
                        <asp:Button ID="Button15" runat="server" Text="Topic to Course" Width="160px" OnClick="Button15_Click"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button16" runat="server" Text="Course" Width="120px" OnClick="Button16_Click"/></td>
                    <td>
                        <asp:Button ID="Button17" runat="server" Text="Course" Width="120px" OnClick="Button17_Click"/></td>
                    
                    <td>
                        <asp:Button ID="Button20" runat="server" Text="Course to Category" Width="160px" OnClick="Button20_Click"/></td>
                </tr>

            </table>

            
            

        </div>
    </form>
</body>
</html>
