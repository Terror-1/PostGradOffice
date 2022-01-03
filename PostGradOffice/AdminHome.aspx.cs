using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostGradOffice
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListSup.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListThesis.aspx");

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminIssueThesispayment.aspx");

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminIssueInstallPayment.aspx");

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUpdateExtension.aspx");

        }

    }
}