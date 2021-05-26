using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Write("Suhel Entered in Is Post");
            if (Request.Cookies["BackroundColor"] != null)
            {
                Response.Write("\n Suhel Entered In Cookiee");
                //Response.Write("cdvd   " + Request.Cookies["BackroundColor"].Value);
                DropDownList1.SelectedValue = Request.Cookies["BackroundColor"].Value;
                patentTag.Style["background-color"] = DropDownList1.SelectedValue;
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        patentTag.Style["background-color"] = DropDownList1.SelectedValue;
        HttpCookie cookie = new HttpCookie("BackroundColor");
        cookie.Value = DropDownList1.SelectedValue;
        cookie.Expires = DateTime.Now.AddSeconds(5);
        Response.Cookies.Add(cookie);
        Response.SetCookie(cookie);


    }
}