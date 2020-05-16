<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainingPageAsignTraineeCourse.aspx.cs" Inherits="ASMWebsite.TrainingPageAsign" %>

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
                    <td class="texttr">Trainee ID</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataValueField="UserID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webappnew1 %>" SelectCommand="SELECT [UserID] FROM [Usert] Where [Roleofuser] = '4'"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="texttr">Course ID</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataValueField="CourseID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webappnew1 %>" SelectCommand="SELECT [CourseID] FROM [Course] Where [CourseDescription] != 'Deleted'"></asp:SqlDataSource>
                    </td>
                </tr>             


                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="CreateButton" runat="server" OnClick="Button1_Click" Text="Assign" Width="100px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>