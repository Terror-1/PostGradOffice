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
    public partial class namesandyears : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            if (Session["user"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            
            else
            {
                int id = Int16.Parse(Session["user"].ToString());

                SqlCommand ViewProc = new SqlCommand("ViewSupStudentsYears", conn);
                ViewProc.CommandType = CommandType.StoredProcedure;
                ViewProc.Parameters.Add(new SqlParameter("@supervisorID", id));

                conn.Open();
                ViewProc.ExecuteNonQuery();
                SqlDataAdapter adap = new SqlDataAdapter(ViewProc);
                DataTable tab = new DataTable();
                adap.Fill(tab);
                GridView1.DataSource = tab;
                GridView1.DataBind();
                conn.Close();
            }
            
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Supervisor.aspx");
        }
    }
}