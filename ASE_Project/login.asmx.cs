using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;

namespace ASE_Project
{
    /// <summary>
    /// Summary description for login1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class login1 : System.Web.Services.WebService
    {

        [WebMethod]
        public int user_login_check(string name, string password, int type)
        {
            try
            {


                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                //Declare the sql command
                string table = null;
                if (type == 0)
                {
                    table = "registration";
                    SqlCommand cmd1 = new SqlCommand("select count(*) from " + table + " where name = '" + name + "' and password= '" + password + "'", conn);
                    int validation = Convert.ToInt16(cmd1.ExecuteScalar());
                    if (validation != 0)
                    {
                        return 1;
                    }
                    else
                    {
                        return 0;
                    }
                    cmd1.Dispose();
                    conn.Close();
                }
                else
                {
                    table = "vendor";
                    SqlCommand cmd1 = new SqlCommand("select count(*) from " + table + " where vname = '" + name + "' and vpassword= '" + password + "'", conn);
                    int validation = Convert.ToInt16(cmd1.ExecuteScalar());
                    if (validation != 0)
                    {
                        return 1;
                    }
                    else
                    {
                        return 0;
                    }
                    cmd1.Dispose();
                    conn.Close();
                }




               
                
            }
            catch (Exception e)
            {
                return -1;
            }
        }
        [WebMethod]
        public int user_reg(string name, string email, string password, string contact_no, string zipcode)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                int result = 0;
                //Declare the sql command
                SqlCommand cmd2 = new SqlCommand("select count(*) from registration where email='" + email + "'", conn);
                result = Convert.ToInt16(cmd2.ExecuteScalar());
                if (result == 0)
                {

                    SqlCommand cmd1 = new SqlCommand("insert into registration values('" + name + "','" + email + "','" + password + "','" + contact_no + "','" + zipcode + "')", conn);
                    cmd1.ExecuteNonQuery();

                    cmd1.Dispose();
                    return 1;
                }
                else
                {
                    return -1;
                }

                cmd2.Dispose();
                conn.Close();
            }
            catch (Exception e)
            {
                return 0;
            }
        }

        [WebMethod]
        public int vendor_reg(string name, string email, string password, string contact_no, string zipcode, string street, string city, string time, string cat1)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                conn.Open();

                SqlCommand cmd = new SqlCommand("INSERT INTO vendor values('" + name + "','" + email + "','" + password + "','" + contact_no + "','" + zipcode + "','" + street + "','" + city + "','" + time + "','" + cat1 + "')", conn);
                int a = cmd.ExecuteNonQuery();

                if (a == 1)
                {
                    return 1;
                }
                else
                {
                    return -1;
                }
            }
            catch (Exception e)
            {
                return 0;
            }


        }
        [WebMethod]
        public string[] user_retrieve(string name)
        {
            string[] a = new string[10];
            try
            {

                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                //Declare the sql command

                SqlCommand cmd1 = new SqlCommand("select * from registration where name='" + name + "'", conn);
                SqlDataReader reader = cmd1.ExecuteReader();



                while (reader.Read())
                {
                    a[0] = reader["name"].ToString();
                    a[1] = reader["email"].ToString();
                    a[2] = reader["contactno"].ToString();
                    a[3] = reader["zipcode"].ToString();
                    
                }


                cmd1.Dispose();
                conn.Close();
                return a;
            }
            catch (Exception e)
            {
                a[0] = "exception";
                return a;
            }
        }

        

        [WebMethod]
        public string[] vendor_retrieve(string name)
        {
            string[] a = new string[10];
            try
            {

                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn.Open();
                //Declare the sql command

                SqlCommand cmd1 = new SqlCommand("select * from vendor where vname ='" + name + "' ", conn);
                SqlDataReader reader = cmd1.ExecuteReader();



                while (reader.Read())
                {
                    a[0] = reader["vname"].ToString();
                    a[2] = reader["vemail"].ToString();
                    a[3] = reader["vcontactno"].ToString();
                    a[1] = reader["vzipcode"].ToString();
                    a[4] = reader["vstreet"].ToString();
                    a[5] = reader["vcity"].ToString();
                    a[6] = reader["vtime"].ToString();
                    a[7] = reader["vservice"].ToString();

                }


                cmd1.Dispose();
                conn.Close();
                return a;
            }
            catch (Exception e)
            {
                a[0] = "exception";
                return a;
            }
        }
        [WebMethod]
        public ArrayList vendor_try(string user_id)
        {
            ArrayList b = new ArrayList();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn.Open();

                SqlCommand cmd2 = new SqlCommand("select * from vendor where vname = '" + user_id + "'", conn);

                SqlDataReader reader = cmd2.ExecuteReader();

                int i = 0;
                while (reader.Read())
                {
                    string a;
                    a = reader["vname"].ToString();
                    a = a + '^';
                    a = a + reader["vzipcode"].ToString();
                    a = a + '^';
                    a = a + reader["vemail"].ToString();
                    a = a + '^';
                    a = a + reader["vcontactno"].ToString();
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

    }
}
