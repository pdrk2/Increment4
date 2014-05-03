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
    /// Summary description for order
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class order : System.Web.Services.WebService
    {

        [WebMethod]
        public int order_enter(string user_id, string ven_id, string details, int total)
        {
            try
            {
                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();

                //  SqlCommand cmd1 = new SqlCommand("insert into order_details (user_id,res_id,details,total,date) values('"+user_id + "'," +user_id + "',"+details +"',"+total +",' sysdate()')",conn);
                SqlCommand cmd1 = new SqlCommand("insert into order_details (user_id,ven_id,details,total) values('" + user_id + "','" + ven_id + "','" + details + "','" + total + "')", conn);
                int x = cmd1.ExecuteNonQuery();

                cmd1.Dispose();

                if (x != 0)
                {
                    SqlCommand cm = new SqlCommand("select id from order_details where user_id = '" + user_id + "' and ven_id='" + ven_id + "' and details = '" + details + "' and total = '" + total +"'", conn);
                    SqlDataReader red = cm.ExecuteReader();
                    int y = 0;
                    while (red.Read())
                    {

                        y = Convert.ToInt32(red["id"]);
                    }
                    return y;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception e)
            {
                return 0;
            }
        }
        [WebMethod]
        public int address_insert(string street, string city, string state, string email, string phone, int id, string date1)
        {
            try
            {
                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                string yDate = Convert.ToDateTime(date1).ToString("MM-dd-yyyy");
                //SqlCommand cmd1 = new SqlCommand("UPDATE order_details SET street = '" + street + "', city = '" + city + "', state = '" + state + "', phone = '" + phone + "' where id = " + id + ")", conn);
                SqlCommand cmd1 = new SqlCommand("UPDATE order_details SET email = '" + email + "', street = '" + street + "', city = '" + city + "', state = '" + state + "' , phone = '" + phone + "', date = '" + yDate + "' where id = '" + id + "'", conn);
                int x = cmd1.ExecuteNonQuery();

                cmd1.Dispose();
                conn.Close();
                if (x != 0)
                {
                    return 1;
                }

                else
                {
                    return 0;
                }
            }
            catch (Exception e)
            {
                return -1;
            }
        }
        [WebMethod]
        public ArrayList ven_order(string ven_id)
        {
            ArrayList b = new ArrayList();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn.Open();

                SqlCommand cmd2 = new SqlCommand("select * from order_details where ven_id = '" + ven_id + "'", conn);

                SqlDataReader reader = cmd2.ExecuteReader();

                int i = 0;
                while (reader.Read())
                {

                    string a;
                    a = reader["user_id"].ToString();
                    a = a + '#';
                    a = a + reader["details"].ToString();
                    a = a + '#';
                    a = a + reader["total"].ToString();
                    a = a + '#';
                    string date = reader["date"].ToString(); ;
                    if (date.Length > 10)
                    {
                        date = date.Substring(0, 10);
                    }
                    a = a + date;
                    a = a + '#';
                    a = a + reader["id"].ToString();

                    b.Add(a);

                }

                return b;
            }
            catch (Exception e)
            {
                b.Add("exception");
                return b;
            }
        }
        [WebMethod]
        public ArrayList usr_order(string usrid)
        {
            ArrayList b = new ArrayList();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn.Open();

                SqlCommand cmd2 = new SqlCommand("select * from order_details where user_id = '" + usrid + "'", conn);

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


                return b;
            }
            catch (Exception e)
            {

                b.Add("exception");
                return b;
            }
        }

        [WebMethod]
        public string order_details(int id1)
        {
            ArrayList b = new ArrayList();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn.Open();

                SqlCommand cmd2 = new SqlCommand("select * from order_details where id = " + id1, conn);

                SqlDataReader reader = cmd2.ExecuteReader();
                // int x = Convert.ToInt32(cmd2.ExecuteScalar());
                string a = "";
                int i = 0;
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

                return a;
                cmd2.Dispose();
            }
            catch (Exception e)
            {
                b.Add("exception");
                return "error";
            }

        }

        [WebMethod]
        public int chart_ven(int month, string ven_id)
        {
            try
            {


                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                //Declare the sql command
                //string table = null;

                SqlCommand cmd1 = new SqlCommand("select total from order_details where ven_id='" + ven_id + "' and DATEPART(mm,date) ='" + month +"'", conn);
                int validation = Convert.ToInt16(cmd1.ExecuteScalar());
                int x = validation;
                if( x != 0 )
                {
                    return x;
                } else
                {
                    return 2;
                }
               
                //return a;
                cmd1.Dispose();
                conn.Close();

            }
            catch (Exception)
            {
                return 3;
            }
        }

    }
}
