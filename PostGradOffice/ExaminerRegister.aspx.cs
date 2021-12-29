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
    public partial class ExaminerRegister : System.Web.UI.Page
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
            String fieldof = FeildOfWork.Text;
            String pass = password.Text;
            String mail = email.Text;
            String isNat = "0";
            if (isNational.Checked == true)
            {
                isNat = "1";
            }
            if (first == "" | last == "" | fieldof == "" | pass == "" | mail == "")
            {
                Response.Write("<script language=javascript>alert('you shoud enter a correct info ');</script>");
            }
            else
            {
                SqlCommand ExaminerRegisterProc = new SqlCommand("ExaminerRegister", conn);
                ExaminerRegisterProc.CommandType = CommandType.StoredProcedure;

                ExaminerRegisterProc.Parameters.Add(new SqlParameter("@first_name", SqlDbType.VarChar)).Value = first;
                ExaminerRegisterProc.Parameters.Add(new SqlParameter("@last_name", SqlDbType.VarChar)).Value = last;
                ExaminerRegisterProc.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar)).Value = pass;
                ExaminerRegisterProc.Parameters.Add(new SqlParameter("@fieldOfWork", SqlDbType.VarChar)).Value = fieldof;
                ExaminerRegisterProc.Parameters.Add(new SqlParameter("@email", SqlDbType.VarChar)).Value = mail;
                ExaminerRegisterProc.Parameters.Add(new SqlParameter("@isNational", SqlDbType.VarChar)).Value = isNat;

                conn.Open();
                ExaminerRegisterProc.ExecuteNonQuery();
                conn.Close();


                Response.Redirect("Login.aspx");
            }

        }
    }
}