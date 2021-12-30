using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataBase_Project
{
    public partial class AddGrade : System.Web.UI.Page
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

        protected void AddGrad_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int x;
            bool parsable = int.TryParse(serialno.Text, out x);
            if (serialno.Text == "" | grade.Text == ""| defenseDate.Text=="")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else if (!parsable)
            {
                Response.Write("<script language=javascript>alert('please write a vailde serial number');</script>");
            }
            else
            {
                int id5 = Int16.Parse(Session["user"].ToString());
                DateTime defenseDate5 = DateTime.ParseExact(defenseDate.Text,"yyyy-MM-dd", CultureInfo.InvariantCulture);
                int serialno5 = Int16.Parse(serialno.Text);
                decimal grade5 = decimal.Parse(grade.Text, new NumberFormatInfo() { NumberDecimalSeparator = "." });
                SqlCommand AddGra = new SqlCommand("AddDefenseGrade", conn);
                AddGra.CommandType = CommandType.StoredProcedure;
                AddGra.Parameters.Add(new SqlParameter("@id", id5));
                AddGra.Parameters.Add(new SqlParameter("@ThesisSerialNo", serialno5));
                AddGra.Parameters.Add(new SqlParameter("@DefenseDate", defenseDate5));
                AddGra.Parameters.Add(new SqlParameter("@grade", grade5));
                SqlParameter success = AddGra.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                AddGra.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "True")
                {
                    Response.Write("Operation executed successfully");
                }
                else
                {
                    Response.Write("Operation unsuccessful the defense you tried to access was not found");
                }
            }

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Examiner page.aspx");
        }
    }
}