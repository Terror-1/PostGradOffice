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
    public partial class Myprofile2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);

                SqlCommand Myprofile = new SqlCommand("viewMyProfile", conn);
                Myprofile.CommandType = CommandType.StoredProcedure;
                Myprofile.Parameters.Add(new SqlParameter("@studentId", SqlDbType.VarChar)).Value = Session["user"];

                conn.Open();
                SqlDataReader rdr = Myprofile.ExecuteReader(CommandBehavior.CloseConnection);
                while (rdr.Read())

                {
                    String type = "not defined yet";
                    Decimal GPA = 0;

                    int id3 = rdr.GetInt32(rdr.GetOrdinal("id"));
                    String email = rdr.GetString(rdr.GetOrdinal("email"));
                    String firstName = rdr.GetString(rdr.GetOrdinal("firstName"));
                    String lastName = rdr.GetString(rdr.GetOrdinal("lastName"));
                    if (!rdr.IsDBNull(3))
                    {
                        type = rdr.GetString(rdr.GetOrdinal("type"));


                    }
                    if (!rdr.IsDBNull(6))
                    {
                        GPA = rdr.GetDecimal(6);
                    }
                    String Faculty = rdr.GetString(rdr.GetOrdinal("faculty"));
                    String adress = rdr.GetString(rdr.GetOrdinal("address"));
                    I.Text = id3 + "";
                    Fn.Text = firstName;
                    Ln.Text = lastName;
                    mail.Text = email;
                    Tp.Text = type;
                    facc.Text = Faculty;
                    Gpa.Text = GPA + "";



                }
            }
        }

        protected void ok_Click(object sender, EventArgs e)
        {
            Response.Redirect("NonGucian.aspx");
        }
    }
}