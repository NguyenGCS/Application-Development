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
    public partial class TrainingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // create button
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageCreateTrainee.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageCreateTopic.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageCreateCategory.aspx");
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageCreateCourse.aspx");
        }
        // update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageSearchDeleteUpdateTrainee.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageSearchDeleteUpdateTopic.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageSearchDeleteUpdateCategory.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageSearchDeleteUpdateCourse.aspx");
        }        
        //assign button
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageAsignTraineeCourse.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageAsignTrainerTopic.aspx");
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageAsignTopicCourse.aspx");
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainingPageAsignCourseCategory.aspx");
        }
    }
}