<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Currency Converter</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Currency Converter</h1>
    <div class="CodeAreaa">
        <form runat="server">
            <div>
                Convert: &nbsp
                <input type="text" id="US" runat="server" />
                &nbsp; U.S. dollars to Euros.
                <br /> <br />
                <input type="submit" value="OK" id="Convert" runat="server" onserverclick="Convert_ServerClick" />
                <br /> <br />
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
            Convert: &nbsp
            &lt;input type=&quottext&quot id=&quotUS&quot runat=&quotserver&quot /&gt;
            &nbsp; U.S. dollars to Euros.
            &lt;br /&gt; &lt;br /&gt;
            &lt;input type=&quotsubmit&quot value=&quotOK&quot id=&quotConvert&quot runat=&quotserver&quot onserverclick=&quotConvert_ServerClick&quot /&gt;
            &lt;br /&gt; &lt;br /&gt;
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

public partial class CurrencyConverter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Convert_ServerClick(object sender, EventArgs e)
    {
        decimal USAmount;
        // Attempt the conversion.
        bool success = Decimal.TryParse(US.Value, out USAmount);
        // Check if it succeeded.
        if (success)
        {
            // The conversion succeeded.
            decimal euroAmount = USAmount * 0.85M;
            Result.InnerText = USAmount.ToString() + " U.S. dollars =";
            Result.InnerText += euroAmount.ToString() + " Euros.";
        }
        else
        {
            // The conversion failed.
            Result.Style["color"] ="Red";
            Result.InnerText = "The number you typed in was not in the " +
            "correct format. Use only numbers.";
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
