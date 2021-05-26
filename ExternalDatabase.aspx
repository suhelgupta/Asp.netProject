<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExternalDatabase.aspx.cs" Inherits="ExternalDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>External Database</title>
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
        .hint {
            color: blue;
            cursor: pointer;
            margin-top: 0px;
            background: none;
            border: none;
            font-size:9px;
        }

        .hint:focus{
            outline:none;
        }
    </style>
</head>
<body>
    <h1 class="hheading" style="margin: 30px auto 60px auto;">External Database Demo</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server" Text="COUSTOMER DEATILS"></asp:Label><br /><br />
                <asp:Button ID="Button1" runat="server" Text="Show Deatils" OnClick="Button1_Click" /><br /><br />
                <pre runat="server" id="pre1"></pre>
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
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='webcon')" href="webcon">Show/Hide Web.config</button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='database')" href="database">Steps For Database</button>
    </div>
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;ExternalDatabase.aspx.cs&quot; Inherits=&quot;ExternalDatabase&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
    &lt;title&gt;External Database&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div&gt;
        &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
            &lt;asp:Label ID=&quot;Label1&quot; runat=&quot;server&quot; Text=&quot;COUSTOMER DEATILS&quot;&gt;&lt;/asp:Label&gt;&lt;br /&gt;&lt;br /&gt;
            &lt;asp:Button ID=&quot;Button1&quot; runat=&quot;server&quot; Text=&quot;Show Deatils&quot; OnClick=&quot;Button1_Click&quot; /&gt;&lt;br /&gt;&lt;br /&gt;
            &lt;pre runat=&quot;server&quot; id=&quot;pre1&quot;&gt;&lt;/pre&gt;
        &lt;/form&gt;
    &lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='Desinecode')">Hide </button>
        </div>
    </div>
    <div id="logiccode" class="CodeAreaa" style="display: none;">
        <div>
            <code>
                <pre>
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExternalDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr1"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select ADDRESS ,CITY,STATE from CUSTOMER", con);
        SqlDataReader reader = cmd.ExecuteReader();
        //Label2.Text = "";
        //string s = "\t\t";
        //Label2.Text += s +"Address \t\t City \t\t State&lt;br /&gt;";

        //while (reader.Read())
        //{
        //   Label2.Text += reader["ADDRESS"].ToString().PadLeft(15)+ reader["CITY"].ToString().PadLeft(15)+ reader["STATE"].ToString().PadLeft(15)+ "&lt;br /&gt;";
        //}
        pre1.InnerHtml = "+--------------------------------------------------------------+&lt;br /&gt;";
        pre1.InnerHtml += "|Address".PadRight(31) + "|" + "City".PadRight(15) + "|" + "State".PadRight(15) + "|" + "&lt;br /&gt;";
        pre1.InnerHtml += "+--------------------------------------------------------------+&lt;br /&gt;";
        while (reader.Read())
        {
            pre1.InnerHtml += "|"+reader["ADDRESS"].ToString().PadRight(30) + "|" + reader["CITY"].ToString().PadRight(15) + "|" + reader["STATE"].ToString().PadRight(15) + "|" + "&lt;br /&gt;";
        }
        pre1.InnerHtml += "+--------------------------------------------------------------+&lt;br /&gt;";
        reader.Close();
        con.Close();
    }

}
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="webcon" style="display: none;">
        <div>
            <code>
                <pre>
&lt;?xml version=&quot;1.0&quot;?&gt;

&lt;configuration&gt;

    &lt;system.web&gt;
        &lt;sessionState mode=&quot;InProc&quot;/&gt;
        &lt;compilation debug=&quot;true&quot; targetFramework=&quot;4.0&quot; /&gt;
    &lt;/system.web&gt;

    &lt;connectionStrings&gt;
        &lt;add name=&quot;Externaldb&quot; connectionString=&quot;Data Source=DESKTOP-OU85BTA;Initial Catalog=ELPHI;Integrated Security=True&quot; /&gt;
    &lt;/connectionStrings&gt;
  
&lt;/configuration&gt;

                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='webcon')">Hide </button>
        </div>
    </div>

    <div class="CodeAreaa" id="database" style="display: none;">
        <div>
            <h3>Follow The  Steps To Kmow How to use Database</h3>
                    <ol>
                        <li>Open Microsift Sql Server, Connect to the server.</li>
                        <li>Now We can See the Object Explorer in Right Side.</li>
                        <li>In Object explorer we an see the databse Folder, Right click on it and select New Database .</li>
                        <li>Open Database by clicking on right arrow. Select Table, Right Click On it then Select <b>New Query</b>.  </li>
                        <li>Now, Write Query Or Copy Past the Query from the SQL file given by ma'am OR <a href="LearningSQL-SQLServer-Script.txt" target="_blank">Click Here</a> To open and copy Sql code.</li>
                        <li>Refresh the table. Now we can able to see the tables in table folder</li>
                        <li>Now Open Visual Studio And open srver explorer.</li>
                        <li>Right Click On Data connection And select add new connecton</li>
                        <li>Write The Server Name from which we have connect the sqlserver management studio.</li>
                        <li>Then Select the Database name, And now press on test connection</li>
                        <li>If test connection is succeded then we are good to go. otherwise note the error and ask to teacher</li>
                        <li>Now We can able see the database name with server name in the server explorer</li>
                        <li>Now Click on Database name, now we can see the properties on right side. copy the connectionString From property tab</li>
                        <li>Use this connection String in web.config file</li>
                        <li>To see the steeps practically in video <button type="button" class="hint" style="font-size:1rem;" onclick="Toogle(a='video')">Click Here</button> </li>
                    </ol>
            <div id="video" style="display:none;">
                <embed src="Videos/ExternalDB.mp4"  width="100%" height="490px" /><br />
            <button class="btn btn-danger btn-sm" style="margin-left: 90%" onclick="hide(a='video')">Hide </button>
            </div>

            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='database')">Hide </button>
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</body>
</html>
