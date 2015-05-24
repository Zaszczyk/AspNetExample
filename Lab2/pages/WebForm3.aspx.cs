using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2.pages
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["ProductsConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(conStr);
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "SELECT * FROM Products";

            SqlDataReader reader;

            conn.Open();
            reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                GridView1.DataSource = reader;
                GridView1.DataBind();

                while (reader.Read())
                {

                    System.Diagnostics.Debug.WriteLine(reader["name"]);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String id = DropDownList1.Text;
            String name = TextBox1.Text;
            string conStr = ConfigurationManager.ConnectionStrings["ProductsConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(conStr);
            SqlCommand command = new SqlCommand();
            command.Connection = conn;
            command.CommandText = "UPDATE Products SET name='"+name+"' WHERE id="+id;

            SqlDataReader reader;

            conn.Open();
            command.ExecuteNonQuery();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }
    }
}