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
    public partial class Publication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void view_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            if (sid.Text != "")
            {
                int sid1 = Int16.Parse(sid.Text);

                SqlCommand ViewProc = new SqlCommand("ViewAStudentPublications", conn);
                ViewProc.CommandType = CommandType.StoredProcedure;

                ViewProc.Parameters.Add(new SqlParameter("@StudentID", sid1));

                conn.Open();
                ViewProc.ExecuteNonQuery();
                SqlDataAdapter adap = new SqlDataAdapter(ViewProc);
                DataTable tab = new DataTable();
                adap.Fill(tab);
                GridView1.DataSource = tab;
                GridView1.DataBind();
                conn.Close();
            }
            else
            {
                Response.Write("<script language=javascript>alert('please fill the blanks');</script>");
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Supervisor.aspx");
        }
    }
}