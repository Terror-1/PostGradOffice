using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PostGradOffice
{
    public partial class Thesis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {



                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand ViewThesis = new SqlCommand("ViewMyThesis", conn);
                ViewThesis.CommandType = CommandType.StoredProcedure;

                ViewThesis.Parameters.Add(new SqlParameter("@studentId", SqlDbType.VarChar)).Value = Session["user"];
                conn.Open();
                ViewThesis.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter(ViewThesis);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();
              

            }
        }

  
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Session["type"].ToString() == "0")
            {
                Response.Redirect("student.aspx");
            }
            else if (Session["type"].ToString() == "4")
            {
                Response.Redirect("NonGucian.aspx");

            }
        }
    }
    }
