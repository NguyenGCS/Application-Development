<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainingPageSearchDeleteUpdateCategory.aspx.cs" Inherits="ASMWebsite.TrainingPageSearchCategory" %>

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
            
            <h1>UPDATE SEARCH DELETE CATEGORY PAGE</h1>
            <%--keo tha gridview tu toolbox--%>
            Enter the ID: <asp:TextBox ID="TxtSearch" runat="server"></asp:TextBox> 
            <asp:Button ID="DelBut" runat="server" Text="Delete" OnClick="DelBut_Click" />
            <asp:Button ID="ButSearch" runat="server" Text="Search" OnClick="ButSearch_Click" />
            <asp:Button ID="UpdateBut" runat="server" Text="Update" OnClick="UpdateBut_Click" />
            <asp:GridView ID="GridView1" runat="server" EmptyDataText="There is no such CATEGORY, please use the Create function" ></asp:GridView>
            

            
            

        </div>
    </form>
</body>
</html>
