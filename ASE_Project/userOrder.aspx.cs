using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace ASE_Project
{
    public partial class userOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userid = "";
            if (Session["main_name"] != null)
            {
                userid = Session["main_name"].ToString();
            }

            ArrayList b = new ArrayList();
         
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn.Open();

                SqlCommand cmd2 = new SqlCommand("select * from order_details where user_id = '" + userid + "'", conn);

                               SqlDataReader reader = cmd2.ExecuteReader();
                string a = "";
               
                while (reader.Read())
                {

                    a = reader["ven_id"].ToString();
                    a = a + "#";
                    a = a + reader["details"].ToString();
                    a = a + "#";
                    a = a + reader["total"].ToString();
                    a = a + "#";
                    string dat = reader["date"].ToString();
                    if (dat.Length > 10)
                    {
                        dat = dat.Substring(0, 10);
                    }
                    a = a + dat;
                    a = a + '#';
                    a = a + reader["id"].ToString();
                    b.Add(a);

                }


            /*order_details.order r = new order_details.order();

            ArrayList b = new ArrayList(r.usr_order(userid));*/
            ArrayList c = new ArrayList();
            c = (ArrayList)b;

            string[,] data = new string[100, 6];

            int iterator = 0;

            foreach (string d in c)
            {

                string[] row = d.Split('#');

                data[iterator, 0] = row[0];

                data[iterator, 1] = row[1];

                data[iterator, 2] = row[2];

                data[iterator, 3] = row[3];

                data[iterator, 4] = row[4];


                iterator++;

            }

            DataTable newsDataTable = new DataTable();

            // add some columns to our datatable

            newsDataTable.Columns.Add("ven_id");

            newsDataTable.Columns.Add("date");

            newsDataTable.Columns.Add("price");
            newsDataTable.Columns.Add("id");






            // adding new rows

            for (int i = 0; i < iterator; i++)
            {

                DataRow newsDataRow = newsDataTable.NewRow();

                newsDataRow["ven_id"] = data[i, 0];

                newsDataRow["price"] = data[i, 2];

                newsDataRow["date"] = data[i, 3];

                newsDataRow["id"] = data[i, 4];




                newsDataTable.Rows.Add(newsDataRow);

            }



            // bind our datatable to our repeater

            details.DataSource = newsDataTable;

            details.DataBind();
            cmd2.Dispose();
            conn.Close();

        }
    }
}