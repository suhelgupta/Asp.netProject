using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Selectfavprogram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.IsPostBack == false)
        {
            CheckBoxList1.Items.Add(" C");
            CheckBoxList1.Items.Add(" C++");
            CheckBoxList1.Items.Add(" Python");
            CheckBoxList1.Items.Add(" JAVA");
            CheckBoxList1.Items.Add(" JavaScript");
            CheckBoxList1.Items.Add(" C#");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "You chose:";
        //ListItem chitem;
        foreach(ListItem chitem in CheckBoxList1.Items)
        {
            if (chitem.Selected == true)
            {
                Label1.Text += "<br />" + chitem.Text;
            }
        }
        Label1.Text += "<br />";
    }
}