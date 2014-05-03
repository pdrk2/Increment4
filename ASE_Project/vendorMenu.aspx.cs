using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;


namespace ASE_Project
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* vendormenus.vendor_menus r1 = new vendormenus.vendor_menus();*/
            string main_vname = "";
            if (Session["main_vname"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {

                main_vname = Session["main_vname"].ToString();
            }

           /* ArrayList a = new ArrayList(r1.menu_retrieve(main_vname));*/
            ArrayList b = new ArrayList();

           

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select * from item_menus where vendor_name = '" + main_vname + "'", conn);

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                string a;
                a = reader["item_name"].ToString();
                a = a + '^';
                a = a + reader["item_price"].ToString();
                a = a + '^';
                a = a + reader["item_type"].ToString();
                a = a + '^';
                a = a + reader["item_description"].ToString();
                a = a + '^';
                a = a + reader["item_id"].ToString();
                b.Add(a);
            }
                
            string[,] data = new string[100, 7];
            int iterator = 0;
            foreach (string c in b)
            {
                string[] row = c.Split('^');
                data[iterator, 0] = row[0];
                data[iterator, 1] = row[1];
                data[iterator, 2] = row[2];
                data[iterator, 3] = row[3];
                data[iterator, 4] = row[4];
                iterator++;
            }

            DataTable newsDataTable = new DataTable();

            // add some columns to our datatable
            newsDataTable.Columns.Add("itemname");
            newsDataTable.Columns.Add("itemprice");
            newsDataTable.Columns.Add("itemtype");
            newsDataTable.Columns.Add("itemdesc");
            newsDataTable.Columns.Add("itemid");

            // adding new rows
            for (int i = 0; i < iterator; i++)
            {
                DataRow newsDataRow = newsDataTable.NewRow();
                newsDataRow["itemname"] = data[i, 0];
                newsDataRow["itemprice"] = data[i, 1];
                newsDataRow["itemtype"] = data[i, 2];
                newsDataRow["itemdesc"] = data[i, 3];
                newsDataRow["itemid"] = data[i, 4];
               

                newsDataTable.Rows.Add(newsDataRow);
            }

            // bind our datatable to our repeater
            menu.DataSource = newsDataTable;
            menu.DataBind();

            cmd.Dispose();
            conn.Close();

        }
    }
}