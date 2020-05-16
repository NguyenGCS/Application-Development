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
    public partial class LoginPage : System.Web.UI.Page
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

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            //lay phan text nhap vao tu textbox ten la usernameinput, 
            //ten bien co the la usersession hoac abcxyz gi do cung dc
            string userSession = usernameinput.Text.Trim(); 
            // cau lenh sql se nhap vao csdl de lay du lieu ra
            cmd.CommandText = "select * from Usert where UserID='"
                                + usernameinput.Text + "'and Pass='"
                                + passinput.Text + "' and Roleofuser != '0'";
            cmd.Connection = con;
            ada.SelectCommand = cmd;
            // du lieu tu cau lenh sql o tren se dc fill vao mot cai table ao ten ds
            ada.Fill(ds, "Usert");
            // neu nhu table ao ds khong co bat ki dong du lieu nao thi se chay 
            //trang help.aspx - vi luc do ten dang nhap hoac mat khau da sai nen cau 
            //lenh sql o tren khong the lay duoc du lieu nao tu csdl
            if (ds.Tables[0].Rows.Count != 0)
            {
                //neu nhu table ao ds co bat ki dong du lieu nao thi username/pass da 
                //ok, tiep tuc check role cua nguoi dung
                //neu nhu username/pass da ok thi lay du lieu tu abcxyz o tren gan 
                //cho session ten la userSession, de co the dung cho cac page khac.
                Session["userSession"] = userSession;
                cmd.CommandText = "select Roleofuser from Usert where UserID='"
                                + usernameinput.Text + "'";
                cmd.Connection = con;
                ada.SelectCommand = cmd;
                ada.Fill(ds);
                // lay du lieu tu dong dau tien, cua cot RoleofUser, 
                //va chuyen no thanh string
                string A = ds.Tables[0].Rows[0]["Roleofuser"].ToString();
                // dung switch case de phan loai user dua theo role
                switch (A)
                {
                    case "1":                        
                        Response.Redirect("AdminPage.aspx");                                                
                        break;
                    case "2":
                        Response.Redirect("TrainingPage.aspx");                        
                        break;
                    case "3":
                        Response.Redirect("TrainerPage.aspx");                        
                        break;
                    default:
                        Response.Redirect("TraineePage.aspx");                        
                        break;
                }
            }
            else Response.Write("<script language='javascript'>window.alert('Wrong ID or password. Please enter again');window.location='LoginPage.aspx';</script>"); ;
        }

    }
}