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
    public partial class ListSup : System.Web.UI.Page
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
            else
            {


                string connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand admin_view_sup_list = new SqlCommand("AdminListSup", conn);
                admin_view_sup_list.CommandType = CommandType.StoredProcedure;
                conn.Open();
                admin_view_sup_list.ExecuteNonQuery();;
                SqlDataAdapter ad = new SqlDataAdapter(admin_view_sup_list);
                DataTable data = new DataTable();
                ad.Fill(data);
                GridView1.DataSource = data;
                GridView1.DataBind();
                conn.Close();
                
            }
        }
    }
}