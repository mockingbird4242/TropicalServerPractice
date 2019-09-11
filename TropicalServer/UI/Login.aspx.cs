using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TropicalServer.UI
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginUser(object sender, EventArgs e)
        {
            string connString = Convert.ToString(ConfigurationManager.AppSettings["TropicalServerConnectionString"]);
            SqlConnection connection = new SqlConnection(connString);
            connection.Open();
            DataSet ds = new DataSet();
            SqlCommand command = new SqlCommand("Select * from tblUserLogin where UserID ='" + useridtextbox.Text + "' and Password = '" + passwordtextbox.Text + "'", connection);
            //command.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(ds);
            connection.Close();
            if (ds.Tables[0].Rows.Count>0) {
                Response.Redirect("Products.aspx");
            }

        }
    }
}