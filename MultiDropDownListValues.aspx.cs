using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class MultiDropDownListValues : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            String conn = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select City,POSTAL_CODE from Customer", con);
            SqlCommand cmd2 = new SqlCommand("Select EMP_ID,FIRST_NAME from EMPLOYEE", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "City";
            DropDownList1.DataValueField = "POSTAL_CODE";
            DropDownList1.DataBind();
            reader.Close();

            SqlDataReader reader1 = cmd2.ExecuteReader();
            DropDownList2.DataSource = reader1;
            DropDownList2.DataTextField = "EMP_ID";
            DropDownList2.DataValueField = "FIRST_NAME";
            DropDownList2.DataBind();
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "If Your City is <b>" + DropDownList1.SelectedItem + "</b> Then Postal Code is <b>" + DropDownList1.SelectedValue + "</b>";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = "If Your Empolyee Id is <b>" + DropDownList2.SelectedItem + "</b> Then Your Name is <b>" + DropDownList2.SelectedValue + "</b>";
    }
}