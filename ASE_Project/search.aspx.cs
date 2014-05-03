using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;


namespace ASE_Project
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string searchtext = null;

            if (Session["searcht"] != null)
            {
                searchtext = Session["searcht"].ToString();

               /* itemfind.find s1 = new itemfind.find();
                ArrayList a = new ArrayList(s1.searchresults(searchtext));*/
                ArrayList b = new ArrayList();
              
           
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * from vendor where vcity LIKE '%" + searchtext + "%' OR vzipcode LIKE '%" + searchtext + "%' OR vname LIKE '%" + searchtext + "%' OR vstreet LIKE '%" + searchtext + "%' OR vname IN (SELECT vendor_name from item_menus where item_name LIKE '%" + searchtext + "%') ", conn);

                SqlDataReader reader = cmd.ExecuteReader();
                string a = "no rows";
                while (reader.Read())
                {

                    a = reader["vname"].ToString();
                    a = a + '^';
                    a = a + reader["vcontactno"].ToString();
                    a = a + '^';
                    a = a + reader["vstreet"].ToString();
                    a = a + '^';
                    a = a + reader["vcity"].ToString();
                    a = a + '^';
                    a = a + reader["vzipcode"].ToString();
                    a = a + '^';

                    a = a + reader["vservice"].ToString();
                    a = a + '^';
                    a = a + reader["vtime"].ToString();
                    a = a + '^';
                    a = a + reader["vemail"].ToString();
                    b.Add(a);
                }
            



                dis.Text = "Search Results for :  " + searchtext;
                string[,] data = new string[100, 10];
                int iterator = 0;

                foreach (string c in b)
                {
                    string[] row = c.Split('^');
                    data[iterator, 0] = row[0];
                    data[iterator, 1] = row[1];
                    data[iterator, 2] = row[2];
                    data[iterator, 3] = row[3];
                    data[iterator, 4] = row[4];
                    data[iterator, 5] = row[5];
                    data[iterator, 6] = row[6];
                    data[iterator, 7] = row[7];


                    iterator++;
                }

                DataTable newsDataTable = new DataTable();

                // add some columns to our datatable
                newsDataTable.Columns.Add("vname");
                newsDataTable.Columns.Add("vcontactno");
                newsDataTable.Columns.Add("vstreet");
                newsDataTable.Columns.Add("vcity");
                newsDataTable.Columns.Add("vzipcode");
                newsDataTable.Columns.Add("vservice");
                newsDataTable.Columns.Add("vtime");
                newsDataTable.Columns.Add("vemail");

                // adding new rows
                for (int i = 0; i < iterator; i++)
                {
                    DataRow newsDataRow = newsDataTable.NewRow();
                    newsDataRow["vname"] = data[i, 0];
                    newsDataRow["vcontactno"] = data[i, 1];
                    newsDataRow["vstreet"] = data[i, 2];
                    newsDataRow["vcity"] = data[i, 3];
                    newsDataRow["vzipcode"] = data[i, 4];
                    newsDataRow["vservice"] = data[i, 7];
                    newsDataRow["vtime"] = data[i, 8];
                    newsDataRow["vemail"] = data[i, 9];
                    newsDataTable.Rows.Add(newsDataRow);
                }

                // bind our datatable to our repeater
                searchrepeat.DataSource = newsDataTable;
                searchrepeat.DataBind();
                if (iterator != 0)
                {
                }
                else
                {
                    dis.Text = "No Results for:  " + searchtext;
                }
                cmd.Dispose();
                conn.Close();
            }
            else
            {
                dis.Text = "no results";
            }
            

        }
        protected void searchrepeat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}