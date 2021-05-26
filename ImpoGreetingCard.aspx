<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImpoGreetingCard.aspx.cs" Inherits="ImpoGreetingCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Improved Greeting Card Maker</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Style.css" />
    <style>
        .CodeAreaa {
            border: 2px solid red;
            border-radius: 20px;
            margin: 20px auto 20px auto;
            padding: 20px;
            width: 50%;
            overflow: auto;
            white-space: nowrap;
        }
        .Codearrr{
            border: 2px solid red;
            border-radius: 20px;
            margin: 20px auto 20px auto;
            padding: 20px;
            width: 50%;
        }
    </style>
</head>
<body>
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Improved Greeting Card Maker</h1>
    <div class="Codearrr">
        <form id="form1" runat="server">
            <div style="display:flex; flex-direction:row;">
                <asp:Panel ID="Panel2" runat="server" Width="30%" HorizontalAlign="Left" >
                    Choose a background color:<br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged"/><br /><br />
                    Choose a Font color:<br />
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged"/><br /><br />
                    Choose a font:<br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="194px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged"/><br /><br />
                    Specify a numeric font size:<br />
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged"></asp:TextBox><br /><br />
                    Choose a border style:<br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="168px" Height="59px" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged"/><br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Add a Default Picture" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged" /><br /><br />
                    Enter the greeting text below:<br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" AutoPostBack="True" OnSelectedIndexChanged="ControlChanged" Width="240px" Height="85px"></asp:TextBox><br /><br />
                    <asp:Button ID="Button1" runat="server" Text="Update" Width="71px" Height="24px" OnClick="Button1_Click" />
                </asp:Panel>
                <%--Here's The Card--%>
                <asp:Panel ID="Panel1" runat="server" CssClass="text-center" Width="70%" Height="900px" HorizontalAlign="Center" style="margin:auto; word-wrap: break-word;border-width:10px;">
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="" style="display:block; "></asp:Label> <br /><br /><br />
                    <asp:Image ID="Image1" runat="server" Height="275px" Width="275px" />
                </asp:Panel>
            </div>
        </form>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 20px auto 1px auto;">
        <button class="btn btn-danger" onclick="Toogle(a='Sourcecode')">Show/Hide Code</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="location.href='First.aspx'">Go to Main Page</button>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 1px auto 10px auto; display: none;" id="Sourcecode">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='Desinecode')">Show/Hide Design Part </button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='logiccode')">Show/Hide Logic Part</button>
    </div>
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotImpoGreetingCard.aspx.cs&quot Inherits=&quotImpoGreetingCard&quot %&gt;

&lt;!DOCTYPE html&gt;
&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div style=&quotdisplay:flex; flex-direction:row;&quot&gt;
            &lt;asp:Panel ID=&quotPanel2&quot runat=&quotserver&quot Width=&quot30%&quot HorizontalAlign=&quotLeft&quot &gt;
                Choose a background color:&lt;br /&gt;
                &lt;asp:DropDownList ID=&quotDropDownList1&quot runat=&quotserver&quot Width=&quot194px&quot Height=&quot22px&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot/&gt;&lt;br /&gt;&lt;br /&gt;
                Choose a Font color:&lt;br /&gt;
                &lt;asp:DropDownList ID=&quotDropDownList3&quot runat=&quotserver&quot Width=&quot194px&quot Height=&quot22px&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot/&gt;&lt;br /&gt;&lt;br /&gt;
                Choose a font:&lt;br /&gt;
                &lt;asp:DropDownList ID=&quotDropDownList2&quot runat=&quotserver&quot Width=&quot194px&quot Height=&quot22px&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot/&gt;&lt;br /&gt;&lt;br /&gt;
                Specify a numeric font size:&lt;br /&gt;
                &lt;asp:TextBox ID=&quotTextBox1&quot runat=&quotserver&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot&gt;&lt;/asp:TextBox&gt;&lt;br /&gt;&lt;br /&gt;
                Choose a border style:&lt;br /&gt;
                &lt;asp:RadioButtonList ID=&quotRadioButtonList1&quot runat=&quotserver&quot Width=&quot168px&quot Height=&quot59px&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot/&gt;&lt;br /&gt;
                &lt;asp:CheckBox ID=&quotCheckBox1&quot runat=&quotserver&quot Text=&quotAdd a Default Picture&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot /&gt;&lt;br /&gt;&lt;br /&gt;
                Enter the greeting text below:&lt;br /&gt;
                &lt;asp:TextBox ID=&quotTextBox2&quot runat=&quotserver&quot TextMode=&quotMultiLine&quot AutoPostBack=&quotTrue&quot OnSelectedIndexChanged=&quotControlChanged&quot Width=&quot240px&quot Height=&quot85px&quot&gt;&lt;/asp:TextBox&gt;&lt;br /&gt;&lt;br /&gt;
                &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotUpdate&quot Width=&quot71px&quot Height=&quot24px&quot OnClick=&quotButton1_Click&quot /&gt;
            &lt;/asp:Panel&gt;
            &lt;%--Here's The Card--%&gt;
            &lt;asp:Panel ID=&quotPanel1&quot runat=&quotserver&quot CssClass=&quottext-center&quot Width=&quot70%&quot Height=&quot900px&quot HorizontalAlign=&quotCenter&quot style=&quotmargin:auto; word-wrap: break-word;&quot&gt;
                &nbsp;
                &lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot Text=&quot&quot style=&quotdisplay:block; &quot&gt;&lt;/asp:Label&gt; &lt;br /&gt;&lt;br /&gt;&lt;br /&gt;
                &lt;asp:Image ID=&quotImage1&quot runat=&quotserver&quot Height=&quot275px&quot Width=&quot275px&quot /&gt;
            &lt;/asp:Panel&gt;
        &lt;/div&gt;
    &lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='Desinecode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="logiccode" style="display: none;">
        <div>
            <code>
                <pre>
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
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>

    <script>
        function Toogle(id2) {
            //let btn = document.getElementById(id1);
            let para = document.getElementById(id2);
            if (para.style.display != "none") { /* para.style.display Using this we can change the   */
                para.style.display = "none";
            }
            else {
                para.style.display = "";
            }
        }

        function hide(a) {
            let para = document.getElementById(a);
            para.style.display = "none";

        }

    </script>
</body>
</html>
