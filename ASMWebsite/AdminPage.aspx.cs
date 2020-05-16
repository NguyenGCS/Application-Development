using System;
using System.Data;
using System.Data.SqlClient;
namespace ASMWebsite
{
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //ket noi co so du lieu
            con.ConnectionString = "Data Source=localhost;" +
                                    "Initial Catalog=webappnew1;" +
                                    "Integrated Security=True;" +
                                    "Pooling=False";
            con.Open();
            // gan gia tri cho usersession = userSession cua trang Login
            SqlDataSource1.SelectParameters["UserSession"].DefaultValue = Session["userSession"].ToString();
            //gan gia tri cua usersession o tren vao GridView1 
            //GridView1.DataBind();
        }
    }
}