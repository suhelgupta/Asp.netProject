<%@ Page Language="C#" Theme="DemoTheme" AutoEventWireup="true" CodeFile="Theme.aspx.cs" Inherits="CssTheme_Theme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Css And Themes</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/../Style.css" />
    <link rel="stylesheet" href="StyleSheet.css" />
    <style>
        .CodeAreaa {
            border: 2px solid red;
            border-radius: 20px;
            margin: 20px auto 20px auto;
            padding: 20px;
            width: 50%;
            
        }
    </style>
</head>
<body>
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Css And Themes</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div class="NavMenu">
                <asp:Menu ID="Menu1" runat="server" CssClass="menuitem" Orientation="Horizontal">
                    <DynamicMenuItemStyle CssClass="menuitem" />
                    <Items>
                        <asp:MenuItem NavigateUrl="Css_Theme.aspx" Text="Type Of Css" Value="Home"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="CssSelector.aspx" Text="Type Of Selectors" Value="Contact"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="Theme.aspx" Text="Theam Page" Value="About"></asp:MenuItem>
                    </Items>
                    <StaticMenuItemStyle CssClass="menuitem" />
                </asp:Menu>
            </div>
            <div>
                <%--<asp:Label ID="Label1" runat="server" Text="This the Example Of default Skin" Font-Italic="True" Font-Size="18px" BorderStyle="Double" BackColor="#FFFF99" ForeColor="#009900"></asp:Label>--%>
                <asp:Label ID="Label1" runat="server" Text="This the Example Of default Skin"></asp:Label>
                <br /><br />
                <asp:Label ID="Label3" runat="server" Text="THis is Also the Example Of the Default Skin Because Above Line And THia Line Is Same"></asp:Label>
                <br /><br />
                <asp:Label ID="Label5" SkinID="diff" runat="server" Text="this is not the example of the default skin because it is differ from other two's"></asp:Label>
                <br />
                <asp:Label ID="Label4" SkinID="diff" runat="server" Text="this is with skinId='diff'"></asp:Label>
                <br /><br />
                <asp:Label ID="Label2" SkinID="diff2" runat="server" Text="this is the example of the named skin where SkinId is diff2"></asp:Label>
            </div>
        </form>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 20px auto 1px auto;">
        <button class="btn btn-danger" onclick="Toogle(a='Sourcecode')">Show/Hide Code</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="location.href='/../First.aspx'">Go to Main Page</button>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 1px auto 10px auto; display: none;" id="Sourcecode">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='Desinecode')">Show/Hide Design Part </button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='logiccode')">Show/Hide Logic Part</button>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='theampage')">Show/Hide Theme Page</button>
    </div>
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quot;C#&quot; Theme=&quot;DemoTheme&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;Theme.aspx.cs&quot; Inherits=&quot;CssTheme_Theme&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
   &lt;title&gt;Css And Themes&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
        &lt;div&gt;
            &lt;asp:Label ID=&quot;Label1&quot; runat=&quot;server&quot; Text=&quot;This the Example Of default Skin&quot;&gt;&lt;/asp:Label&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Label ID=&quot;Label3&quot; runat=&quot;server&quot; Text=&quot;THis is Also the Example Of the Default Skin Because Above Line And THia Line Is Same&quot;&gt;&lt;/asp:Label&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Label ID=&quot;Label5&quot; SkinID=&quot;diff&quot; runat=&quot;server&quot; Text=&quot;this is not the example of the default skin because it is differ from other two's&quot;&gt;&lt;/asp:Label&gt;
            &lt;br /&gt;
            &lt;asp:Label ID=&quot;Label4&quot; SkinID=&quot;diff&quot; runat=&quot;server&quot; Text=&quot;this is with skinId='diff'&quot;&gt;&lt;/asp:Label&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Label ID=&quot;Label2&quot; SkinID=&quot;diff2&quot; runat=&quot;server&quot; Text=&quot;this is the example of the named skin where SkinId is diff2&quot;&gt;&lt;/asp:Label&gt;
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
Logic Part Is Not Required
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="theampage" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%--
Default skin template. The following skins are provided as examples only.

1. Named control skin. The SkinId should be uniquely defined because
   duplicate SkinId's per control type are not allowed in the same theme.

&lt;asp:GridView runat=&quot;server&quot; SkinId=&quot;gridviewSkin&quot; BackColor=&quot;White&quot; &gt;
   &lt;AlternatingRowStyle BackColor=&quot;Blue&quot; /&gt;
&lt;/asp:GridView&gt;

2. Default skin. The SkinId is not defined. Only one default 
   control skin per control type is allowed in the same theme.

&lt;asp:Image runat=&quot;server&quot; ImageUrl=&quot;~/images/image1.jpg&quot; /&gt;
--%&gt;
&lt;asp:Label runat=&quot;server&quot; Font-Italic=&quot;True&quot; Font-Size=&quot;18px&quot; BorderStyle=&quot;Double&quot; BackColor=&quot;#FFFF99&quot; ForeColor=&quot;#009900&quot;&gt;&lt;/asp:Label&gt;

&lt;asp:Label runat=&quot;server&quot; SkinId=&quot;diff&quot; Font-Italic=&quot;False&quot; Font-Size=&quot;25px&quot; BorderStyle=&quot;Dashed&quot; BackColor=&quot;SandyBrown&quot; ForeColor=&quot;MistyRose&quot;&gt;&lt;/asp:Label&gt;

&lt;asp:Label runat=&quot;server&quot; SkinId=&quot;diff2&quot; Font-Italic=&quot;False&quot; Font-Size=&quot;30px&quot; BorderStyle=&quot;Dotted&quot; BackColor=&quot;DodgerBlue&quot; ForeColor=&quot;FireBrick&quot;&gt;&lt;/asp:Label&gt;
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='theampage')">Hide </button>
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

