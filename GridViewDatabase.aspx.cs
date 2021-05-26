using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class GridViewDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string[] tables = { "ACCOUNT", "ACC_TRANSACTION", "BRANCH", "BUSINESS", "CUSTOMER", "DEPARTMENT", "EMPLOYEE", "INDIVIDUAL", "OFFICER", "PRODUCT" };
            string[] name = { "Account", "Acount Transcation", "Branch", "Business", "Customer", "Department", "Empolyee", "Individual", "Officer", "Product" };
            DropDownList1.Items.Add(new ListItem(name[0],tables[0]));
            DropDownList1.Items.Add(new ListItem(name[1],tables[1]));
            DropDownList1.Items.Add(new ListItem(name[2],tables[2]));
            DropDownList1.Items.Add(new ListItem(name[3],tables[3]));
            DropDownList1.Items.Add(new ListItem(name[4],tables[4]));
            DropDownList1.Items.Add(new ListItem(name[5],tables[5]));
            DropDownList1.Items.Add(new ListItem(name[6],tables[6]));
            DropDownList1.Items.Add(new ListItem(name[7],tables[7]));
            DropDownList1.Items.Add(new ListItem(name[8],tables[8]));
            DropDownList1.Items.Add(new ListItem(name[9],tables[9]));
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ListItem item = DropDownList1.Items[DropDownList1.SelectedIndex];

        string constr = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand("Select * from "+item.Value, con);
        cmd.CommandType = CommandType.Text;
        da.SelectCommand = cmd;
        da.Fill(ds, "Suhel");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Text = "Show " + DropDownList1.SelectedItem + " Table";
    }
}