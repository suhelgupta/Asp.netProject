using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class MultiDropDownListControls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            String conn = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select City from Customer", con);
            SqlCommand cmd2 = new SqlCommand("Select MOBILE_NO from Customer", con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "City";
            DropDownList1.DataBind();
            reader.Close();

            SqlDataReader reader2 = cmd2.ExecuteReader();
            DropDownList2.DataSource = reader2;
            DropDownList2.DataTextField = "MOBILE_NO";
            DropDownList2.DataBind();


            reader2.Close();
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "The City You Have Selected Is " + DropDownList1.SelectedValue;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label2.Text = "The Number You Have Selected Is " + DropDownList2.SelectedValue;
    }
}