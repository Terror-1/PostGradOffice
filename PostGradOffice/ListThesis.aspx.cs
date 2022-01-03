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
    public partial class ListThesis : System.Web.UI.Page
    {
        protected void pre_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                SqlCommand view_thesis = new SqlCommand("AdminViewAllTheses", conn);
                view_thesis.CommandType = CommandType.StoredProcedure;

 
                SqlCommand view_ongoing_thesis = new SqlCommand("AdminViewOnGoingTheses", conn);
                view_ongoing_thesis.CommandType = CommandType.StoredProcedure;
                SqlParameter count1 = view_ongoing_thesis.Parameters.Add("@thesesCount", SqlDbType.Int);
                count1.Direction = System.Data.ParameterDirection.Output;

                conn.Open();
                view_ongoing_thesis.ExecuteNonQuery();
                view_thesis.ExecuteNonQuery();
                count.Text=count1.Value.ToString();
                SqlDataAdapter ad= new SqlDataAdapter(view_thesis);
                DataTable data = new DataTable();
                ad.Fill(data);
                GridView1.DataSource = data;
                GridView1.DataBind();
                conn.Close();

            }
            }
        }
}