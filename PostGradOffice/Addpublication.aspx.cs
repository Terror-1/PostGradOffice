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
    public partial class Addpublication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null | Session["type"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (!Session["type"].ToString().Equals("0") & !Session["type"].ToString().Equals("4"))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String title = Title.Text;
            String pubDate = Date.Text;
            String hosted = host.Text;
            String placed = place.Text;
            if (title == "" || pubDate == "" || hosted =="" || placed =="")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand Addproc = new SqlCommand("addPublication", conn);
                Addproc.CommandType = CommandType.StoredProcedure;
                Addproc.Parameters.Add(new SqlParameter("@title ", SqlDbType.VarChar)).Value =title;
                Addproc.Parameters.Add(new SqlParameter("@pubDate ", SqlDbType.DateTime)).Value = pubDate;
                Addproc.Parameters.Add(new SqlParameter("@host ", SqlDbType.VarChar)).Value = hosted;
                Addproc.Parameters.Add(new SqlParameter("@place", SqlDbType.VarChar)).Value=placed;
               
                if (accepted.Checked == true)
                {
                    Addproc.Parameters.Add(new SqlParameter("@accepted ", SqlDbType.Bit)).Value = true;
                }
                else if (accepted.Checked== false)
                {
                    Addproc.Parameters.Add(new SqlParameter("@accepted", SqlDbType.Bit)).Value = false;
                }
                conn.Open();
                Addproc.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script language=javascript>alert('Added successfully');</script>");

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
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