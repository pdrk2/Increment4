using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;


namespace ASE_Project
{
    public partial class shopping_cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList a = new ArrayList();
        
        if (Session["menulist"] != null)
        {
            
            a = (ArrayList)Session["menulist"];
            string[,] data = new string[100, 2];

            int iterator = 0;
            foreach (string s in a)
            {

                string[] b = s.Split('^');
                data[iterator, 0] = b[0];
                data[iterator, 1] = b[1];
                Session["vn"] = b[2];
                iterator++;
            }
            Label1.Text = iterator.ToString();

            DataTable newsDataTable = new DataTable();

            // add some columns to our datatable
            newsDataTable.Columns.Add("item_name");
            newsDataTable.Columns.Add("price");
           
            int total = 0;
            string details = ""; 
           
            // adding new rows
            for (int i = 0; i < iterator; i++)
            {
                DataRow newsDataRow = newsDataTable.NewRow();
                newsDataRow["item_name"] = data[i, 0];
                newsDataRow["price"] = data[i, 1];
                total = total + Convert.ToInt32(data[i, 1]); 
                newsDataTable.Rows.Add(newsDataRow);
               // total1.Visible = true;
                price.Visible = true;

                details = details + data[i,0]+','+data[i,1];
                details = details + '&';

            }

            
            //Binding data to repeater

            cart.DataSource = newsDataTable;
            cart.DataBind();
            price.Text = total.ToString();
            details = details + "^ " + total;
            details1.Text = details;
            
        }
        else {
            Label1.Text = "no results";
        }
    }
        protected void checkout_Click(object sender, EventArgs e)
        {
            int result = 0;
            string det = details1.Text;
            string main_user = Session["main_name"].ToString();
            string ven_id = Session["vn"].ToString();
            string tott = price.Text;
            int tot = Convert.ToInt32(tott);

            order_details.order r = new order_details.order();
            result = r.order_enter(main_user, ven_id, det, tot);
            if (result != 0)
            {
                Response.Redirect("order_address.aspx?id=" + result);

            }
            else
            {
                price.Text = "zero";
            }
            /*
            order_details.order r = new order_details.order();
            result = r.order_enter(main_user, ven_id, det, tot);*/
            //Declare Connection by passing the connection string from the web config file
            /*SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            //  SqlCommand cmd1 = new SqlCommand("insert into order_details (user_id,res_id,details,total,date) values('"+user_id + "'," +user_id + "',"+details +"',"+total +",' sysdate()')",conn);
            SqlCommand cmd1 = new SqlCommand("insert into order_details (user_id,ven_id,details,total) values('" + main_user + "','" + ven_id + "','" + det + "','" + tott + "')", conn);
            int x = cmd1.ExecuteNonQuery();

            int y = 0;
            if (x != 0)
            {
                SqlCommand cm = new SqlCommand("select id from order_details where user_id = '" + main_user + "' and ven_id='" + ven_id + "' and details = '" + det + "' and total = '" + tot + "'", conn);
                SqlDataReader red = cm.ExecuteReader();
               
                while (red.Read())
                {

                    y = Convert.ToInt32(red["id"]);
                }
                
            }

            if (y != 0)
            {
                Response.Redirect("order_address.aspx?id=" + y);

            }
            else
            {
                price.Text = "zero";
            }
            cmd1.Dispose();
            conn.Close();*/
        }

        }
    }
