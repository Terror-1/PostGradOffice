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
    public partial class AddComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]==null | Session["type"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (!Session["type"].ToString().Equals("3"))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void AddComm_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            int x;
            bool parsable = int.TryParse(serialno.Text, out x);
            if (serialno.Text == ""| defenseDate.Text==""| comments.Text == "")
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
                DateTime defenseDate5 = DateTime.ParseExact(defenseDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture);
                int serialno5 = Int16.Parse(serialno.Text);
                string comments5 = comments.Text;
                SqlCommand AddComm = new SqlCommand("AddCommentsGrade", conn);
                AddComm.CommandType = CommandType.StoredProcedure;
                AddComm.Parameters.Add(new SqlParameter("@id", id5));
                AddComm.Parameters.Add(new SqlParameter("@ThesisSerialNo", serialno5));
                AddComm.Parameters.Add(new SqlParameter("@DefenseDate", defenseDate5));
                AddComm.Parameters.Add(new SqlParameter("@comments", comments5));
                SqlParameter success = AddComm.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                AddComm.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Command done successfully');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Command unsuccessful the defense you tried access was not found');</script>");
                }
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Examiner page.aspx");
        }
    }
}