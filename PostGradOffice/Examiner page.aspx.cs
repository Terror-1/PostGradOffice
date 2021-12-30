using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBase_Project
{
    public partial class Examiner_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditInfo.aspx");
        }

        protected void AddCom_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddComment.aspx");
        }

        protected void AddGra_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddGrade.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchForThesis.aspx");
        }

        protected void List_Click(object sender, EventArgs e)
        {
            Response.Redirect("SeeDetails.aspx");
        }
    }
}