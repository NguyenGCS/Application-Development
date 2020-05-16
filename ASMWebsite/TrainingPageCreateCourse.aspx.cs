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
    public partial class TrainingPageCreateCourse : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data Source=localhost;" +
                "                   Initial Catalog=webappnew1;" +
                "                   Integrated Security=True;" +
                "                   Pooling=False";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Course (CourseID, CourseDescription) values (@CourseID,@CourseDescription)", con);
            cmd.Parameters.AddWithValue("CourseID", TextBox1.Text);
            cmd.Parameters.AddWithValue("CourseDesctipon", TextBox2.Text);
            cmd.ExecuteNonQuery();

            Response.Redirect("TrainingPage.aspx");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();
        }
    }
}