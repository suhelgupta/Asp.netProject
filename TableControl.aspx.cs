using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TableControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl.BorderStyle = BorderStyle.Inset;
        tbl.BorderWidth = Unit.Pixel(1);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        tbl.Controls.Clear();
        int rows = Int32.Parse(Textrow.Text);
        int cols = Int32.Parse(Textcol.Text);
        if(rows == 0 & cols == 0)
        {
            Label1.Text = "You Have Entered (0,0) Please enter any positive number ";
        }
        else if(rows >= 0 & cols >= 0)
        {
            for(int i = 1; i<=rows; i++)
            {
                TableRow newrow = new TableRow();
                tbl.Controls.Add(newrow);
                for (int j = 1; j <= cols; j++)
                {
                    TableCell newcell = new TableCell();

                    newcell.Text = "Cell Number (" + i.ToString() + "," + j.ToString() + ")";

                    if(CheckBox1.Checked)
                    {
                        newcell.BorderStyle = BorderStyle.Inset;
                        newcell.BorderWidth = Unit.Pixel(5  );
                    }

                    newrow.Controls.Add(newcell);
                }
            }
            Label1.Text = "";
        }
        else
        {
            Label1.Text = "Please Enter Positive Numbers Only";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}