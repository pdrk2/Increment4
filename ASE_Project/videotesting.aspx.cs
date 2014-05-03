using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace ASE_Project
{
    public partial class videotesting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
           // conn.Open();
           // int i=1;
           // SqlCommand cmd = new SqlCommand("select * from Table where id = '"+ i + "' ", conn);
           // SqlDataReader r = cmd.ExecuteReader();


           // while (r.Read())
            //{

               // movie.Src = "https://www.youtube.com/watch?v=8fJJ5nqEueg";

           // }
           //// cmd.Dispose();
           // conn.Close();

            //videoTag.Attributes["src"] = "https://www.youtube.com/watch?v=8fJJ5nqEueg";
        }
       
    }
}