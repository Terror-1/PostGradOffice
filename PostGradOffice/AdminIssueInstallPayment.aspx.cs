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

namespace DBproject
{
    public partial class installment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Confirm_click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString(); 
            SqlConnection conn = new SqlConnection(connStr);
            if (Payment.Text == "" | InstallStartDate.Text == "")
            {
                Response.Write("need input");
            }
            else
            {
                int paymentID = Int16.Parse(Payment.Text);
                DateTime startDate = DateTime.ParseExact(InstallStartDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture);
                SqlCommand addinstallproc = new SqlCommand("AdminIssueInstallPayment", conn);
                addinstallproc.CommandType = CommandType.StoredProcedure;
                addinstallproc.Parameters.Add(new SqlParameter("@paymentID", paymentID));
                addinstallproc.Parameters.Add(new SqlParameter("@InstallStartDate", startDate));
                SqlParameter success = addinstallproc.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;

                conn.Open();
                addinstallproc.ExecuteNonQuery();
                conn.Close();
                if(success.Value.ToString() == "True")
                {
                    Response.Write("Succeeded");
                }
                else
                {
                    Response.Write("Failed");
                }


            }
        }

        protected void pre_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}