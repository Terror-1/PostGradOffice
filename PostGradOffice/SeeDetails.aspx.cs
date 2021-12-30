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
    public partial class SeeDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["user"]==null) | Session["type"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (!Session["type"].ToString().Equals("3"))
            {
                Response.Redirect("Login.aspx");
            }
            else
                    { 
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int id6 = Int16.Parse(Session["user"].ToString());
            SqlCommand lists = new SqlCommand("ListAllInfo", conn);
            lists.CommandType = CommandType.StoredProcedure;
            lists.Parameters.Add(new SqlParameter("@id", id6));
            conn.Open();
            lists.ExecuteNonQuery();
            SqlDataAdapter adapter = new SqlDataAdapter(lists);
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