using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;
using SpeechLib;


namespace ASE_Project
{
    public partial class venue_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string v1 = "";
            v1 = Request.QueryString["vendor_name"];
            //Session["vn"] = Request.QueryString["vendor_name"];

            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

            string selectQuery = "SELECT vdesc from vendor WHERE vname = '" + v1 + "' ";

            SqlCommand cmd1 = new SqlCommand(selectQuery, conn1);
            SqlDataReader dataReader;
            conn1.Open();
            dataReader = cmd1.ExecuteReader();
            if (dataReader != null)
            {
                while (dataReader.Read())
                {

                    //Retrieving data vales from select query in variables
                    prathyusha.Text = dataReader["vdesc"].ToString();

                }
            }

            cmd1.Dispose();
            conn1.Close();
           
           
            string[] f = new string[10];
            

                //Declare Connection by passing the connection string from the web config file
                SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                //Open the connection
                conn2.Open();
                //Declare the sql command

                SqlCommand cmd2 = new SqlCommand("select * from venue where vname='" + v1 + "'", conn2);
                SqlDataReader reader = cmd2.ExecuteReader();



                while (reader.Read())
                {
                    services.Text = reader["services"].ToString();
                    capacity.Text = reader["capacity"].ToString();
                    category1.Text = reader["category"].ToString();
                    adevents.Text = reader["adevents"].ToString();
                    bar.Text = reader["bar"].ToString();
                    catering.Text = reader["catering"].ToString();
                    cake.Text = reader["cake"].ToString();
                    transport.Text = reader["transport"].ToString();
                    fee.Text = reader["fee"].ToString();

                }


                cmd2.Dispose();
                conn2.Close();

                try
                {

                    SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
                    //Open the connection
                    conn3.Open();
                    //Declare the sql command

                    SqlCommand cmd3 = new SqlCommand("select * from vendor where vname ='" + v1 + "' ", conn3);
                    SqlDataReader reader2 = cmd3.ExecuteReader();



                    while (reader2.Read())
                    {
                        name.Text = reader2["vname"].ToString();
                       // email.Text = reader["vemail"].ToString();
                         contact.Text= reader2["vcontactno"].ToString();
                        zipcode.Text = reader2["vzipcode"].ToString();
                        street.Text = reader2["vstreet"].ToString();
                        city.Text = reader2["vcity"].ToString();
                        timings.Text = reader2["vtime"].ToString();
                        service1.Text = reader2["vservice"].ToString();

                    }

                    /*
                    loginwebservice.login1 l1 = new loginwebservice.login1();
                    string[] a = l1.vendor_retrieve(v1);



                    name.Text = a[0];
                    contact.Text = a[3];
                    street.Text = a[4];
                    city.Text = a[5];
                    zipcode.Text = a[1];
                    service1.Text = a[7];
                    timings.Text = a[6];
                     * */
                    gimg.Text = "<a class='details' data-fancybox-type='iframe' href='http://maps.google.com/?output=embed&amp;f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=" + street.Text + "," + city.Text + "," + zipcode.Text + "'><img src='images/google-map.png'></a>";
                    /*
                    loginwebservice.login1 l2 = new loginwebservice.login1();

                    ArrayList b = new ArrayList(l2.vendor_try(v1));*/

                     ArrayList b = new ArrayList();
           
                SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);

                conn4.Open();

                SqlCommand cmd4 = new SqlCommand("select * from vendor where vname = '" + v1 + "'", conn4);

                SqlDataReader reader4 = cmd4.ExecuteReader();

                int i = 0;
                while (reader4.Read())
                {
                    string a;
                    a = reader4["vname"].ToString();
                    a = a + '^';
                    a = a + reader4["vzipcode"].ToString();
                    a = a + '^';
                    a = a + reader4["vemail"].ToString();
                    a = a + '^';
                    a = a + reader4["vcontactno"].ToString();
                    b.Add(a);

                }

                    ArrayList c = new ArrayList();


                    c = (ArrayList)b;

                    string[,] data = new string[100, 4];

                    int iterator = 0;

                    foreach (string d in c)
                    {

                        string[] row = d.Split('^');

                        data[iterator, 0] = row[0];

                        data[iterator, 1] = row[1];

                        data[iterator, 2] = row[2];

                        data[iterator, 3] = row[3];

                        iterator++;

                    }

                    DataTable newsDataTable = new DataTable();

                    // add some columns to our datatable

                    newsDataTable.Columns.Add("vname");

                    newsDataTable.Columns.Add("vzipcode");

                    newsDataTable.Columns.Add("vemail");
                    newsDataTable.Columns.Add("vcontactno");



                    // adding new rows

                    for (int j = 0; j < iterator; j++)
                    {

                        DataRow newsDataRow = newsDataTable.NewRow();

                        newsDataRow["vname"] = data[j, 0];

                        newsDataRow["vzipcode"] = data[j, 1];

                        newsDataRow["vemail"] = data[j, 2];

                        newsDataRow["vcontactno"] = data[j, 3];


                        newsDataTable.Rows.Add(newsDataRow);

                    }

                    //Label1.Text = "<a title='Send Mail to Restaurant' href='mailto:" + param1 + "'><img src ='images/email-to.png'></a>";

                    // bind our datatable to our repeater

                    category.DataSource = newsDataTable;

                    category.DataBind();


                    cmd3.Dispose();
                    conn3.Close();

                }
                catch (Exception e1)
                {
                    //error.Visible = true;
                    //error.Text = "error";
                    //int abc = 1;
                }
       
            }
        protected void checkout_Click(object sender, EventArgs e)
        {
          
           
            
            Session["smile"] = Request.QueryString["vendor_name"];
            
                Response.Redirect("order_address_v.aspx");

                      
        }

        protected void clickToSpeech_Click(object sender, EventArgs e)
        {
            SpVoice objspeech = new SpVoice();
            objspeech.Speak(prathyusha.Text.Trim(), SpeechVoiceSpeakFlags.SVSFDefault);
            objspeech.WaitUntilDone(System.Threading.Timeout.Infinite);
        } 
        }
    }
