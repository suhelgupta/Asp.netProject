<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.aspx.cs" Inherits="WebUserControl" %>
<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc" TagName="Student" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web User Control</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Web User Control</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <center>
                    <h3>Welcome</h3>
                        <uc:Student id="UserControl1" runat="server" />
                    <br /> 
                </center>
            </div>
        </form>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 20px auto 1px auto;">
        <button class="btn btn-danger" onclick="Toogle(a='Sourcecode')">Show/Hide Code</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="location.href='First.aspx'">Go to Main Page</button>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 1px auto 10px auto; display: none;" id="Sourcecode">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='Desinecode')">Show/Hide Design Part </button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='logiccode')">Show/Hide Logic Part</button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='ucDesinecode')">Show/Hide User Control Design Part </button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='uclogiccode')" href="uclogiccode">Show/Hide User Control Logic Part</button>
    </div>
   <div class="CodeAreaa" id="Desinecode" style="display:none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotWebUserControl.aspx.cs&quot Inherits=&quotWebUserControl&quot %&gt;
&lt;%@ Register Src=&quot~/WebUserControl.ascx&quot TagPrefix=&quotuc&quot TagName=&quotStudent&quot %&gt;

&lt;!DOCTYPE html&gt;
&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;&lt;Web User Control/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div&gt;
            &lt;h3&gt;Welcome&lt;/h3&gt;
            &lt;uc:Student id=&quotUserControl1&quot runat=&quotserver&quot /&gt;
        &lt;/div&gt;
    &lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='Desinecode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="logiccode" style="display:none;">
        <div>
            <code>
                <pre>
Logic Part Not Required
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="ucDesinecode" style="display:none;">
        <div>
            <code>
                <pre>
&lt;%@ Control Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotWebUserControl.ascx.cs&quot Inherits=&quotWebUserControl&quot %&gt;

&lt;h4&gt;Web User Controls&lt;/h4&gt;
&lt;br /&gt;
Name:&lt;asp:TextBox ID=&quotTextBox1&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt;
&lt;br /&gt;&lt;br /&gt; 
City:&lt;asp:TextBox ID=&quotTextBox2&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt;
&lt;br /&gt;&lt;br /&gt; 
&lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotButton&quot OnClick=&quotButton1_Click&quot /&gt;
&lt;br /&gt;&lt;br /&gt; 
&lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot Text=&quot&quot&gt;&lt;/asp:Label&gt;
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='ucDesinecode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="uclogiccode" style="display:none;">
        <div>
            <code>
                <pre>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Your Name is " + TextBox1.Text + " And Your City is " + TextBox2.Text;
    }
}
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='uclogiccode')">Hide </button>
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
