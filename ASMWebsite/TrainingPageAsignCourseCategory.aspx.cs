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
    public partial class TrainingPageAsignCourseCategory : System.Web.UI.Page
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
            int b = Convert.ToInt32(Session["SearchSession"].ToString());
            cmd.CommandText = "select * from Category where CategoryID = @CategoryID and CategoryDescription != 'Deleted'";
            cmd.Parameters.Add("@CategoryID", SqlDbType.Int);
            cmd.Parameters["@CategoryID"].Value = b;

            cmd.Connection = con;
            ada.SelectCommand = cmd;
            cmd.ExecuteNonQuery();
            // du lieu tu cau lenh sql o tren se dc fill vao mot cai table ao ten ds
            ada.Fill(ds, "Category");

            if (ds.Tables[0].Rows.Count != 0)
            {
                int a = Convert.ToInt32(Session["SearchSession"].ToString());
                SqlCommand cmd1 = new SqlCommand("Update Category set CourseID=@CourseID where CategoryID=@CategoryID", con);
                cmd1.Parameters.AddWithValue("@TopicID", DropDownList1.SelectedValue);
                cmd1.Parameters.AddWithValue("@CategoryID", DropDownList2.SelectedValue);
                cmd1.ExecuteNonQuery();

                Response.Redirect("TrainingPage.aspx");
            }
            else
            {
                Response.Redirect("TrainingPageCreateCategory.aspx");
            }
            con.Close();
        }
    }
}