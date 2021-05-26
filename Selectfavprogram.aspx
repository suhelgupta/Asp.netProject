<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Selectfavprogram.aspx.cs" Inherits="Selectfavprogram" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Your Favourite Program</title>
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
    <h1 class="hheading" style="margin: 30px auto">Select Your Favourite Program</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                Choose your Favouriate Programming Language:
                <br /><br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
                <br />
                <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
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
            Choose your Favouriate Programming Language:
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:CheckBoxList ID=&quotCheckBoxList1&quot runat=&quotserver&quot&gt;&lt;/asp:CheckBoxList&gt;
            &lt;br /&gt;
            &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotOK&quot OnClick=&quotButton1_Click&quot /&gt;
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

public partial class Selectfavprogram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.IsPostBack == false)
        {
            CheckBoxList1.Items.Add(&quot C&quot);
            CheckBoxList1.Items.Add(&quot C++&quot);
            CheckBoxList1.Items.Add(&quot Python&quot);
            CheckBoxList1.Items.Add(&quot JAVA&quot);
            CheckBoxList1.Items.Add(&quot JavaScript&quot);
            CheckBoxList1.Items.Add(&quot C#&quot);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = &quotYou chose:&quot;
        //ListItem chitem;
        foreach(ListItem chitem in CheckBoxList1.Items)
        {
            if (chitem.Selected == true)
            {
                Label1.Text += &quot&lt;br /&gt;&quot + chitem.Text;
            }
        }
        Label1.Text += &quot&lt;br /&gt;&quot;
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
