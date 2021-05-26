using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Text;
using System.Drawing;
using System.ComponentModel;
    
public partial class ImpoGreetingCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Set Color
            String[] colorarray = Enum.GetNames(typeof(KnownColor));
            DropDownList1.DataSource = colorarray;
            DropDownList1.DataBind();

            //Set Font Color
            String[] colorarray1 = Enum.GetNames(typeof(KnownColor));
            DropDownList3.DataSource = colorarray1;
            DropDownList3.DataBind();

            //setting up the  fonts
            InstalledFontCollection font = new InstalledFontCollection();
            foreach(FontFamily family in font.Families)
            {
                DropDownList2.Items.Add(family.Name);
            }

            //Adding the border style text
            String[] Borderstylearray = Enum.GetNames(typeof(BorderStyle));
            RadioButtonList1.DataSource = Borderstylearray;
            RadioButtonList1.DataBind();

            //TypeConverter converter = TypeDescriptor.GetConverter(typeof(BorderStyle));
            //Panel1.BorderStyle = (BorderStyle)converter.ConvertFromString(RadioButtonList1.SelectedItem.Text);

            //Seating the image
            Image1.ImageUrl = "https://i.pinimg.com/originals/9c/b3/13/9cb313f218583f563625fe6e3d91a5b6.gif";
            Image1.Visible = false;
            TextBox1.Text = "24";
            RadioButtonList1.SelectedIndex = 0;



        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        UpdateCard();
    }

    protected void ControlChanged(object sender, EventArgs e)
    {
        UpdateCard();
    }



    private void UpdateCard()
    {
        Panel1.BackColor = System.Drawing.Color.FromName(DropDownList1.SelectedItem.Text);
        Label1.Font.Name = DropDownList2.SelectedItem.Text;
        ColorConverter colConvert = new ColorConverter();
        Panel1.ForeColor = (Color)colConvert.ConvertFromString(DropDownList3.SelectedItem.Text);
        if (Int32.Parse(TextBox1.Text) > 0)
        {
            Label1.Font.Size = FontUnit.Point(Int32.Parse(TextBox1.Text));
        }
        //else
        //{
        //    TextBox1.Text = "24";
            
        //}

        TypeConverter converter = TypeDescriptor.GetConverter(typeof(BorderStyle));
        Panel1.BorderStyle = (BorderStyle)converter.ConvertFromString(RadioButtonList1.SelectedItem.Text);

        if (CheckBox1.Checked)
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