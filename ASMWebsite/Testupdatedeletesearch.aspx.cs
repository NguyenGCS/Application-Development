using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
namespace ASMWebsite
{
    public partial class Testupdatedeletesearch : System.Web.UI.Page
    {
        
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
            //SqlDataSource1.SelectParameters["UserSession"].DefaultValue = Session["userSession"].ToString();
            //gan gia tri cua usersession o tren vao GridView1 
            //
        }

        protected void ButSearch_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select   Info.Name," +
                "                       Info.DoB," +
                "                       Info.Address," +
                "                       Info.Email," +
                "                       Info.TOEIC," +
                "                       Info.Phone," +
                "                       Info.Education," +
                "                       Usert.UserID " +
                "               from    [Info],[Usert] where Usert.UserID = @UserID " +
                "                                        and Usert.Roleofuser != '0' " +
                "                                        and Info.UserID = Usert.UserID" +
                "                                        and Usert.Roleofuser != '1' " +
                "                                        and Usert.Roleofuser != '2'";
            cmd.Parameters.AddWithValue("@UserID", TxtSearch.Text);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            ada.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void DelBut_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update [Usert] set Roleofuser = '0' where [UserID] = @UserID and Roleofuser ='4'";
            cmd.Parameters.AddWithValue("@UserID", TxtSearch.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void UpdateBut_Click(object sender, EventArgs e)
        {
            string SearchSession = TxtSearch.Text.Trim();
            Response.Redirect("");
        }
    }
}