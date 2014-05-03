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
    public partial class order_address_v : System.Web.UI.Page
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
                     
            Response.Redirect("order_success.aspx");
            
        }
    }
}