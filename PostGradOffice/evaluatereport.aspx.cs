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
    public partial class evaluatereport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null){
                Response.Redirect("Login.aspx");
            }
        }

        protected void evaluate_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            int trial;
            if (serialno.Text == "" | progressno.Text == "" | eval.Text == "" )
            {
                Response.Write("<script language=javascript>alert('you should fill all the info ');</script>");  
            }
            else if (!int.TryParse(eval.Text,out trial))
            {
                Response.Write("<script language=javascript>alert('invalid input');</script>");
            }
            else if (Int16.Parse(eval.Text)>3 | Int16.Parse(eval.Text)<0)
            {
                Response.Write("<script language=javascript>alert('evaluation should be between 0 and 3 ');</script>");

            }
            else
            {
                int supervisorID = Int16.Parse(Session["user"].ToString());
                int thesisSerialNo = Int16.Parse(serialno.Text);
                int progressReportNo = Int16.Parse(progressno.Text);
                int evaluation = Int16.Parse(eval.Text);

                SqlCommand EvaluateProgressReport = new SqlCommand("EvaluateProgressReport", conn);
                EvaluateProgressReport.CommandType = CommandType.StoredProcedure;

                EvaluateProgressReport.Parameters.Add(new SqlParameter("@supervisorID", SqlDbType.VarChar)).Value = supervisorID;
                EvaluateProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo", SqlDbType.VarChar)).Value = thesisSerialNo;
                EvaluateProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", SqlDbType.VarChar)).Value = progressReportNo;
                EvaluateProgressReport.Parameters.Add(new SqlParameter("@evaluation", SqlDbType.VarChar)).Value = evaluation;
                SqlParameter success = EvaluateProgressReport.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = System.Data.ParameterDirection.Output;
                conn.Open();
                EvaluateProgressReport.ExecuteNonQuery();
                conn.Close();

                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Evaluation successeded');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Evaluation Failed');</script>");
                }
            }

        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Supervisor.aspx");
        }
    }
}