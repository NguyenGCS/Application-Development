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
    public partial class TraineePageUpdateProfile : System.Web.UI.Page
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
            int b = Convert.ToInt32(Session["userSession"].ToString());
            cmd.CommandText = "select * from info where UserID= @UserID";
            cmd.Parameters.Add("@userID", SqlDbType.Int);
            cmd.Parameters["@UserID"].Value = b;

            cmd.Connection = con;
            ada.SelectCommand = cmd;
            cmd.ExecuteNonQuery();
            // du lieu tu cau lenh sql o tren se dc fill vao mot cai table ao ten ds
            ada.Fill(ds, "info");
            
            if (ds.Tables[0].Rows.Count == 0)
            {
                int a = Convert.ToInt32(Session["userSession"].ToString());
                SqlCommand cmd1 = new SqlCommand("  insert " +
                    "                               into " +
                    "                               info    (UserID,Name,Phone,Address) " +
                    "                               values  (@UserID,@Name,@Phone,@Address);", con);
                cmd1.Parameters.AddWithValue("@Name", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@Phone", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@Address", TextBox5.Text);
                cmd1.Parameters.Add("@userID", SqlDbType.Int);
                cmd1.Parameters["@UserID"].Value = a;
                cmd1.ExecuteNonQuery();
                Response.Redirect("TraineePage.aspx");
            }
            else
            { 
            SqlCommand cmd1 = new SqlCommand("Update " +
                "                                   info " +
                "                             set   " +
                "                           Name=@Name,Phone=@Phone,Address=@Address where UserID=@userSession;", con);
            //gan gia tri cho cot Name trong website (khong phai cot trong database) bang voi gia tri cua Textbox3
            cmd1.Parameters.AddWithValue("@Name", TextBox3.Text);
            cmd1.Parameters.AddWithValue("@Phone", TextBox4.Text);
            cmd1.Parameters.AddWithValue("@Address", TextBox5.Text);
            cmd1.Parameters.AddWithValue("@userSession", Session["userSession"].ToString());
            //cmd.Parameters.AddWithValue("Pass", DropDownList1.SelectedValue);
            //cmd.Parameters.AddWithValue("Pass", RadioButtonList1.SelectedValue);
            //chay cau len cmd o tren
            cmd1.ExecuteNonQuery();
            Response.Redirect("TraineePage.aspx");
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            //DropDownList1.SelectedValue = "";
            //RadioButtonList1.SelectedValue = "";
            TextBox3.Focus();
        }

        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    int a = Convert.ToInt32(Session["userSession"].ToString());
        //    SqlCommand cmd1 = new SqlCommand("insert into info (UserID,Name) values (@UserID,@Name);", con);
        //    cmd1.Parameters.AddWithValue("@Name", TextBox3.Text);
        //    cmd1.Parameters.Add("@userID",  SqlDbType.Int);
        //    cmd1.Parameters["@UserID"].Value = a;
        //    cmd1.ExecuteNonQuery();
        //    Response.Redirect("TraineePage.aspx");
        //    con.Close();
        //}
    }
}