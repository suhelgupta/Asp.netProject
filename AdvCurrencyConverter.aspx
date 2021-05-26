<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdvCurrencyConverter.aspx.cs" Inherits="AdvCurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <title>Improved Currency Converter</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Improved Currency Converter</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                Convert: &nbsp;
                <input type="text" id="US" runat="server" />
                &nbsp; U.S. dollars to &nbsp;
                <select id="Currency" runat="server" />
                <br />
                <br />
                <input type="submit" value="OK" id="Convert" onserverclick="Convert_ServerClick" runat="server" />
                <br />
                <br />
                <p style="font-weight: bold" id="Result" runat="server"></p>
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
            Convert: &nbsp;
            &lt;input type=&quottext&quot id=&quotUS&quot runat=&quotserver&quot /&gt;
            &nbsp; U.S. dollars to &nbsp;
            &lt;select id=&quotCurrency&quot runat=&quotserver&quot /&gt;
            &lt;br /&gt;
            &lt;br /&gt;
            &lt;input type=&quotsubmit&quot value=&quotOK&quot id=&quotConvert&quot onserverclick=&quotConvert_ServerClick&quot runat=&quotserver&quot /&gt;
            &lt;br /&gt;
            &lt;br /&gt;
            &lt;p style=&quotfont-weight: bold&quot id=&quotResult&quot runat=&quotserver&quot&gt;&lt;/p&gt;
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

public partial class AdvCurrencyConverter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            Currency.Items.Add(new ListItem("Euro", "0.85"));
            Currency.Items.Add(new ListItem("Japanese Yen", "110.33"));
            Currency.Items.Add(new ListItem("Canadian Dollars", "1.2"));
        }
    }

    protected void Convert_ServerClick(object sender, EventArgs e)
    {
        decimal oldAmmount;
        bool Success = Decimal.TryParse(US.Value, out oldAmmount);
        if (Success)
        {
            ListItem item = Currency.Items[Currency.SelectedIndex];
            decimal newAmount = oldAmmount * Decimal.Parse(item.Value);
            Result.InnerText = oldAmmount.ToString() + " U.S. dollars =";
            Result.InnerText += newAmount.ToString() + " " + item.Text;
        }
        else
        {
            Result.Style["color"] = "Red";
            Result.InnerText = "Plese enter the valid number";
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
