using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ASE_Project
{
    public partial class photo_menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string main_vname = "";
            if (Session["main_vname"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

                main_vname = Session["main_vname"].ToString();
            }

            string[] f = new string[10];


            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command

            SqlCommand cmd1 = new SqlCommand("select * from photo where vname='" + main_vname + "'", conn);
            SqlDataReader reader = cmd1.ExecuteReader();



            while (reader.Read())
            {
                style.Text = reader["style"].ToString();
                package.Text = reader["package"].ToString();
                employee.Text = reader["employee"].ToString();
                album.Text = reader["album"].ToString();
                media.Text = reader["media"].ToString();
                insurance.Text = reader["insurance"].ToString();
                fee.Text = reader["fee"].ToString();

            }


            cmd1.Dispose();
            conn.Close();
        }
    }
}