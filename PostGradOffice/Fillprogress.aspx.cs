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
    public partial class Fillprogress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null | Session["type"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (!Session["type"].ToString().Equals("0") & !Session["type"].ToString().Equals("4"))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void fill_Click(object sender, EventArgs e)
        {
            String sernum = serial.Text;
            String prgrss = prgrssnumm.Text;
            String sta = state.Text;
            String description = desc.Text;
            int x;
            int y;
            int z;
            bool parsable = int.TryParse(serial.Text, out x);
            bool parsable2 = int.TryParse(prgrssnumm.Text, out y);
            bool parsable3 = int.TryParse(state.Text, out z);

            if (sernum == "" || prgrss == "" || sta == "" || description == "")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else if (!parsable || !parsable2 || !parsable3)
            {
                Response.Write("<script language=javascript>alert('please enter a valid serialNumber and progressReport number and state');</script>");
            } 
            else
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand Fillproc = new SqlCommand("FillProgressReport", conn);
                Fillproc.CommandType = CommandType.StoredProcedure;
                Fillproc.Parameters.Add(new SqlParameter("@studentId", SqlDbType.VarChar)).Value = Session["user"];
                Fillproc.Parameters.Add(new SqlParameter("@thesisSerialNo", Int16.Parse(sernum)));
                Fillproc.Parameters.Add(new SqlParameter("@progressReportNo", Int16.Parse(prgrss)));
                Fillproc.Parameters.Add(new SqlParameter("@state", Int16.Parse(sta)));
                Fillproc.Parameters.Add(new SqlParameter("@description", SqlDbType.VarChar)).Value = description;

                SqlParameter sucess = Fillproc.Parameters.Add("@Sucess ", SqlDbType.Bit);
                sucess.Direction = System.Data.ParameterDirection.Output;

                conn.Open();
                Fillproc.ExecuteNonQuery();
                conn.Close();

                if (sucess.Value.ToString() == "True")
                {
                    Response.Write(("<script language=javascript>alert('Filled Successfully ');</script>"));

                }
                else if (sucess.Value.ToString() == "False")
                {
                    Response.Write(("<script language=javascript>alert('please enter a correct info ');</script>"));
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
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