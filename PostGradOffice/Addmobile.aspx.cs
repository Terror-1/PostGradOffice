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
    public partial class Addmobile : System.Web.UI.Page
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

        protected void add_Click(object sender, EventArgs e)
        {
            String mob = mobile.Text;
            if (mob == "")
            {
                Response.Write("<script language=javascript>alert('please enter a mobile number');</script>");
            }
            else
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand addproc = new SqlCommand("addMobile", conn);
                addproc.CommandType = CommandType.StoredProcedure;
                addproc.Parameters.Add(new SqlParameter("@ID", SqlDbType.Int)).Value = Int16.Parse(Session["user"].ToString());
                addproc.Parameters.Add(new SqlParameter("@mobile_number", mob));
                SqlParameter sucess = addproc.Parameters.Add("@Success ", SqlDbType.Bit);
                sucess.Direction = System.Data.ParameterDirection.Output;

                conn.Open();
                addproc.ExecuteNonQuery();
                conn.Close();

                if (sucess.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Mobile number added successfully');</script>");
                }
                else if (sucess.Value.ToString() == "False")
                {
                    Response.Write("<script language=javascript>alert('Mobile number added Before');</script>");
                }
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
