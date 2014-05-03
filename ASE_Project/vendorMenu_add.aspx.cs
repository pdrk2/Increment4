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
    public partial class vendorMenu_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string main_vname = Session["main_vname"].ToString();
            /*
            vendormenus.vendor_menus r2 = new vendormenus.vendor_menus();
            int status = r2.item_add(name.Text, price.Text, type.Text, desc.Text, main_vname);
             */
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd1 = new SqlCommand("insert into item_menus values('" + name.Text + "','" + price.Text + "','" + type.Text + "','" + desc.Text + "','" + main_vname + "')", conn);
            int status=cmd1.ExecuteNonQuery();

               
            if (status == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Item Added Successfully";

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Please do try again";
            }
            cmd1.Dispose();
            conn.Close();
            
        }
    }
}