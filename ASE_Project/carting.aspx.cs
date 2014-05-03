using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;


namespace ASE_Project
{
    public partial class carting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string venid = Request.QueryString["id"];
            int vid = Convert.ToInt32(venid);
           /* itemfind.find s1 = new itemfind.find();
            ArrayList a = new ArrayList(s1.item_retrieve(vid));*/
            ArrayList c = new ArrayList();
            ArrayList b = new ArrayList();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * from item_menus where item_id = " + vid, conn);

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
            
            conn.Close();

         

            if (Session["menulist"] != null)
            {
                c = (ArrayList)(Session["menulist"]);
            }



            foreach (string ss in b)
            {

                c.Add(ss);

            }
            Session["menulist"] = c;


            if (!IsPostBack)
            {
                string prevPage = Request.UrlReferrer.ToString();
                Response.Redirect(prevPage);
            }
            cmd.Dispose();

            conn.Close();

        }
    }
}