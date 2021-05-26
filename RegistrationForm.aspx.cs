using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text += "First Name: " + TextBox1.Text + "<br />"; 
        Label1.Text += "Last Name: " + TextBox2.Text + "<br />";
        Label1.Text += "Age: " + TextBox3.Text.ToString() + "<br />";
        if (RadioButton1.Checked == true)
        {
            Label1.Text += "Gender: Male" + "<br />";
        }
        if (RadioButton2.Checked == true)
        {
            Label1.Text += "Gender: Female" + "<br />";
        }
        Label1.Text += "Email id: " + TextBox4.Text + "<br />";
        Label1.Text += "Mobile Number: " + TextBox5.Text + "<br />";

        Label1.Text += "Selected Languages are: " + "<br />";
        if (CheckBox1.Checked == true)
        {
            Label1.Text += CheckBox1.Text + "<br />";
        }
        if (CheckBox2.Checked == true)
        {
            Label1.Text += CheckBox2.Text + "<br />";
        }
        if (CheckBox3.Checked == true)
        {
            Label1.Text += CheckBox3.Text + "<br />";
        }
        if (CheckBox4.Checked == true)
        {
            Label1.Text += CheckBox4.Text + "<br />";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        Label1.Text = "";

    }

}