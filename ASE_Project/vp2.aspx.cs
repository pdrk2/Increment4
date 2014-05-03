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
    public partial class vp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string main_vname = Session["main_vname"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command

            SqlCommand cmd1 = new SqlCommand("select * from vendor where vname ='" + main_vname + "' ", conn);
            SqlDataReader reader = cmd1.ExecuteReader();



            while (reader.Read())
            {
                name.Text = reader["vname"].ToString();
                email.Text= reader["vemail"].ToString();
                contact.Text = reader["vcontactno"].ToString();
                zipcode.Text = reader["vzipcode"].ToString();
                street.Text = reader["vstreet"].ToString();
                city.Text = reader["vcity"].ToString();
                time.Text = reader["vtime"].ToString();
                service.Text = reader["vservice"].ToString();

            }


            cmd1.Dispose();
            conn.Close();
                
        /*
            loginwebservice.login1 s1 = new loginwebservice.login1();
            string[] b = new string[10];
            //string emailid = Session["main_res"].ToString();
            string main_vname = Session["main_vname"].ToString();
            b = s1.vendor_retrieve(main_vname);

            name.Text = b[0];
            email.Text = b[1];
            contact.Text = b[2];
            zipcode.Text = b[3];
            street.Text = b[4];
            city.Text = b[5];
            time.Text = b[6];
            service.Text = b[7];

            /*
               SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            string[] b = new string[10];
            string main_vname = Session["main_vname"].ToString();
            SqlCommand cmd = new SqlCommand("select * from vendor where vname='" + main_vname + "' ", conn);
            SqlDataReader r = cmd.ExecuteReader();

       
        while (r.Read())
        {
            name.Text = r["vname"].ToString();
            contact.Text = r["vcontactno"].ToString();
            zipcode.Text = r["vzipcode"].ToString();
            email.Text = r["vemail"].ToString();
            city.Text = r["vcity"].ToString();
            street.Text = r["vstreet"].ToString();
            time.Text = r["vtime"].ToString();
      
      
        }
        cmd.Dispose();
        conn.Close();*/
        }
    }
}