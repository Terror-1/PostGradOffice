using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class cancelthesis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void enter_Click(object sender, EventArgs e)
        {
            //Check
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            if (serialno.Text == "") {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else
            {
                int thesisSerialNo = Int16.Parse(serialno.Text);

                SqlCommand CancelThesis = new SqlCommand("CancelThesis", conn);
                CancelThesis.CommandType = CommandType.StoredProcedure;

                CancelThesis.Parameters.Add(new SqlParameter("@ThesisSerialNo", SqlDbType.VarChar)).Value = thesisSerialNo;
                SqlParameter success = CancelThesis.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = System.Data.ParameterDirection.Output;

                SqlParameter success1 = CancelThesis.Parameters.Add("@success1", SqlDbType.Bit);
                success1.Direction = System.Data.ParameterDirection.Output;
                conn.Open();
                CancelThesis.ExecuteNonQuery();
                conn.Close();

                if (success.Value.ToString() == "True")
                {
                    if (success1.Value.ToString() == "True")
                    {
                        Response.Write("Thesis Cancled successfully");
                    }
                    else
                    {
                        Response.Write("Thesis still legal");
                    }
                }
                else
                {
                    Response.Write("Invalid thesis serial number");
                }
            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Supervisor.aspx");
        }
    }
}