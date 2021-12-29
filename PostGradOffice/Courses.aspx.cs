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
    public partial class Courses : System.Web.UI.Page

    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand ViewCourse = new SqlCommand("ViewCoursesGrades", conn);
                ViewCourse.CommandType = CommandType.StoredProcedure;
                ViewCourse.Parameters.Add(new SqlParameter("@studentId", SqlDbType.VarChar)).Value = Session["user"];
                conn.Open();
                ViewCourse.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter(ViewCourse);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NonGucian.aspx");
        }
    }
}