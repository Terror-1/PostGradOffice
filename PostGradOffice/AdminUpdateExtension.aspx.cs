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
    public partial class AdminUpdateExtension : System.Web.UI.Page
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
        protected void Confirm_update(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            if (ThesisSerialNumber.Text == "")
            {
                Response.Write("need thesis serial number");
            }
            else
            {
                int ThesisSerialNo = Int16.Parse(ThesisSerialNumber.Text);
                SqlCommand UpdateExt = new SqlCommand("AdminUpdateExtension", conn);
                UpdateExt.CommandType = CommandType.StoredProcedure;
                UpdateExt.Parameters.Add(new SqlParameter("@ThesisSerialNo", ThesisSerialNo));
                SqlParameter success = UpdateExt.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = ParameterDirection.Output;
                conn.Open();
                UpdateExt.ExecuteNonQuery();
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