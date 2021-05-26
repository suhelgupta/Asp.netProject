using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryString : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        byte[] EncodeName = Encoding.UTF8.GetBytes(TextBox1.Text);
        byte[] Encodepass = Encoding.UTF8.GetBytes(TextBox2.Text);
        Response.Redirect("QueryStringOutput.aspx?UserId=" + Convert.ToBase64String(EncodeName) + "&Password=" + Convert.ToBase64String(Encodepass));

        //Response.Redirect("QueryStringOutput.aspx?UserId=" + TextBox1.Text + "&Password=" + TextBox2.Text);
    }
}