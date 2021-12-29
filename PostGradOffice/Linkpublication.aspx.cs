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
    public partial class Linkpublication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Return_Click(object sender, EventArgs e)
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

        protected void Link_Click(object sender, EventArgs e)
        {
            String ID = pub.Text;
            String sernum = serial.Text;

            if (ID == "" || sernum == "")
            {
                Response.Write("<script language=javascript>alert('please fill all the blanks');</script>");
            }
            else
            {
                String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand Linkproc = new SqlCommand("linkPubThesis", conn);
                Linkproc.CommandType = CommandType.StoredProcedure;
                Linkproc.Parameters.Add(new SqlParameter("@PubID", SqlDbType.Int)).Value = Int16.Parse(ID);
                Linkproc.Parameters.Add(new SqlParameter("@thesisSerialNo", SqlDbType.Int)).Value = Int16.Parse(sernum);
                Linkproc.Parameters.Add(new SqlParameter("@studentId", SqlDbType.VarChar)).Value = Session["user"];

                SqlParameter sucess = Linkproc.Parameters.Add("@Success", SqlDbType.Int);
                sucess.Direction = System.Data.ParameterDirection.Output;

                conn.Open();
                Linkproc.ExecuteNonQuery();
                conn.Close();

                if (sucess.Value.Equals(1))
                {
                    Response.Write("<script language=javascript>alert('Linked correctly');</script>");
                }
                else if (sucess.Value.Equals(0))
                {
                    Response.Write("<script language=javascript>alert('Link failed please enter a valid serialnumber or a valid publication Id');</script>");
                }
                else if (sucess.Value.Equals(2))
                {
                    Response.Write("<script language=javascript>alert('Linked Before');</script>");
                }
            }
            }
        }
    }
