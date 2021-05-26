<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayException.aspx.cs" Inherits="DisplayException" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Display Exception</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
               A:&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
               B:&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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
&lt;%@ Page Language=&quotC#&quot AutoEventWireup=&quottrue&quot CodeFile=&quotDefault.aspx.cs&quot Inherits=&quot_Default&quot %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quothttp://www.w3.org/1999/xhtml&quot&gt;
&lt;head runat=&quotserver&quot&gt;
    &lt;title&gt;&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quotform1&quot runat=&quotserver&quot&gt;
        &lt;div&gt;
            A:&nbsp; &lt;asp:TextBox ID=&quotTextBox1&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt;&lt;br /&gt;&lt;br /&gt;
            B:&nbsp; &lt;asp:TextBox ID=&quotTextBox2&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotButton&quot OnClick=&quotButton1_Click&quot /&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot Text=&quot&quot&gt;&lt;/asp:Label&gt;
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

public partial class DisplayException : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            decimal a, b, result;
            a = Decimal.Parse(TextBox1.Text);
            b = Decimal.Parse(TextBox2.Text);
            result = a / b;
            Label1.Text = "Answer = "+result.ToString();
            Label1.ForeColor = System.Drawing.Color.Black;
        } 
        catch (Exception err)
        {
            Label1.Text = "<b>Message:</b> " + err.Message;
            Label1.Text += "<br /><br />";
            Label1.Text += "<b>Source:</b> " + err.Source;
            Label1.Text += "<br /><br />";
            Label1.Text += "<b>Stack Trace:</b> " + err.StackTrace;
            Label1.ForeColor = System.Drawing.Color.Red;
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
