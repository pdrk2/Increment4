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
    public partial class vendorProfileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void update_click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            string vnam = Server.HtmlEncode(name.Text);
            string main_vname = Session["main_vname"].ToString();
            string vzip = zipcode.Text;
            string vcon = contactno.Text;
            string vcity = city.Text;
            string vstreet = street.Text;
            string vtime = officetiming.Text;

            SqlCommand cmd = new SqlCommand("update vendor set vname ='" + vnam + "', vzipcode='" + vzip + "', vcontactno='" + vcon + "', vcity='" + vcity + "', vstreet='" + vstreet + "', vtime='" + vtime + "' where vname='" + main_vname + "'", conn);
            int result = cmd.ExecuteNonQuery();

            if (result != 0)
            {
                status.Visible = true;
                status.Text = "Update success !!";
                //Server.Transfer("userProfile.aspx");

                //Response.Redirect("userProfile.aspx");
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