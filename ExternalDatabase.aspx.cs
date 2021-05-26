using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExternalDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select ADDRESS ,CITY,STATE from CUSTOMER", con);
        SqlDataReader reader = cmd.ExecuteReader();
        //Label2.Text = "";
        //string s = "\t\t";
        //Label2.Text += s +"Address \t\t City \t\t State<br />";

        //while (reader.Read())
        //{
        //   Label2.Text += reader["ADDRESS"].ToString().PadLeft(15)+ reader["CITY"].ToString().PadLeft(15)+ reader["STATE"].ToString().PadLeft(15)+ "<br />";
        //}
        pre1.InnerHtml = "+--------------------------------------------------------------+<br>";
        pre1.InnerHtml += "|Address".PadRight(31) + "|" + "City".PadRight(15) + "|" + "State".PadRight(15) + "|" + "<br />";
        pre1.InnerHtml += "+--------------------------------------------------------------+<br>";
        while (reader.Read())
        {
            pre1.InnerHtml += "|"+reader["ADDRESS"].ToString().PadRight(30) + "|" + reader["CITY"].ToString().PadRight(15) + "|" + reader["STATE"].ToString().PadRight(15) + "|" + "<br />";
        }
        pre1.InnerHtml += "+--------------------------------------------------------------+<br>";
        reader.Close();
        con.Close();
    }

}