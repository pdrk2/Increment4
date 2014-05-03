using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Services;
using System.Data.SqlClient;

namespace ASE_Project
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void user_click(object sender, EventArgs e)
        {/*
           loginwebservice.login1 s1 = new loginwebservice.login1();
           int a = s1.user_login_check(name.Text, password.Text, 0);
           string name1 = name.Text;
           if (a == 1)
           {
               Label3.Visible = true;
               
              Session["main_name"] = name1;
              Label3.Text = "Login successful";
               Response.Redirect("userProfile.aspx");

           }
     else
           {
              Label3.Visible = true;
              Label3.Text = "Login Failed";
            }
          * */
            
            string name1 = name.Text;
          
            string password1 = password.Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name,password from registration where name='" + name1 + "' and password='" + password1 + "'" , conn);
            string CurrentName;
CurrentName = (string)cmd.ExecuteScalar();
            
             Label3.Visible = true;
             if (CurrentName != null)
         
            {
                Label3.Text = "Login successful";
                Session["main_name"] = name1;
                Response.Redirect("userProfile.aspx");
            }
            else
            {
                Label3.Text = "Login Failed! Please check the login name/password !";
            }
            cmd.Dispose();
            conn.Close(); 
        }
        protected void vendor_click(object sender, EventArgs e)
        {
            string name2 = name.Text;
          
            string password2 = password.Text;

           SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn3.Open();
            SqlCommand cmd = new SqlCommand("select vname,vpassword from vendor where vname='" + name2 + "' and vpassword='" + password2 + "'" , conn3);
              string CurrentName;
CurrentName = (string)cmd.ExecuteScalar();
            
             Label3.Visible = true;
             if (CurrentName != null)
         
            {
                
          /*
            loginwebservice.login1 s1 = new loginwebservice.login1();
            int a = s1.user_login_check(name.Text, password.Text, 1);
            string[] b = new string[10];
            if (a == 1)
            {*/
                Label3.Visible = true;
                Session["main_vname"] = name2;
                Label3.Text = "Login successful";
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                //Declare the sql command

                SqlCommand cmd1 = new SqlCommand("select * from vendor where vname ='" + name2 + "' ", conn);
                SqlDataReader reader = cmd1.ExecuteReader();
                string[] b = new string[10];
                while (reader.Read())
                {
                    b[0] = reader["vname"].ToString();
                    b[2] = reader["vemail"].ToString();
                    b[3] = reader["vcontactno"].ToString();
                    b[1] = reader["vzipcode"].ToString();
                    b[4] = reader["vstreet"].ToString();
                    b[5] = reader["vcity"].ToString();
                    b[6] = reader["vtime"].ToString();
                    b[7] = reader["vservice"].ToString();

                }



                cmd1.Dispose();
                conn.Close();
                if (b[7] == "Catering" || b[7] == "Theme")
                {
                    Response.Redirect("vendorProfile.aspx");
                }
                else if (b[7] == "Venue")
                {
                    Response.Redirect("vp1.aspx");
                }
                else if (b[7] == "Photography")
                {
                    Response.Redirect("vp2.aspx");
                }
            }
            
            else
            {
                Label3.Text = "Login Failed! Please check the login name/password !";
            }
            cmd.Dispose();
            conn3.Close(); 

        }
    }
}