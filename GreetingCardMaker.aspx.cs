using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GreetingCardMaker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Set Color
            DropDownList1.Items.Add("White");
            DropDownList1.Items.Add("Red");
            DropDownList1.Items.Add("Green");
            DropDownList1.Items.Add("Blue");
            DropDownList1.Items.Add("Yellow");

            //set font
            DropDownList2.Items.Add("Times New Roman");
            DropDownList2.Items.Add("Arial");
            DropDownList2.Items.Add("Verdana");
            DropDownList2.Items.Add("Tahoma");

            //Adding the border style text
            ListItem item = new ListItem();
            item.Text = BorderStyle.None.ToString();
            item.Value = ((int)BorderStyle.None).ToString();
            RadioButtonList1.Items.Add(item);

            item = new ListItem();
            item.Text = BorderStyle.Double.ToString();
            item.Value = ((int)BorderStyle.Double).ToString();
            RadioButtonList1.Items.Add(item);

            item = new ListItem();
            item.Text = BorderStyle.Solid.ToString();
            item.Value = ((int)BorderStyle.Solid).ToString();
            RadioButtonList1.Items.Add(item);

            RadioButtonList1.SelectedIndex = 0;

            //Seating the image
            Image1.ImageUrl = "https://i.pinimg.com/originals/9c/b3/13/9cb313f218583f563625fe6e3d91a5b6.gif";
            Image1.Visible = false;



        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.BackColor = System.Drawing.Color.FromName(DropDownList1.SelectedItem.Text);
        Label1.Font.Name = DropDownList2.SelectedItem.Text;
        if (Int32.Parse(TextBox1.Text)>0)
        {
            Label1.Font.Size = FontUnit.Point(Int32.Parse(TextBox1.Text));
        }

        int borderValueb = Int32.Parse(RadioButtonList1.SelectedItem.Value);
        Panel1.BorderStyle = (BorderStyle)borderValueb;

        if(CheckBox1.Checked)
        {
            Image1.Visible = true;
        }
        else
        {
            Image1.Visible = false;
        }

        Label1.Text = TextBox2.Text;
    }
}