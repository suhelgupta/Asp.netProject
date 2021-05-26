using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DropDownListControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            String conn = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select City from Customer", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "City";
            DropDownList1.DataBind();
            reader.Close();
            con.Close();
        }
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "The City You Have Selected Is " + DropDownList1.SelectedValue;
        }
}