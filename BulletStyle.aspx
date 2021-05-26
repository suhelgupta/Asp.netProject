<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BulletStyle.aspx.cs" Inherits="BulletStyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Bullet Style</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server" class="text-center font-weight-bolder d-block" ForeColor="#33CC33"></asp:Label>
                <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="LinkButton" BulletStyle="Numbered" OnClick="BulletedList1_Click" BulletImageUrl="~/wallpaper10.png"></asp:BulletedList>
            </div>
        </form>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 20px auto 1px auto;">
        <button class="btn btn-danger" onclick="Toogle(a='Sourcecode')">Show/Hide CodeCode</button>&nbsp;&nbsp;&nbsp;&nbsp;
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
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotDefault.aspx.cs&quot Inherits=&quot_Default&quot %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div&gt;
            &lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot class=&quottext-center font-weight-bolder d-block&quot ForeColor=&quot#33CC33&quot&gt;&lt;/asp:Label&gt;
            &lt;asp:BulletedList ID=&quotBulletedList1&quot runat=&quotserver&quot DisplayMode=&quotLinkButton&quot BulletStyle=&quotNumbered&quot OnClick=&quotBulletedList1_Click&quot&gt;&lt;/asp:BulletedList&gt;
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
        else if (itemText == "Square")
        {
            BulletedList1.BulletStyle = System.Web.UI.WebControls.BulletStyle.CustomImage;
        }

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
