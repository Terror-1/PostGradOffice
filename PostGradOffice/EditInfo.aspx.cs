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
    public partial class EditInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]==null | Session["type"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (!Session["type"].ToString().Equals("3"))
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void ChangeName_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String name5 = Name.Text;
            if ( name5=="")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else
            {
                int id5 = Int16.Parse(Session["user"].ToString());
                SqlCommand changename = new SqlCommand("EditName", conn);
                changename.CommandType = CommandType.StoredProcedure;
                changename.Parameters.Add(new SqlParameter("@id", id5));
                changename.Parameters.Add(new SqlParameter("@name", name5));
                SqlParameter success = changename.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                changename.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Operation executed successfully');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Operation unsuccessful');</script>");
                }
            }
            
        }

        protected void ChangeFieldOfwork_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            String fieldOfwork5 = fieldOfwork.Text;
            if (fieldOfwork5 == "")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else
            {
                int id5 = Int16.Parse(Session["user"].ToString());
                SqlCommand changefieldofwork = new SqlCommand("EditFieldOfWork", conn);
                changefieldofwork.CommandType = CommandType.StoredProcedure;
                changefieldofwork.Parameters.Add(new SqlParameter("@id", id5));
                changefieldofwork.Parameters.Add(new SqlParameter("@fieldOfWork", fieldOfwork5));
                SqlParameter success = changefieldofwork.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                changefieldofwork.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Operation executed successfully');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Operation unsuccessful');</script>");
                }

            }

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Examiner page.aspx");
        }
    }
}