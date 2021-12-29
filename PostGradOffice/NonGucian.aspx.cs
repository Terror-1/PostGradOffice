using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostGradOffice
{
    public partial class NonGucian : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void profile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Myprofile2.aspx");
        }

        protected void Thesis_Click(object sender, EventArgs e)
        {
            Response.Redirect("Thesis.aspx");
        }

        protected void Courses_Click(object sender, EventArgs e)
        {
            Response.Redirect("Courses.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addprogressreport.aspx");

        }

        protected void Fill_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fillprogress.aspx");
        }

        protected void publication_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addpublication.aspx");
        }

        protected void Link_Click(object sender, EventArgs e)
        {
            Response.Redirect("Linkpublication.aspx");
        }

        protected void mobile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addmobile.aspx");
        }

        protected void logour_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}