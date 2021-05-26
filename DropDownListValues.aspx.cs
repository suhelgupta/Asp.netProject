using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class DropDownListValues : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            String conn = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select City,POSTAL_CODE from Customer", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "City";
            DropDownList1.DataValueField = "POSTAL_CODE";
            DropDownList1.DataBind();
            reader.Close();
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "If Your City is <b>"+DropDownList1.SelectedItem+ "</b> Then Postal Code is <b>" + DropDownList1.SelectedValue + "</b>";
    }
}