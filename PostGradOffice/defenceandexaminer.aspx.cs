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

namespace WebApplication1
{
    public partial class defenceandexaminer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void AddDefense_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);
            String defenseLocation = location.Text;


            if (serialno.Text=="" | defensedate.Text == "" | defenseLocation == "")
            {
                Response.Write("<script language=javascript>alert('you shoud enter a correct info ');</script>");
            }
            else
            {
                int thesisSerialNo = Int16.Parse(serialno.Text);
                DateTime datedefese = DateTime.ParseExact(defensedate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture);
                
                SqlCommand addDefensegucian = new SqlCommand("AddDefenseGucian", conn);
                addDefensegucian.CommandType = CommandType.StoredProcedure;

                

                addDefensegucian.Parameters.Add(new SqlParameter("@ThesisSerialNo", SqlDbType.Int)).Value = thesisSerialNo;
                addDefensegucian.Parameters.Add(new SqlParameter("@DefenseDate", SqlDbType.DateTime)).Value = datedefese;
                addDefensegucian.Parameters.Add(new SqlParameter("@DefenseLocation", SqlDbType.VarChar)).Value = defenseLocation;
                SqlParameter success = addDefensegucian.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = System.Data.ParameterDirection.Output;

                SqlCommand addDefensenongucian = new SqlCommand("AddDefenseNonGucian", conn);
                addDefensenongucian.CommandType = CommandType.StoredProcedure;

                addDefensenongucian.Parameters.Add(new SqlParameter("@ThesisSerialNo", SqlDbType.Int)).Value = thesisSerialNo;
                addDefensenongucian.Parameters.Add(new SqlParameter("@DefenseDate", SqlDbType.DateTime)).Value = datedefese;
                addDefensenongucian.Parameters.Add(new SqlParameter("@DefenseLocation", SqlDbType.VarChar)).Value = defenseLocation;
                SqlParameter success1 = addDefensenongucian.Parameters.Add("@success", SqlDbType.Bit);
                success1.Direction = System.Data.ParameterDirection.Output;

                conn.Open();
                addDefensegucian.ExecuteNonQuery();
                addDefensenongucian.ExecuteNonQuery();
                conn.Close();
                
                if(success.Value.ToString()=="True" | success1.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Defense Added Succesfully');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('incrrocet info');</script>");
                }
                
            }
        }

        protected void AddExaminer_Click(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["PostGradOffice"].ToString();

            SqlConnection conn = new SqlConnection(connStr);

           
            if (serialno1.Text == "" | defensedate1.Text == "" | examinername.Text == ""|fieldofwork.Text==""|pass.Text=="")
            {
                Response.Write("<script language=javascript>alert('you shoud enter a correct info ');</script>");
            }
            else
            {
                String pass1 = pass.Text;
                int thesisSerialNo = Int16.Parse(serialno1.Text);
                DateTime datedefese = DateTime.ParseExact(defensedate1.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture);
                String examinerName = examinername.Text;
                String fieldOfWork = fieldofwork.Text;
                SqlCommand addExaminer = new SqlCommand("AddExaminer", conn);
                addExaminer.CommandType = CommandType.StoredProcedure;

                String type = "";
                if (Yes.Checked == true)
                {
                    type = "1";
                }
                else
                {
                    type = "0";
                }

                addExaminer.Parameters.Add(new SqlParameter("@ThesisSerialNo", SqlDbType.Int)).Value = thesisSerialNo;
                addExaminer.Parameters.Add(new SqlParameter("@DefenseDate", SqlDbType.DateTime)).Value = datedefese;
                addExaminer.Parameters.Add(new SqlParameter("@ExaminerName", SqlDbType.VarChar)).Value = examinerName;
                addExaminer.Parameters.Add(new SqlParameter("@fieldOfWork", SqlDbType.VarChar)).Value = fieldOfWork;
                addExaminer.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar)).Value = pass1;
                addExaminer.Parameters.Add(new SqlParameter("@National", type));
                SqlParameter success = addExaminer.Parameters.Add("@success", SqlDbType.Bit);
                success.Direction = System.Data.ParameterDirection.Output;

                conn.Open();
                addExaminer.ExecuteNonQuery();
                conn.Close();

                if (success.Value.ToString() == "True")
                {
                    Response.Write("<script language=javascript>alert('Added succesfully');</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Addittion failed');</script>");
                }

            }
        }

        protected void return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Supervisor.aspx");
        }

        
    }
}