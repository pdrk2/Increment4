using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Text;
using System.Data.Odbc;

namespace ASE_Project
{
    public partial class vendorSales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ven_id = "";
            if (Session["main_vname"] != null)
            {
                ven_id = Session["main_vname"].ToString();
            }
            else
            {
                ven_id = "Plaza Catering";
            }

            int[] ab = new int[12];
           /* order_details.order r = new order_details.order();*/
            //Declare Connection by passing the connection string from the web config file
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            //Declare the sql command
            //string table = null;


            for (int i = 1; i < 13; i++)
            {

               
                SqlCommand cmd1 = new SqlCommand("select total from order_details where ven_id='" + ven_id + "' and DATEPART(mm,date) ='" + i + "'", conn);
                int validation = Convert.ToInt16(cmd1.ExecuteScalar());
                
                ab[i - 1] = validation;

            }


            StringBuilder xmlData = new StringBuilder();
            xmlData.Append("<chart bgImageAlpha='30' bgImage='img1.jpg'  canvasBgAlpha='0' caption='Monthly Order Sales' xAxisName='Month' yAxisName='Amount'>");
            xmlData.Append("<set label='Jan' value='" + ab[0] + "' />");
            xmlData.Append("<set label='Feb' value='" + ab[1] + "' />");
            xmlData.Append("<set label='Mar' value='" + ab[2] + "' />");
            xmlData.Append("<set label='Apr' value='" + ab[3] + "' />");
            xmlData.Append("<set label='May' value='" + ab[4] + "' />");
            xmlData.Append("<set label='Jun' value='" + ab[5] + "' />");
            xmlData.Append("<set label='Jul' value='" + ab[6] + "' />");
            xmlData.Append("<set label='Aug' value='" + ab[7] + "' />");
            xmlData.Append("<set label='Sep' value='" + ab[8] + "' />");
            xmlData.Append("<set label='Oct' value='" + ab[9] + "' />");
            xmlData.Append("<set label='Nov' value='" + ab[10] + "' />");
            xmlData.Append("<set label='Dec' value='" + ab[11] + "' />");
            xmlData.Append("</chart>");
            
            Literal1.Text = FusionCharts.RenderChart("js/Column3D.swf", "", xmlData.ToString(), "myNext", "500", "300", false, true);

        }
    }
}