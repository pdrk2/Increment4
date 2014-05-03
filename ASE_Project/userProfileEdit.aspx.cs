using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ASE_Project
{
    public partial class userProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void update_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
         
            string nam = Server.HtmlEncode(name.Text);
            string main_name = Session["main_name"].ToString();
            string zip= zipcode.Text;
            string con = contactno.Text;

            SqlCommand cmd = new SqlCommand("update registration set name ='"+ nam +"', zipcode='"+ zip +"', contactno='" +con +"' where name='" + main_name +"'", conn);
            int result = cmd.ExecuteNonQuery();

            if (result != 0)
            {
                status.Visible = true;
                status.Text = "Update success !!";

               //Server.Transfer("userProfile.aspx");
                
                Response.Redirect("userProfile.aspx");
            }
            else
            {

                status.Visible = true;
                status.Text = "Updating the Information Failed !!";
            }


            cmd.Dispose();
            conn.Close();
        }
    }
}