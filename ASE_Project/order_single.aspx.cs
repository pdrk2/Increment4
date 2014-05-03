using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASE_Project
{
    public partial class order_single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);

            if (id == null)
            {
                id = 1;
            }
          /*  order_details.order r = new order_details.order();
            string res = r.order_details(id);*/
           // ArrayList b = new ArrayList();
         
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn.Open();

                SqlCommand cmd2 = new SqlCommand("select * from order_details where id = " + id, conn);

                SqlDataReader reader = cmd2.ExecuteReader();
                // int x = Convert.ToInt32(cmd2.ExecuteScalar());
                string a = "";
                //int i = 0;
                while (reader.Read())
                {

                    a = a + reader["user_id"].ToString();
                    a = a + '^';
                    a = a + reader["ven_id"].ToString();
                    a = a + '^';
                    a = a + reader["details"].ToString();
                    a = a + '^';
                    a = a + reader["total"].ToString();
                    a = a + '^';
                    a = a + reader["date"].ToString();
                    a = a + '^';
                    a = a + reader["street"].ToString();
                    a = a + '^';
                    a = a + reader["city"].ToString();
                    a = a + '^';
                    a = a + reader["state"].ToString();
                    a = a + '^';
                    a = a + reader["phone"].ToString();

                }

            string[] b = a.Split('^');

            string details = b[2];

            string price = b[3];

            string street = b[5];

            string city = b[6];

            string state = b[7];

            string phone = b[8];

            price1.Text = price;

            string[] each_details = details.Split('&');

            int len = each_details.Length;

            DataTable newsDataTable = new DataTable();

            // add some columns to our datatable
            newsDataTable.Columns.Add("item_name");
            newsDataTable.Columns.Add("price");

            for (int i = 0; i < len - 1; i++)
            {
                string[] each_single = each_details[i].Split(',');

                DataRow newsDataRow = newsDataTable.NewRow();
                newsDataRow["item_name"] = each_single[0];
                newsDataRow["price"] = each_single[1];

                newsDataTable.Rows.Add(newsDataRow);

            }

            //Binding data to repeater

            cart.DataSource = newsDataTable;
            cart.DataBind();

            /*  city1.Text = city;
              street1.Text = street;
              state1.Text = state;
              phone1.Text = phone;
             * /*/



        }
    }
}