using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBproject
{
    public partial class thesis_payment : System.Web.UI.Page
    {
        protected void pre_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void Confirmthesis_click(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            if (thesisSerialNumber.Text == "" | amount.Text == "" | NoofInstallments.Text == "" | FundPercentage.Text == "")
            {
                Response.Write("need all inputs");
            }
            else
            {
                int ThesisSerialNumber = Int16.Parse(thesisSerialNumber.Text);
                Decimal Amount = Decimal.Parse(amount.Text);
                int noOfInstallments = Int16.Parse(NoofInstallments.Text);
                Decimal fundPercentage = Decimal.Parse(FundPercentage.Text);

                SqlCommand addinstallproc = new SqlCommand("AdminIssueThesisPayment", conn);
                addinstallproc.CommandType = CommandType.StoredProcedure;

                addinstallproc.Parameters.Add(new SqlParameter("@ThesisSerialNo", ThesisSerialNumber));
                addinstallproc.Parameters.Add(new SqlParameter("@amount", Amount));
                addinstallproc.Parameters.Add(new SqlParameter("@noOfInstallments", noOfInstallments));
                addinstallproc.Parameters.Add(new SqlParameter("@fundPercentage", fundPercentage));
                SqlParameter success = addinstallproc.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                addinstallproc.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "True")
                {
                    Response.Write("Succeeded");
                }
                else
                {
                    Response.Write("Failed");
                }
            }
        }
    }
}