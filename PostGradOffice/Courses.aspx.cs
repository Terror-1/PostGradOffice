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
                SqlDataReader rdr = ViewCourse.ExecuteReader(CommandBehavior.CloseConnection);

                while (rdr.Read())
                {
                    int id = rdr.GetInt32(0);
                    ListItem li = new ListItem();
                    li.Text = id + "";
                    ListBox1.Items.Add(li);

                    String code = "Not defined yet";
                    if (!rdr.IsDBNull(1))
                    {
                        code = rdr.GetString(1);
                    }
                    ListItem li1 = new ListItem();
                    li1.Text = code;
                    ListBox2.Items.Add(li1);
                    decimal grade = 0;
                    if (!rdr.IsDBNull(2))
                    {
                        grade = rdr.GetDecimal(2);
                    }
                    ListItem li2 = new ListItem();
                    li2.Text = grade + "";
                    ListBox3.Items.Add(li2);
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NonGucian.aspx");
        }
    }
}