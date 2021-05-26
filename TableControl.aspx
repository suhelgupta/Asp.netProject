<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableControl.aspx.cs" Inherits="TableControl" %>

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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Table Controls</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                Row:
                <asp:TextBox ID="Textrow" runat="server" TextMode="Number"></asp:TextBox>
                &nbsp; Cols:
                <asp:TextBox ID="Textcol" runat="server" TextMode="Number"></asp:TextBox>
                <br /><br />
                &nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" />&nbsp;Put Borders Around Cels
                <br /><br />
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" />
                <br /><br />
                <asp:Table ID="tbl" runat="server"/>
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
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
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
            Row:
            &lt;asp:TextBox ID=&quotTextrow&quot runat=&quotserver&quot TextMode=&quotNumber&quot&gt;&lt;/asp:TextBox&gt;
            &nbsp; Cols:
            &lt;asp:TextBox ID=&quotTextcol&quot runat=&quotserver&quot TextMode=&quotNumber&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            &nbsp;&nbsp;
            &lt;asp:CheckBox ID=&quotCheckBox1&quot runat=&quotserver&quot /&gt;&nbsp;Put Borders Around Cels
            &lt;br /&gt;&lt;br /&gt;
            &nbsp;
            &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotCreate&quot OnClick=&quotButton1_Click&quot /&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Table ID=&quot;tbl&quot runat=&quotserver&quot/&gt;
            &lt;asp:Label ID=&quot;Label2&quot; runat=&quot;server&quot; Text=&quot;Label&quot;&gt;&lt;/asp:Label&gt;            
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

public partial class TableControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl.BorderStyle = BorderStyle.Inset;
        tbl.BorderWidth = Unit.Pixel(1);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        tbl.Controls.Clear();
        int rows = Int32.Parse(Textrow.Text);
        int cols = Int32.Parse(Textcol.Text);
        if(rows == 0 & cols == 0)
        {
            Label1.Text = "You Have Entered (0,0) Please enter any positive number ";
        }
        else if(rows >= 0 & cols >= 0)
        {
            for(int i = 1; i<=rows; i++)
            {
                TableRow newrow = new TableRow();
                tbl.Controls.Add(newrow);
                for (int j = 1; j <= cols; j++)
                {
                    TableCell newcell = new TableCell();

                    newcell.Text = "Cell Number (" + i.ToString() + "," + j.ToString() + ")";

                    if(CheckBox1.Checked)
                    {
                        newcell.BorderStyle = BorderStyle.Inset;
                        newcell.BorderWidth = Unit.Pixel(5  );
                    }

                    newrow.Controls.Add(newcell);
                }
            }
            Label1.Text = "";
        }
        else
        {
            Label1.Text = "Please Enter Positive Numbers Only";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
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
