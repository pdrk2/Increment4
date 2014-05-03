using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASE_Project
{
    /// <summary>
    /// Summary description for find
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class find : System.Web.Services.WebService
    {

        [WebMethod]
        public ArrayList item_retrieve(int item_id)
        {

            ArrayList b = new ArrayList();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * from item_menus where item_id = " + item_id, conn);

                SqlDataReader reader = cmd.ExecuteReader();
                string a = "no rows";
                while (reader.Read())
                {

                    a = reader["item_name"].ToString();
                    a = a + '^';
                    a = a + reader["item_price"].ToString();
                    a = a + '^';
                    a = a + reader["vendor_name"].ToString();
                    b.Add(a);
                }
                cmd.Dispose();
                return b;
                conn.Close();

            }
            catch (Exception e)
            {
                return null;
            }
        }
        [WebMethod]
        public ArrayList searchresults(string searchven)
        {

            ArrayList b = new ArrayList();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();

                SqlCommand cmd = new SqlCommand("SELECT * from vendor where vcity LIKE '%" + searchven + "%' OR vzipcode LIKE '%" + searchven + "%' OR vname LIKE '%" + searchven + "%' OR vstreet LIKE '%" + searchven + "%' OR vname IN (SELECT vendor_name from item_menus where item_name LIKE '%" + searchven + "%') ", conn);

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
                cmd.Dispose();

                return b;
                conn.Close();

            }
            catch (Exception e)
            {
                return null;
            }
        }
    }
}
