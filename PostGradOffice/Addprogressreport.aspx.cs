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
    public partial class Addprogressreport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand ViewThesis = new SqlCommand("ViewMyThesis", conn);
                ViewThesis.CommandType = CommandType.StoredProcedure;

                ViewThesis.Parameters.Add(new SqlParameter("@studentId", SqlDbType.VarChar)).Value = Session["user"];
                conn.Open();
                SqlDataReader rdr = ViewThesis.ExecuteReader(CommandBehavior.CloseConnection);
                while (rdr.Read())
                {
                    int serialnum = rdr.GetInt32(0);
                    ListItem Li = new ListItem();
                    Li.Text = serialnum + "";
                    DropDownList1.Items.Add(Li);
                }
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String prgrssnum = TextBox2.Text;
            String date = TextBox1.Text;
            String serialnum1 = DropDownList1.SelectedItem.Value;
          
            if (prgrssnum == "")
            {
                Response.Write("<script language=javascript>alert('please enter a progress report num');</script>");
            }
            if (DropDownList1.SelectedValue =="")
            {
                Response.Write("<script language=javascript>alert('select a thesis');</script>");
            }
            if (date == "")
            {
                Response.Write("<script language=javascript>alert('please choose date');</script>");
            }
            else if (prgrssnum != "" && DropDownList1.SelectedValue != "" && date == "") {
                int serialnum = Int16.Parse(serialnum1);
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand Addprogress = new SqlCommand("AddProgressReport", conn);
                Addprogress.CommandType = CommandType.StoredProcedure;
                Addprogress.Parameters.Add(new SqlParameter("@thesisSerialNo", SqlDbType.VarChar)).Value = serialnum;
                Addprogress.Parameters.Add(new SqlParameter("@progressReportDate", SqlDbType.Date)).Value = date;
                Addprogress.Parameters.Add(new SqlParameter("@studentID ", SqlDbType.VarChar)).Value = Session["user"];
                Addprogress.Parameters.Add(new SqlParameter("@progressReportNo", SqlDbType.VarChar)).Value = Int16.Parse(prgrssnum);

                SqlParameter sucess = Addprogress.Parameters.Add("@Sucess", SqlDbType.Bit);
                sucess.Direction = System.Data.ParameterDirection.Output;
                conn.Open();
                Addprogress.ExecuteNonQuery();
                conn.Close();

                if (sucess.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Added successfully');</script>");
        
                    
                }
                else if (sucess.Value.ToString() == "False")
                {
                    Response.Write("<script language=javascript>alert('Add correct progress report number');</script>");
                }



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["type"].ToString() == "0")
            {
                Response.Redirect("student.aspx");
            }
            else if (Session["type"].ToString() == "4")
            {
                Response.Redirect("NonGucian.aspx");

            }
        }
    }
}