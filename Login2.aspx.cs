using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Username"] != null)
        {
            Label1.Text = "<h1>Welcome " + Session["Username"].ToString() + "</h1>";
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("Login.aspx");
    }
}