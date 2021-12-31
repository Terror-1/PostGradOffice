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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signin_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);

            
            String pass = Password.Text;
            if (pass == "" | id.Text == "")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else
            {
                String email = id.Text;
                SqlCommand loginProc = new SqlCommand("userLogin", conn);
                loginProc.CommandType = CommandType.StoredProcedure;

                loginProc.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar)).Value = email;
                loginProc.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar)).Value = pass;



                SqlParameter sucess = loginProc.Parameters.Add("@success", SqlDbType.Bit);
                sucess.Direction = System.Data.ParameterDirection.Output;
                SqlParameter type = loginProc.Parameters.Add("@type", SqlDbType.Int);
                type.Direction = System.Data.ParameterDirection.Output;
                SqlParameter id1 = loginProc.Parameters.Add("@id", SqlDbType.Int);
                id1.Direction = System.Data.ParameterDirection.Output;


                conn.Open();
                loginProc.ExecuteNonQuery();
                conn.Close();

                if (sucess.Value.ToString() == "True")
                {
                    Session["user"] = id1.Value.ToString();
                    Session["type"] = type.Value.ToString();
                    if (type.Value.ToString() == "0")
                    {
                        Response.Redirect("student.aspx");
                        
                    }
                    else if (type.Value.ToString() == "1")
                    {
                        Response.Write("Admin");
                    }
                    else if (type.Value.ToString() == "2")
                    {
                        Response.Write("Supervisor");
                    }
                    else if (type.Value.ToString() == "3")
                    {
                        Response.Redirect("Examiner Page.aspx");
                    }
                    else if (type.Value.ToString() == "4")
                    {
                        Response.Redirect("NonGucian.aspx");
                        
                    }

                }
                else if (sucess.Value.ToString() == "False")

                {
                    Response.Write("<script language=javascript>alert('you shoud enter a correct info ');</script>");
                }
            }

        }

        protected void signup_click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
                }
    }
}