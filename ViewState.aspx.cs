using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String str = "Suhel Gupta";
            if(ViewState["name"] == null)
            {
                ViewState["name"] = str;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = ViewState["name"].ToString();
    }
}