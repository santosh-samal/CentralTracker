using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows;

namespace Personal_Project
{
    public partial class Employe : System.Web.UI.Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string RetriveQuery = "select * from Employe";
            getsqldataadapt(RetriveQuery);
        }



        public void getsqldataadapt(string query)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            SqlDataAdapter da = new SqlDataAdapter(query,connect);         
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        
            
            connect.Close();
        }
        public void GetSqlCommand(string query)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connect;
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            connect.Close();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string insertQuery = "INSERT INTO [Student].[dbo].[Employe]([Emp_Id],[Emp_Name],[Emp_Addr],[Emp_Gender]) VALUES('" + txtId.Text + "','" + txtName.Text + "','" + txtAddr.Value + "','" + Rdgen.SelectedItem.Value + "')";
            GetSqlCommand(insertQuery);
            string RetriveQuery = "select * from Employe";
            getsqldataadapt(RetriveQuery);

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string updateQuery = "UPDATE [Employe] SET [Emp_Name] = '" + txtName.Text + "' WHERE Emp_Id='" + txtId.Text + "'";
            GetSqlCommand(updateQuery);

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string deletQuery = "delete Employe where Emp_Id=" + txtId.Text;
            GetSqlCommand(deletQuery);
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString;
            SqlConnection connect = new SqlConnection(connectionString);
            connect.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = connect;
            cmd.CommandText = "select * from Employe where Emp_Id=" + txtId.Text;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                txtId.Text = Convert.ToString(dr["Emp_Id"]);
                txtName.Text = Convert.ToString(dr["Emp_Name"]);
                txtAddr.Value = Convert.ToString(dr["Emp_Addr"]);
                Rdgen.Text = Convert.ToString(dr["Emp_Gender"]);

            }

            connect.Close();
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
    }
}


















