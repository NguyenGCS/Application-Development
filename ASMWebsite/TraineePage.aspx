<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TraineePage.aspx.cs" Inherits="ASMWebsite.TraineePage" %>


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
                <li><a>Welcome : Trainee</a> </li>
                <li><a href="TraineePageUpdateProfile.aspx">Update Profile</a> </li>
                <li><a href="News.aspx">Logout</a> </li>
            </ul>
        </div>
        <div class="aboutus">    
            <%--keo tha gridview tu toolbox--%>
            <asp:GridView ID="GridView1" 
                runat="server" 
                AllowPaging="True" 
                AllowSorting="True" 
                AutoGenerateColumns="False" 
                DataKeyNames="CourseID" 
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" 
                        ReadOnly="True" SortExpression="CourseID" />
                    <asp:BoundField DataField="CourseDescription" HeaderText="CourseDescription" 
                        SortExpression="CourseDescription" />
                    <asp:BoundField DataField="TopicID" HeaderText="TopicID" 
                        SortExpression="TopicID" />
                </Columns>
            </asp:GridView>

            <%--trong data source phai dung dau @ de goi session tu trang Login ra de su 
                dung trong cau lenh query--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webappnew1 %>" 
                SelectCommand="select * 
                                from [Course] where [courseid] = (select [courseid] 
                                from [category] where ([UserID] = @userSession))">
                <%--can khai bao parametter nay de su dung session userSession tu trang 
                    login trong cau lenh selectcommand query o tren, neu nhu la lenh delete 
                    hay updatecommand thi phai khai bao UpdateParameters--%>
                <SelectParameters>
                    <asp:Parameter Name="userSession" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>

