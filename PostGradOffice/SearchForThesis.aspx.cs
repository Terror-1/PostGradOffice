using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBase_Project
{
    public partial class SearchForThesis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null | Session["type"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (!Session["type"].ToString().Equals("3"))
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            
            if (title.Text == "")
            {
                Response.Write("<script language=javascript>alert('Invalid must type in the search box');</script>");
            }
            else
            {
                string title5 = title.Text;
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand search = new SqlCommand("SearchForThesis", conn);
                search.CommandType = CommandType.StoredProcedure;
                search.Parameters.Add(new SqlParameter("@keyword", title5));
                conn.Open();
                search.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter(search);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Examiner page.aspx");
        }
    }
}