<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownListValues.aspx.cs" Inherits="DropDownListValues" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownList With Values</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">DropDownList With Values</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                &nbsp;&nbsp;
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
        <button class="btn btn-danger" onclick="Toogle(a='logiccode')" href="Desinecode">Show/Hide Logic Part</button>
    </div>
   <div class="CodeAreaa" id="Desinecode" style="display:none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;DropDownListValues.aspx.cs&quot; Inherits=&quot;DropDownListValues&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
    &lt;title&gt;DropDownList With Values&lt;/title&gt;
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div&gt;
        &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
            &lt;asp:DropDownList ID=&quot;DropDownList1&quot; runat=&quot;server&quot;&gt;&lt;/asp:DropDownList&gt;
            &nbsp;&nbsp;
            &lt;asp:Button ID=&quot;Button1&quot; runat=&quot;server&quot; Text=&quot;Button&quot; OnClick=&quot;Button1_Click&quot; /&gt;
            &nbsp;&nbsp;
            &lt;asp:Label ID=&quot;Label1&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:Label&gt;
        &lt;/form&gt;
    &lt;/div&gt;
   &lt;/body&gt;
&lt;/html&gt;
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='Desinecode')">Hide </button>
        </div>
    </div>
    <div  id="logiccode" class="CodeAreaa" style="display:none;">
        <div>
            <code>
                <pre>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class DropDownListValues : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            String conn = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("Select City,POSTAL_CODE from Customer", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownList1.DataSource = reader;
            DropDownList1.DataTextField = "City";
            DropDownList1.DataValueField = "POSTAL_CODE";
            DropDownList1.DataBind();
            reader.Close();
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "If Your City is &lt;b&gt;"+DropDownList1.SelectedItem+ "&lt;/b&gt; Then Postal Code is &lt;b&gt;" + DropDownList1.SelectedValue + "&lt;/b&gt;";
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
        <br /><br /><br /><br /><br /><br />
</body>
</html>
