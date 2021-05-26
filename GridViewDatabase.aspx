<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridViewDatabase.aspx.cs" Inherits="GridViewDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grid View With Database</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css" />
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#GridView1').DataTable();
        });

    </script>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Grid View With Database</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Show Account Table" OnClick="Button1_Click" /><br /><br />
                <asp:GridView ID="GridView1" ClientIDMode="Static" runat="server"></asp:GridView>

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
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;GridViewDatabase.aspx.cs&quot; Inherits=&quot;GridViewDatabase&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
    &lt;title&gt;Grid View&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div&gt;
        &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
            &lt;asp:DropDownList ID=&quot;DropDownList1&quot; runat=&quot;server&quot;&gt;&lt;/asp:DropDownList&gt;
            &lt;asp:Button ID=&quot;Button1&quot; AutoPostBack="true" runat=&quot;server&quot; CssClass=&quot;btn btn-primary&quot; Text=&quot;Show Table&quot; OnClick=&quot;Button1_Click&quot; /&gt;&lt;br /&gt;&lt;br /&gt;
            &lt;asp:GridView ID=&quot;GridView1&quot; runat=&quot;server&quot;&gt;&lt;/asp:GridView&gt;
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
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class GridViewDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string[] tables = { "ACCOUNT", "ACC_TRANSACTION", "BRANCH", "BUSINESS", "CUSTOMER", "DEPARTMENT", "EMPLOYEE", "INDIVIDUAL", "OFFICER", "PRODUCT" };
            string[] name = { "Account", "Acount Transcation", "Branch", "Business", "Customer", "Department", "Empolyee", "Individual", "Officer", "Product" };
            DropDownList1.Items.Add(new ListItem(name[0],tables[0]));
            DropDownList1.Items.Add(new ListItem(name[1],tables[1]));
            DropDownList1.Items.Add(new ListItem(name[2],tables[2]));
            DropDownList1.Items.Add(new ListItem(name[3],tables[3]));
            DropDownList1.Items.Add(new ListItem(name[4],tables[4]));
            DropDownList1.Items.Add(new ListItem(name[5],tables[5]));
            DropDownList1.Items.Add(new ListItem(name[6],tables[6]));
            DropDownList1.Items.Add(new ListItem(name[7],tables[7]));
            DropDownList1.Items.Add(new ListItem(name[8],tables[8]));
            DropDownList1.Items.Add(new ListItem(name[9],tables[9]));
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ListItem item = DropDownList1.Items[DropDownList1.SelectedIndex];

        string constr = ConfigurationManager.ConnectionStrings["Externaldb"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand("Select * from "+item.Value, con);
        cmd.CommandType = CommandType.Text;
        da.SelectCommand = cmd;
        da.Fill(ds, "Suhel");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Button1.Text = "Show " + DropDownList1.SelectedItem + " Table";
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
