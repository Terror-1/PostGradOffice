using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Supervisor : System.Web.UI.Page
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
            Response.Redirect("namesandyears.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Publication.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("defenceandexaminer.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("evaluatereport.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("cancelthesis.aspx");
        }
    }
}