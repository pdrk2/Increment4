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
    public partial class vendorDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string service = "Theme";

            if (service != null)
            {
               /* vendormenus.vendor_menus r1 = new vendormenus.vendor_menus();

                ArrayList a = new ArrayList(r1.vendor_service(service));*/
                ArrayList b = new ArrayList();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * from vendor where vservice like '%" + service + "%'", conn);

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
                newsDataTable.Columns.Add("vendor_name");
                newsDataTable.Columns.Add("contact_no");
                newsDataTable.Columns.Add("street");
                newsDataTable.Columns.Add("city");
                newsDataTable.Columns.Add("zipcode");
         
                newsDataTable.Columns.Add("vendor_service");
                
                newsDataTable.Columns.Add("officetimings");
                newsDataTable.Columns.Add("email");

                // adding new rows
                for (int i = 0; i < iterator; i++)
                {
                    DataRow newsDataRow = newsDataTable.NewRow();
                    newsDataRow["vendor_name"] = data[i, 0];
                    newsDataRow["contact_no"] = data[i, 1];
                    newsDataRow["street"] = data[i, 2];
                    newsDataRow["city"] = data[i, 3];
                    newsDataRow["zipcode"] = data[i, 4];
                    
                    newsDataRow["vendor_service"] = data[i, 5];
                    
                    newsDataRow["officetimings"] = data[i, 6];
                    newsDataRow["email"] = data[i, 7];
                    newsDataTable.Rows.Add(newsDataRow);
                }

                // bind our datatable to our repeater
                rescat.DataSource = newsDataTable;
                rescat.DataBind();


                if (iterator != 0)
                {
                }
                else
                {
                    dis.Text = "No Vendors";
                }
                cmd.Dispose();
                conn.Close();
            }
            else
            {
                dis.Visible = true;
                dis.Text = "No Vendors";
            }
        }
    }
}