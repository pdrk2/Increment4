using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;
using System.Data.SqlClient;

namespace ASE_Project
{
    public partial class order_address : System.Web.UI.Page
    {
        protected void Calendar1_SelectionChanged(object sender,
                                          EventArgs e)
        {
            lblday.Text = Calendar1.TodaysDate.ToShortDateString();
            lblbday.Text = Calendar1.SelectedDate.ToShortDateString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            order_details.order r = new order_details.order();
            string street1 = street.Text;
            string city1 = city.Text;
            string email1 = email.Text;
            string state1 = state.Text;
            string phone1 = phone.Text;
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string date1 = lblbday.Text;
            string email2 = "";

           /* int x = r.address_insert(street1,email1, city1, state1, phone1, id,date1);*/
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn4.Open();
            string yDate = Convert.ToDateTime(date1).ToString("MM-dd-yyyy");
            //SqlCommand cmd1 = new SqlCommand("UPDATE order_details SET street = '" + street + "', city = '" + city + "', state = '" + state + "', phone = '" + phone + "' where id = " + id + ")", conn);
            SqlCommand cmd1 = new SqlCommand("UPDATE order_details SET email = '" + email1 + "', street = '" + street1 + "', city = '" + city1 + "', state = '" + state1 + "' , phone = '" + phone1 + "', date = '" + yDate + "' where id = '" + id + "'", conn4);
            int x = cmd1.ExecuteNonQuery();

               
            string main_name = Session["main_name"].ToString();
           // string res_id = Session["mail_res"].ToString();
            string ven_id = Session["vn"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            string[] b = new string[10];
           // string main_vname = Session["main_vname"].ToString();
            SqlCommand cmd = new SqlCommand("select * from vendor where vname='" + ven_id + "' ", conn);
            SqlDataReader f = cmd.ExecuteReader();


            while (f.Read())
            {

                email2 = f["vemail"].ToString();

            }
            if (x != 0)
            {
                Label1.Visible = true;
                //Label1.Text = "Success";
               
                //Email to User
                string message1 = "Your Order has been successfully Placed.";

                var fromAddress = new MailAddress("occasionsOnTheGo@gmail.com", "Occasions on the Go");
                var toAddress = new MailAddress(email1, "To Name");
                const string fromPassword = "aseproject";
                const string subject = "Your Order Confirmation from Occasions On The Go";
                string body = message1;

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
                    Timeout = 20000
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }
                //Email to Vendor

                string message2 = "A new Order has been placed. Please Login to your profile to process the order";

                var fromAddress1 = new MailAddress("occasionsOnTheGo@gmail.com", "Occasions on the Go");
                var toAddress1 = new MailAddress(email2, "To Name");
                const string fromPassword1 = "aseproject";
                const string subject1 = "New order from Occasions on the Go";
                string body1 = message2;

                var smtp1 = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential(fromAddress1.Address, fromPassword1),
                    Timeout = 20000
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject1,
                    Body = body1
                })
                {
                    smtp.Send(message);
                }

                Response.Redirect("order_success.aspx");
                cmd1.Dispose();
                conn4.Close();
            
            }
            else if (x == 0)
            {
                Label1.Visible = true;
                Label1.Text = "Placing order failed !! Please retry after sometime !!";
            }


            cmd.Dispose();
            conn.Close();
            
            
            //Response.Redirect("order_success.aspx");



        }
    }
}