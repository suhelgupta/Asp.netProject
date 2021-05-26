using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LocalDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string skconn = ConfigurationManager.ConnectionStrings["Localdb"].ConnectionString;
        SqlConnection con = new SqlConnection(skconn);
        con.Open();
        SqlCommand cmd = new SqlCommand(TextBox1.Text, con);
        SqlDataReader reader = cmd.ExecuteReader();
        Label1.Text = "";
        if (TextBox1.Text.StartsWith("select") || TextBox1.Text.StartsWith("SELECT"))
        {
            //int row1 = 1;
            Label1.Text = "<table style='border:2px solid black;'>";
            while (reader.Read())
            {
                //Label1.Rows += row1;
                //Label1.Text += Environment.NewLine;
                Label1.Text += "<tr style='border:2px solid black;'>";
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    Label1.Text += "<td style='border:2px solid black; padding:10px 20px'>" + reader[i].ToString() + "</td>";
                    //Label1.Text += reader[i].ToString().PadRight(30).PadLeft(10);
                }
                Label1.Text += "</tr>";
            }
            Label1.Text += "</table>";
        }
        else
        {
            //Label1.Rows = 5;
            //Label1.Columns = 20;
            Label1.Text = "Query Executed Sucessfully";
        }

            reader.Close();
            con.Close();
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "SELECT * FROM studentdeatils;";
        Button2.Text = "Selected";
        Button3.Text = "Select This";
        Button4.Text = "Select This";
        Button5.Text = "Select This";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "INSERT INTO studentdeatils (roll,name,address,mobile) VALUES (value1, \'value2\', \'value3\', \'value4\');";
        Button2.Text = "Select This";
        Button3.Text = "Selected";
        Button4.Text = "Select This";
        Button5.Text = "Select This";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "UPDATE studentdeatils SET address = \'value1\', mobile = \'value2\',...... WHERE roll=value;";
        Button2.Text = "Select This";
        Button3.Text = "Select This";
        Button4.Text = "Selected";
        Button5.Text = "Select This";

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "DELETE FROM studentdeatils WHERE roll=value;";
        Button2.Text = "Select This";
        Button3.Text = "Select This";
        Button4.Text = "Select This";
        Button5.Text = "Selected";
    }
    
}
