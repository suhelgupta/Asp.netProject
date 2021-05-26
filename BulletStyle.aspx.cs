using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BulletStyle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack == false)
        {
            BulletedList1.Items.Add("NotSet");
            BulletedList1.Items.Add("Numbered");
            BulletedList1.Items.Add("LowerAlpha");
            BulletedList1.Items.Add("UpperAlpha");
            BulletedList1.Items.Add("LowerRoman");
            BulletedList1.Items.Add("UpperRoman");
            BulletedList1.Items.Add("Disc");
            BulletedList1.Items.Add("Circle");
            BulletedList1.Items.Add("Square");
            BulletedList1.Items.Add("CustomImage");
        }
    }

    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
        string itemText = BulletedList1.Items[e.Index].Text;
        Label1.Text = "You choose item " + itemText;
        if (itemText == "NotSet")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.NotSet;
        }
        else if(itemText == "Numbered")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.Numbered;
        }
        else if (itemText == "LowerAlpha")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.LowerAlpha;
        }
        else if (itemText == "UpperAlpha")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.UpperAlpha;
        }
        else if (itemText == "LowerRoman")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.LowerRoman;
        }
        else if (itemText == "UpperRoman")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.UpperRoman;
        }
        else if (itemText == "Disc")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.Disc;
        }
        else if (itemText == "Circle")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.Circle;
        }
        else if (itemText == "Square")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.Square;
        }
        else if (itemText == "CustomImage")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.CustomImage;
        }

    }
}