using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace ASE_Project
{
    /// <summary>
    /// Summary description for vendor_menus
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class vendor_menus : System.Web.Services.WebService
    {

        [WebMethod]
        public ArrayList menu_retrieve(string vendorName)
        {
            ArrayList b = new ArrayList();

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("select * from item_menus where vendor_name = '" + vendorName + "'", conn);

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
                return b;
                cmd.Dispose();
                conn.Close();

            }
            catch (Exception e)
            {

                b.Add("exception");
                return b;
            }
        }

        [WebMethod]
        public int item_add(string item_name, string item_price, string item_type, string item_desc, string main_vname)
        {
            try
            {
                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();

                SqlCommand cmd1 = new SqlCommand("insert into item_menus values('" + item_name + "','" + item_price + "','" + item_type + "','" + item_desc + "','" + main_vname + "')", conn);
                cmd1.ExecuteNonQuery();

                cmd1.Dispose();
                conn.Close();
                return 1;
            }
            catch (Exception e)
            {
                return 0;
            }
        }
        [WebMethod]
        public ArrayList vendor_service(string service)
        {
            ArrayList b = new ArrayList();
            try
            {
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


                return b;
                conn.Close();

            }
            catch (Exception e)
            {
                return b;
            }
        }

    }
}
