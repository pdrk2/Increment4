using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASE_Project
{
    public partial class FinalUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void search_bt_Click(object sender, EventArgs e)
        {
            string searchtext11 = TextBox1.Text;
            Session["searcht"] = searchtext11;

            Response.Redirect("search.aspx");
        }
    }
}