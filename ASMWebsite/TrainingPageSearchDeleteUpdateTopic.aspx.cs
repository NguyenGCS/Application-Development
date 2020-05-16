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
namespace ASMWebsite
{
    public partial class TrainingPageSearchTopic : System.Web.UI.Page
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

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from [Topic] where TopicID=@TopicID and TopicDescription != 'Deleted'";
            cmd.Parameters.AddWithValue("@TopicID", TxtSearch.Text);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ada = new SqlDataAdapter(cmd);
            ada.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void DelBut_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update [Topic] set TopicDescription = 'Deleted' where [TopicID] = @TopicID";
            cmd.Parameters.AddWithValue("@TopicID", TxtSearch.Text);
            cmd.ExecuteNonQuery();

        }

        protected void UpdateBut_Click(object sender, EventArgs e)
        {
            string SearchSession = TxtSearch.Text.Trim();
            Session["SearchSession"] = SearchSession;
            Response.Redirect("TrainingPageUpdateTopic.aspx");
        }
    }
}