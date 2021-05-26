using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected bool authenticate(String uname, String upass)
    {
        if (uname == "suhel")
        {
            if(upass == "suhel")
            {
                return true; 
            }
        }
        if (uname == "deepti")
        {
            if (upass == "deepti")
            {
                return true;
            }
        }
        if (uname == "deepti")
        {
            if (upass == "deepti")
            {
                return true;
            }
        }


        return false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (authenticate(TextBox1.Text, TextBox2.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            Session["Username"] = TextBox1.Text;
            Response.Redirect("Login2.aspx");
        }
        else
        {
            Label1.Text = "Invalid Username Or Password";
        }
    }
}