using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Services;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ASE_Project
{
    public partial class registerUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
        protected void register_Click(object sender, EventArgs e)
        {
            /*
            loginwebservice.login1 s1 = new loginwebservice.login1();
            int a = s1.user_reg(name.Text, email.Text, password.Text, contactno.Text, zipcode.Text);

            if (a == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Registration successful";
                //Response.Redirect("login.aspx");
            }
            else if (a == -1)
            {
                Label1.Text = "Email already exists";
            }
            else
            {
                Label1.Text = "Registration failed";
            }
             */
            
            string name1 = name.Text;
            string email1 = email.Text;
            string password1 = password.Text;
            string contactno1 = contactno.Text;
            string zipcode1 = zipcode.Text;
            

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into registration (name,email,password,contactno,zipcode) values('" + name1 + "','" + email1 + "','" + password1 + "','" + contactno1 + "','" + zipcode1 + "')", conn);
            int result = cmd.ExecuteNonQuery();
            Label1.Visible = true;
            if (result != 0)
            {
                Label1.Text = "Registration successful";
               // Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = "Registration Failed";
            }
            cmd.Dispose();
            conn.Close();
             
                       
        }

        protected void cpassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}