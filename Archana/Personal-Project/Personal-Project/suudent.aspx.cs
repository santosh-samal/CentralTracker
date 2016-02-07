
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseConnection
{
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnin_Click1(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;

            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            string id = txtid.Text;
            string nm = txtname.Text;
            string dept = txtdept.Text;
            string add = txtadd.Value;
            string gen = Rdgen.Text;



            string sql = "insert into stutd(Id,Name,Dept,Address,Gender) values ('" + id + "','" + nm + "','" + dept + "','" + add + "','" + gen + "')";

            try
            {

                SqlCommand cmd = new SqlCommand(sql, connect);
                cmd.ExecuteNonQuery();
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Insert Error:";
                msg += ex.Message;
            }
            finally
            {
                connect.Close();
            }
        }

        protected void btndl_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;

            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            String sql = "delete from stutd WHERE student_id =" + txtid.Text;

            try
            {
                SqlCommand cmd = new SqlCommand(sql, connect);
                cmd.ExecuteNonQuery();

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Delete Error:";
                msg += ex.Message;

            }
            finally
            {
                connect.Close();
            }

        }

        protected void btnup_Click(object sender, EventArgs e)
        {


        }

        protected void btnserch_Click(object sender, EventArgs e)
        {

        }
    }

}



