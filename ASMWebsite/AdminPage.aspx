<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ASMWebsite.AdminPage" %>

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
                <li><a>Welcome : Admin</a> </li>
                <li><a href="AdminPageCreateUser.aspx">Create User</a> </li>
                <li><a href="News.aspx">Logout</a> </li>
            </ul>
        </div>
        <div class="aboutus">    
            <%--keo tha gridview tu toolbox--%>
            <asp:GridView   ID="GridView1" 
                            runat="server" 
                            AllowPaging ="True" 
                            AllowSorting   ="True" 
                            AutoGenerateColumns="False" 
                            DataKeyNames="UserID" 
                            DataSourceID="SqlDataSource1">
                <Columns>

                    <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ShowEditButton="true" ShowCancelButton="true" >                       
                    </asp:CommandField>

                    <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="true" SortExpression="UserID" />
                    <asp:BoundField DataField="Roleofuser" HeaderText="Roleofuser" SortExpression="Roleofuser" />
                    <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                </Columns>
            </asp:GridView>

            <%--trong data source phai dung dau @ de goi session tu trang Login ra de su dung trong cau lenh query--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:webappnew1 %>" 
                SelectCommand="SELECT [UserID], [Roleofuser], [Pass] FROM [Usert] where [UserID] != @userSession and [Roleofuser]!='0'"
                DeleteCommand="Update [Usert] set Roleofuser = '0' where [UserID] = @UserID"
                UpdateCommand="Update [Usert] set Roleofuser = @Roleofuser, Pass = @Pass where [UserID] = @UserID"
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
