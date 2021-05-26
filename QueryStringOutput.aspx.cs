using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryStringOutput : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            byte[] decodename = Convert.FromBase64String(Request.QueryString["UserId"]);
            byte[] decodepass = Convert.FromBase64String(Request.QueryString["Password"]);
            Label1.Text = Encoding.UTF8.GetString(decodename);
            Label2.Text = Encoding.UTF8.GetString(decodepass);

            //    Label1.Text =  Request.QueryString["UserId"];
            //    Label2.Text = Request.QueryString["Password"];
        }
    }
}