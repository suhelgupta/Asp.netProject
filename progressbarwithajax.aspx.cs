using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class progressbarwithajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Retriving Current Date And Time...";
        System.Threading.Thread.Sleep(5000);
        Label1.Text = "Current Date and time is " + DateTime.Now.ToString();
    }
}