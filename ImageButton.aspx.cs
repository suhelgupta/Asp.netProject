using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImageButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImgButton_ServerClick(Object sender, ImageClickEventArgs e)
    {
        Result.InnerText = "You clicked at (" + e.X.ToString() +
        ", " + e.Y.ToString() + "). ";
        if ((e.Y < 343) && (e.Y > 3) && (e.X > 3) && (e.X < 616))
        {
            Result.InnerText += "You clicked on the button surface.";
        }
        else
        {
            Result.InnerText += "You clicked the button border.";
        }
    }
}