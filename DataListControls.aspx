<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataListControls.aspx.cs" Inherits="DataListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DataList Controls</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Demo Of DataList Controls With Database</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="EMP_ID" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        EMP_ID:
                        <asp:Label ID="EMP_IDLabel" runat="server" Text='<%# Eval("EMP_ID") %>' />
                        <br />
                        END_DATE:
                        <asp:Label ID="END_DATELabel" runat="server" Text='<%# Eval("END_DATE") %>' />
                        <br />
                        FIRST_NAME:
                        <asp:Label ID="FIRST_NAMELabel" runat="server" Text='<%# Eval("FIRST_NAME") %>' />
                        <br />
                        LAST_NAME:
                        <asp:Label ID="LAST_NAMELabel" runat="server" Text='<%# Eval("LAST_NAME") %>' />
                        <br />
                        START_DATE:
                        <asp:Label ID="START_DATELabel" runat="server" Text='<%# Eval("START_DATE") %>' />
                        <br />
                        TITLE:
                        <asp:Label ID="TITLELabel" runat="server" Text='<%# Eval("TITLE") %>' />
                        <br />
                        ASSIGNED_BRANCH_ID:
                        <asp:Label ID="ASSIGNED_BRANCH_IDLabel" runat="server" Text='<%# Eval("ASSIGNED_BRANCH_ID") %>' />
                        <br />
                        DEPT_ID:
                        <asp:Label ID="DEPT_IDLabel" runat="server" Text='<%# Eval("DEPT_ID") %>' />
                        <br />
                        SUPERIOR_EMP_ID:
                        <asp:Label ID="SUPERIOR_EMP_IDLabel" runat="server" Text='<%# Eval("SUPERIOR_EMP_ID") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELPHIConnectionString %>" SelectCommand="SELECT * FROM [EMPLOYEE]"></asp:SqlDataSource>
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
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;DataListControls.aspx.cs&quot; Inherits=&quot;DataListControls&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
    &lt;title&gt;DataList Controls&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div&gt;
        &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
            &lt;asp:DataList ID=&quot;DataList1&quot; runat=&quot;server&quot; DataKeyField=&quot;EMP_ID&quot; DataSourceID=&quot;SqlDataSource1&quot;&gt;
                &lt;ItemTemplate&gt;
                    EMP_ID:
                    &lt;asp:Label ID=&quot;EMP_IDLabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;EMP_ID&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    END_DATE:
                    &lt;asp:Label ID=&quot;END_DATELabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;END_DATE&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    FIRST_NAME:
                    &lt;asp:Label ID=&quot;FIRST_NAMELabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;FIRST_NAME&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    LAST_NAME:
                    &lt;asp:Label ID=&quot;LAST_NAMELabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;LAST_NAME&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    START_DATE:
                    &lt;asp:Label ID=&quot;START_DATELabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;START_DATE&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    TITLE:
                    &lt;asp:Label ID=&quot;TITLELabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;TITLE&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    ASSIGNED_BRANCH_ID:
                    &lt;asp:Label ID=&quot;ASSIGNED_BRANCH_IDLabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;ASSIGNED_BRANCH_ID&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    DEPT_ID:
                    &lt;asp:Label ID=&quot;DEPT_IDLabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;DEPT_ID&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    SUPERIOR_EMP_ID:
                    &lt;asp:Label ID=&quot;SUPERIOR_EMP_IDLabel&quot; runat=&quot;server&quot; Text='&lt;%# Eval(&quot;SUPERIOR_EMP_ID&quot;) %&gt;' /&gt;
                    &lt;br /&gt;
                    &lt;br /&gt;
                &lt;/ItemTemplate&gt;
            &lt;/asp:DataList&gt;
            &lt;asp:SqlDataSource ID=&quot;SqlDataSource1&quot; runat=&quot;server&quot; ConnectionString=&quot;&lt;%$ ConnectionStrings:ELPHIConnectionString %&gt;&quot; SelectCommand=&quot;SELECT * FROM [EMPLOYEE]&quot;&gt;&lt;/asp:SqlDataSource&gt;
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
                <pre>Logic Not Requird.
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</body>
</html>
