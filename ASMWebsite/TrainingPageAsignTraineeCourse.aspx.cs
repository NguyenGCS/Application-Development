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
    public partial class TrainingPageAsign : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=localhost;" +
                                    "Initial Catalog=webappnew1;" +
                                    "Integrated Security=True;" +
                                    "Pooling=False";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter ada = new SqlDataAdapter();
            DataSet ds = new DataSet();

            SqlCommand cmd1 = new SqlCommand("Insert into TraineeCourse (UserID,CourseID) values (@UserID,@CourseID);", con);
            cmd1.Parameters.AddWithValue("@CourseID", DropDownList1.SelectedValue);
            cmd1.Parameters.AddWithValue("@UserID", DropDownList2.SelectedValue);
            cmd1.ExecuteNonQuery();

            Response.Redirect("TrainingPage.aspx");

            con.Close();
        }
    }
}