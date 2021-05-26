<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GreetingCardMaker.aspx.cs" Inherits="GreetingCardMaker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Greeting Card Maker</title>
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
    </style>
</head>
<body>
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Greeting Card Maker</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div style="display:flex; flex-direction:row;">
                <div>
                    Choose a background color:<br />
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="194px" Height="22px"/><br /><br />
                    Choose a font:<br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="194px" Height="22px"/><br /><br />
                    Specify a numeric font size:<br />
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox><br /><br />
                    Choose a border style:<br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="177px" Height="59px" /><br /><br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Add a Default Picture" /><br /><br />
                    Enter the greeting text below:<br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"  Width="240px" Height="85px"></asp:TextBox><br /><br />
                    <asp:Button ID="Button1" runat="server" Text="Update" Width="71px" Height="24px" OnClick="Button1_Click" />
                </div>
                <%--Here's The Card--%>
                <asp:Panel ID="Panel1" runat="server" Width="339px" Height="481px" HorizontalAlign="center" style="position:relative; top:16px; left:163px">
                    <br />&nbsp;
                    <asp:Label ID="Label1" runat="server" Text=""  Width="256px" Height="150px" ></asp:Label> <br /><br /><br />
                    <asp:Image ID="Image1" runat="server" Height="160px" Width="212px" />
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
   <div class="CodeAreaa" id="Desinecode" style="display:none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotImpoGreetingCard.aspx.cs&quot Inherits=&quotImpoGreetingCard&quot %&gt;

&lt;!DOCTYPE html&gt;
&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;Greeting Card Maker&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div style=&quotdisplay:flex; flex-direction:row;&quot&gt;
            &lt;div&gt;
                Choose a background color:&lt;br /&gt;
                &lt;asp:DropDownList ID=&quotDropDownList1&quot runat=&quotserver&quot Width=&quot194px&quot Height=&quot22px&quot/&gt;&lt;br /&gt;&lt;br /&gt;
                Choose a font:&lt;br /&gt;
                &lt;asp:DropDownList ID=&quotDropDownList2&quot runat=&quotserver&quot Width=&quot194px&quot Height=&quot22px&quot/&gt;&lt;br /&gt;&lt;br /&gt;
                Specify a numeric font size:&lt;br /&gt;
                &lt;asp:TextBox ID=&quotTextBox1&quot runat=&quotserver&quot TextMode=&quotNumber&quot&gt;&lt;/asp:TextBox&gt;&lt;br /&gt;&lt;br /&gt;
                Choose a border style:&lt;br /&gt;
                &lt;asp:RadioButtonList ID=&quotRadioButtonList1&quot runat=&quotserver&quot Width=&quot177px&quot Height=&quot59px&quot /&gt;&lt;br /&gt;&lt;br /&gt;
                &lt;asp:CheckBox ID=&quotCheckBox1&quot runat=&quotserver&quot Text=&quotAdd a Default Picture&quot /&gt;&lt;br /&gt;&lt;br /&gt;
                Enter the greeting text below:&lt;br /&gt;
                &lt;asp:TextBox ID=&quotTextBox2&quot runat=&quotserver&quot TextMode=&quotMultiLine&quot  Width=&quot240px&quot Height=&quot85px&quot&gt;&lt;/asp:TextBox&gt;&lt;br /&gt;&lt;br /&gt;
                &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotUpdate&quot Width=&quot71px&quot Height=&quot24px&quot OnClick=&quotButton1_Click&quot /&gt;
            &lt;/div&gt;
            &lt;%--Here's The Card--%&gt;
            &lt;asp:Panel ID=&quotPanel1&quot runat=&quotserver&quot Width=&quot339px&quot Height=&quot481px&quot HorizontalAlign=&quotcenter&quot style=&quotposition:relative; top:16px; left:163px&quot&gt;
                &lt;br /&gt;&nbsp;
                &lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot Text=&quot&quot  Width=&quot256px&quot Height=&quot150px&quot &gt;&lt;/asp:Label&gt; &lt;br /&gt;&lt;br /&gt;&lt;br /&gt;
                &lt;asp:Image ID=&quotImage1&quot runat=&quotserver&quot Height=&quot160px&quot Width=&quot212px&quot /&gt;
            &lt;/asp:Panel&gt;
        &lt;/div&gt;
    &lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='Desinecode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="logiccode" style="display:none;">
        <div>
            <code>
                <pre>
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
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='logiccode')">Hide </button>
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
