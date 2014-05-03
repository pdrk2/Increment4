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
    public partial class vendorMenu_Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string main_vname = Session["main_vname"].ToString();
            int x = Convert.ToInt32(Request.QueryString["id"]);

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from item_menus where vendor_name = '" + main_vname + "' and item_id = " + x, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                
                name.Text = reader["item_name"].ToString();
               
                price.Text = reader["item_price"].ToString();
                
                
                type.Text = reader["item_type"].ToString();
               
                desc.Text = reader["item_description"].ToString();
                
                      }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["id"]);

            string main_vname = Session["main_vname"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            string name1 = name.Text;
            string price1 = price.Text;
            string type1 = type.Text;
            string desc1 = desc.Text;
            SqlCommand cmd = new SqlCommand("update item_menus set item_name= '" + name1 + "', item_price = '" + price1 + "',item_description ='" + desc1 + "',item_type='" + type1 + "' where  vendor_name = '" + main_vname + "' and item_id = " + x, conn);
            int r = cmd.ExecuteNonQuery();

            
            if ( r != 0)
            {
                Label1.Visible = true;
                Label1.Text = " Update success !!";
                Response.Redirect("Menu_Display_Ven.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Failed to edit. Please check again !!";
            }
            cmd.Dispose();
            conn.Close();

        }
    }
}