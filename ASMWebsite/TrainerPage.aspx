<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrainerPage.aspx.cs" Inherits="ASMWebsite.TrainerPage" %>

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
                <li><a>Welcome : Trainer</a> </li>
                <li><a href="TrainerPageUpdateProfile.aspx">Update Profile</a> </li>
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
                        DataKeyNames="CourseDescription" 
                        DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ButtonType="Link" 
                        ShowDeleteButton="false" 
                        ShowEditButton="false" 
                        ShowCancelButton="false" >                       
                    </asp:CommandField>

                    <asp:BoundField DataField="CourseDescription" 
                        HeaderText="Course" 
                        ReadOnly="true" 
                        SortExpression="CourseDescription" />
                    <asp:BoundField DataField="TopicDescription" 
                        HeaderText="Topic" 
                        SortExpression="TopicDescription" />
                    <asp:BoundField DataField="CategoryDescription" 
                        HeaderText="Category" 
                        SortExpression="CategoryDescription" />
                </Columns>
            </asp:GridView>

            <%--trong data source phai dung dau @ de goi session tu trang Login ra de su dung trong cau lenh query--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webappnew1 %>" 
                SelectCommand="SELECT Course.CourseDescription, 
                                      Topic.TopicDescription, 
                                      Category.CategoryDescription 
                                FROM  Course,
                                      Topic,
                                      Category
                               WHERE  Topic.TopicID = Course.TopicID
                                 AND  Course.CourseID = Category.CourseID
                                 AND  Topic.TopicID = (Select TopicID 
                                                         from TrainerTopic 
                                                        where UserID = @userSession)"
                          
                >
                
                <%--can khai bao parametter nay de su dung session userSession tu trang login trong cau lenh query o tren--%>
                <SelectParameters>
                    <asp:Parameter Name="userSession" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
