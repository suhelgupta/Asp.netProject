<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookies.aspx.cs" Inherits="Cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">This is Heading</h1>
    <div class="CodeAreaa" id="patentTag" runat="server" style="height:400px;">
        <form id="form1" runat="server">
            <div style="margin:157px 405px;">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                    <asp:ListItem Selected="True" Value="White">Select Color</asp:ListItem>
                    <asp:ListItem Value="Red">Red</asp:ListItem>
                    <asp:ListItem Value="Green">Green</asp:ListItem>
                    <asp:ListItem Value="Blue">Blue</asp:ListItem>
                    <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
                </asp:DropDownList>
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
        <button class="btn btn-danger" onclick="Toogle(a='logiccode')" href="Desinecode">Show/Hide Logic Part</button>
    </div>
   <div class="CodeAreaa" id="Desinecode" style="display:none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotCookies.aspx.cs&quot Inherits=&quotCookies&quot %&gt;

&lt;!DOCTYPE html&gt;
&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;Cookies&lt;/title&gt;
&lt;/head&gt;
&lt;body id="BodyTag" runat="server"&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div&gt;
            &lt;asp:DropDownList ID=&quotDropDownList1&quot runat=&quotserver&quot AutoPostBack=&quottrue&quot OnSelectedIndexChanged=&quotDropDownList1_SelectedIndexChanged&quot &gt;
                &lt;asp:ListItem Selected=&quotTrue&quot Value=&quotWhite&quot&gt;Select Color&lt;/asp:ListItem&gt;
                &lt;asp:ListItem Value=&quotRed&quot&gt;Red&lt;/asp:ListItem&gt;
                &lt;asp:ListItem Value=&quotGreen&quot&gt;Green&lt;/asp:ListItem&gt;
                &lt;asp:ListItem Value=&quotBlue&quot&gt;Blue&lt;/asp:ListItem&gt;
                &lt;asp:ListItem Value=&quotYellow&quot&gt;Yellow&lt;/asp:ListItem&gt;
            &lt;/asp:DropDownList&gt;
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

public partial class Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Response.Write("Suhel Entered in Is Post");
            if (Request.Cookies["BackroundColor"] != null)
            {
                //Response.Write("\n Suhel Entered In Cookiee");
                //Response.Write("cdvd   " + Request.Cookies["BackroundColor"].Value);
                DropDownList1.SelectedValue = Request.Cookies["BackroundColor"].Value;
                BodyTag.Style["background-color"] = DropDownList1.SelectedValue;
            }
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        BodyTag.Style["background-color"] = DropDownList1.SelectedValue;
        HttpCookie cookie = new HttpCookie("BackroundColor");
        cookie.Value = DropDownList1.SelectedValue;
        cookie.Expires = DateTime.Now.AddSeconds(5);
        Response.Cookies.Add(cookie);
        Response.SetCookie(cookie);
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
