<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LocalDatabase.aspx.cs" Inherits="LocalDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Intro to Local Database</title>
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

        .CodeAreaa1 {
            border: 2px solid black;
            /*border-radius: 20px;*/
            padding: 20px;
            width: 80%;
            margin: 20px auto 20px auto;
            display: inline-block;
            overflow: auto;
            white-space: nowrap;
            height: unset;
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

        .showhint {
            border: 1px solid rgba(0,0,0,0.3);
            border-radius: 10px;
            padding: 20px;
            width: 100%;
            margin: 2px 0px;
            overflow: auto;
            white-space: nowrap;
        }

        #TextBox1 {
            width:35%;
            -webkit-transition: width 0.4s ease-in-out;
            transition: width 0.4s ease-in-out;
        }

        /* When the input field gets focus, change its width to 100% */
        #TextBox1:focus {
            width: 100%;
        }
    </style>
</head>
<body>
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Intro to Local Database</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <span style="font-size:24px">Enter Your Query Here</span><button class="hint" type="button" onclick="Toogle(a='showhint')">Show Examples</button>
                <br />
                <div class="showhint" id="showhint" style="display: none;">
                    <pre>
studentdeatils table has 4 collumn  are "roll","name","address","mobile"
Query Examples:
1) Query to select the data
    SELECT * FROM studentdeatils;<asp:Button ID="Button2" CssClass="hint" runat="server" Text="Select this" OnClick="Button2_Click"></asp:Button>
2) Query to insert data in data base
    INSERT INTO studentdeatils (roll,name,address,mobile) VALUES (value1,'value2','value3','value4');<asp:Button ID="Button3" CssClass="hint" runat="server" Text="Select this" OnClick="Button3_Click"></asp:Button>
3) Query to update data of the database
    UPDATE studentdeatils SET address = 'value1', mobile = 'value2', ... WHERE roll=value;<asp:Button ID="Button4" runat="server" CssClass="hint" Text="Select this" OnClick="Button4_Click"></asp:Button>
4) Query to Delete Data 
    DELETE FROM studentdeatils WHERE roll=value;<asp:Button ID="Button5" runat="server" CssClass="hint" Text="Select this" OnClick="Button5_Click"></asp:Button>
</pre>
                </div>
                <asp:TextBox ID="TextBox1" runat="server" Text="" Style="margin-bottom: 0px"></asp:TextBox><br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Execute Query" OnClick="Button1_Click" /><br />
                <br />
                <center>
                    <%--<asp:TextBox ID="TextBox2" CssClass="CodeAreaa1" runat="server" TextMode="MultiLine" Rows="5" Wrap="False"></asp:TextBox>--%>
                    <asp:Label ID="Label1" runat="server" CssClass="CodeAreaa1" Text="" Wrap="False"></asp:Label>
                </center>
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
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;LocalDatabase.aspx.cs&quot; Inherits=&quot;LocalDatabase&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
    &lt;title&gt;Intro to Local Database&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div&gt;
        &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
            &lt;span style=&quot;font-size:24px&quot;&gt;Enter Your Query Here&lt;/span&gt;
            &lt;br /&gt;
            &lt;asp:TextBox ID=&quot;TextBox1&quot; runat=&quot;server&quot; Text=&quot;&quot;&gt;&lt;/asp:TextBox&gt;&lt;br /&gt;
            &lt;br /&gt;
            &lt;asp:Button ID=&quot;Button1&quot; runat=&quot;server&quot; Text=&quot;Execute Query&quot; OnClick=&quot;Button1_Click&quot; /&gt;&lt;br /&gt;
            &lt;br /&gt;
            &lt;asp:Label ID="Label1" runat="server" CssClass="CodeAreaa1" Text="" Wrap="False"&lt;/asp:Label&gt;
        &lt;/form&gt;
    &lt;/div&gt;
    &lt;/div&gt;
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
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LocalDatabase : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string skconn = ConfigurationManager.ConnectionStrings["Localdb"].ConnectionString;
        SqlConnection con = new SqlConnection(skconn);
        con.Open();
        SqlCommand cmd = new SqlCommand(TextBox1.Text, con);
        SqlDataReader reader = cmd.ExecuteReader();
        Label1.Text = "";
        if (TextBox1.Text.StartsWith("select") || TextBox1.Text.StartsWith("SELECT"))
        {
            //int row1 = 1;
            Label1.Text = "&lt;table style='border:2px solid black;'>";
            while (reader.Read())
            {
                //Label1.Rows += row1;
                //Label1.Text += Environment.NewLine;
                Label1.Text += "&lt;tr style='border:2px solid black;'&gt;";
                for (int i = 0; i < reader.FieldCount; i++)
                {
                    Label1.Text += "&lt;td style='border:2px solid black; padding:10px 20px'>" + reader[i].ToString() + "/&lt;td&gt;";
                    //Label1.Text += reader[i].ToString().PadRight(30).PadLeft(10);
                }
                Label1.Text += "/&lt;tr&gt;";
            }
            Label1.Text += "/&lt;table&gt;";
        }
        else
        {
            //Label1.Rows = 5;
            //Label1.Columns = 20;
            Label1.Text = "Query Executed Sucessfully";
        }
        
        reader.Close();
        con.Close();
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
        &lt;add name=&quot;Localdb&quot; connectionString=&quot;Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\AWP\WebwithBoot\App_Data\tyclassdata.mdf;Integrated Security=True&quot; /&gt;
    &lt;/connectionStrings&gt;
  
&lt;/configuration&gt;

                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='webcon')">Hide </button>
        </div>
    </div>

    <div class="CodeAreaa" id="database" style="display: none;">
        <div>
            <h1>Follow The  Steps To Create Local Database</h1>
                    <ol>
                        <li>Go to <b>File-->New-->file</b> Search For Sql Server for C#.</li>
                        <li>Click On Sql Server, Give name to Database file(.mdf) And click on Add.</li>
                        <li>After Clicking on add it ask for adding Add_Data folder. We have to just Press <b>Yes</b>.</li>
                        <li>Now We can See the Server Explorer in Right Side. If not then open view and select the server explorer.</li>
                        <li>In server  explorer we an see the our databse name which we have  added in add_data folder.</li>
                        <li>Open Databae by clicking on right arrow. Select Table, Right Click On it then Select <b>Add New Table</b>.  </li>
                        <li>Now, Fill the Table By Adding Column names, Then Press On Update Button. </li>
                        <li>Refresh the table. Now we can able to see the table in table folder</li>
                        <li>Right Click on our table solder select <b>Show Table Data</b> And Fill the Daata's in Table</li>
                        <li>Now Click on Database, now we can see the properties on right side. copy the connectionString From property tab</li>
                        <li>Use this connection String in web.config file</li>
                        <li>To see the steeps practically in video <button type="button" class="hint" style="font-size:1rem;" onclick="Toogle(a='video')">Click Here</button> </li>
                    </ol>
            <div id="video" style="display:none;">
                <embed src="Videos/LocalDatabase.mp4" width="100%" height="490px" /><br />
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
