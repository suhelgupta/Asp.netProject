<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryStringOutput.aspx.cs" Inherits="QueryStringOutput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Query String Outout</title>
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
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <h4 class="text-center">This is QueryString.aspx file</h4>
                <h5>Query String Parameter values : </h5>
                Name :&nbsp; <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br /><br />
                Password :&nbsp; <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br /><br />
            </div>
        </form>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 20px auto 1px auto;">
        <button class="btn btn-danger" onclick="Toogle(a='Sourcecode')">Show/Hide Code</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="location.href='QueryString.aspx'">Go to Parent Page</button>
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
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotQueryStringOutput.aspx.cs&quot Inherits=&quotQueryStringOutput&quot %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;Query String Outout&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div&gt;
            &lt;h4 class=&quottext-center&quot&gt;This is QueryString.aspx file&lt;/h4&gt;
                &lt;h5&gt;Query String Parameter values : &lt;/h5&gt;
                Name :&nbsp; &lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot Text=&quot&quot&gt;&lt;/asp:Label&gt;
                &lt;br /&gt;&lt;br /&gt;
                Password :&nbsp; &lt;asp:Label ID=&quotLabel2&quot runat=&quotserver&quot Text=&quot&quot&gt;&lt;/asp:Label&gt;
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
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QueryStringOutput : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            byte[] decodename = Convert.FromBase64String(Request.QueryString["UserId"]);
            byte[] decodepass = Convert.FromBase64String(Request.QueryString["Password"]);
            Label1.Text = Encoding.UTF8.GetString(decodename);
            Label2.Text = Encoding.UTF8.GetString(decodepass);

            //    Label1.Text =  Request.QueryString["UserId"];
            //    Label2.Text = Request.QueryString["Password"];
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