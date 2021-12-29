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
    public partial class SupervisorRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);

            String first = FirstName.Text;
            String last = LastName.Text;
            String fac = Faculty.Text;
            String pass = password.Text;
            String mail = email.Text;
            if (first == "" | last == "" | fac == "" | pass == "" | mail == "" )
            {
                Response.Write("<script language=javascript>alert('you shoud enter a correct info ');</script>");
            }
            else
            {
                SqlCommand StudentRegisterProc = new SqlCommand("supervisorRegister", conn);
                StudentRegisterProc.CommandType = CommandType.StoredProcedure;

                StudentRegisterProc.Parameters.Add(new SqlParameter("@first_name", SqlDbType.VarChar)).Value = first;
                StudentRegisterProc.Parameters.Add(new SqlParameter("@last_name", SqlDbType.VarChar)).Value = last;
                StudentRegisterProc.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar)).Value = pass;
                StudentRegisterProc.Parameters.Add(new SqlParameter("@faculty", SqlDbType.VarChar)).Value = fac;
                StudentRegisterProc.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar)).Value = mail;
           
                conn.Open();
                StudentRegisterProc.ExecuteNonQuery();
                conn.Close();


                Response.Redirect("Login.aspx");
            }



        }
    }
}