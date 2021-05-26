<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Css_Theme.aspx.cs" Inherits="CssTheme_Css_Theme" %>

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
        .internalcssheading{
            display: inline-block;
            width: 35%; 
            padding: 14px 48px; 
            margin: 0px 304px; 
            border: 2px solid black; 
            border-radius: 42px; 
            background-color: lawngreen;
        }
        .internalcsspara{
            color:darkblue; 
            font-size: 18px; 
            font-family: cursive
        }
    </style>
</head>
<body>
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Css And Themes</h1>
    <div class="CodeAreaa" style="overflow: no-content; white-space: nowrap; ">
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
                <h1 style="display: inline-block; width: 30%; padding: 14px 48px; margin: 0px 330px; border: 2px solid black; border-radius: 42px; background-color: aqua;">Inline CSS</h1>
                <br /> <br />
                <p style="color: ForestGreen; font-size: 18px; font-family: cursive">
                    This is the Example Of the <b>Inline CSS</b> in which we use "Sytle" Attribute is used inside Any HTML <br /> Tag
                    to give the Styling. To see the code of the inline CSS <a onclick="Toogle(a='inlinecss')"><b>Click here</b></a>
                </p>
                <div id="inlinecss" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
&lt;h1 style=&quotdisplay: inline-block;width: 30%;padding: 14px 48px;margin: 0px 330px;border: 2px solid black;border-radius: 42px;background-color: aqua;&quot&gt;Inline CSS&lt;/h1&gt;
&lt;br /&gt;&lt;br /&gt;
&lt;p style=&quotcolor:aquamarine;font-size:20px;font-family:cursive&quot&gt;This is the Example Of the Inline CSS in which.......... <a onclick="hide(a='inlinecss')" style ="color:blue;">Click Here to hide code</a> &lt;/p&gt;
                        </pre>
                    </code>
                </div>
                <br /><br />
                <h1 class="internalcssheading">Internal CSS</h1>
                <br /> <br />
                <p class="internalcsspara">This is the Example of the <b>Internal CSS</b> In which we are using the Style Tag in head part of the<br />HTML Page
                    where we select the different different html tag for styling with the help of Selectors<br /> like ID,Class,Tag name etc.
                    To see the Code of Internal CSS <a onclick="Toogle(a='internalcss')"><b>Click here</b></a>
                </p>
                <div id="internalcss" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
    &lt;style&gt;
            .internalcssheading{
                display: inline-block;
                width: 35%; 
                padding: 14px 48px; 
                margin: 0px 304px; 
                border: 2px solid black; 
                border-radius: 42px; 
                background-color: lawngreen;
            }
            .internalcsspara{
                color:ForestGreen; 
                font-size: 18px; 
                font-family: cursive
            }
    &lt;/style&gt;
    &&lt;h1 class=&quotinternalcssheading&quot&gt;Internal CSS&lt;/h1&gt;
    &lt;br /&gt;
    &lt;p class=&quotinternalcsspara&quot&gt;This is the Example of the Internal CSS In which we......  <a onclick="hide(a='internalcss')" style ="color:blue;">Click Here to hide code</a> &lt;/p&gt;
                        </pre>
                    </code>
                </div>
                <br /> <br />
                <h1 class="Externalcssheading">External CSS</h1>
                <p class="Externalcsspara">This is the Example of the <b>External CSS</b> in which we are creating the new file name as StyleSheet.css<br /> where we are going to 
                    write our stlying part by selecting the tag using css selectors. And we are using<br /> the link tag to link that css file with this file to see 
                    the code of external CSS <a onclick="Toogle(a='externalcss')"><b>Click here</b></a>
                </p>
                <div id="externalcss" style="display:none; border: 2px solid black">
                    <code>
                        <pre>

    Below code is part of new file names StyleSheet.css which is created for External css

    body {
    }
    .Externalcssheading{
            display: inline-block;
            width: 35%; 
            padding: 14px 48px; 
            margin: 0px 304px; 
            border: 2px solid black; 
            border-radius: 42px; 
            background-color: Khaki;
            }

    .Externalcsspara{
            color:Olive; 
            font-size: 18px; 
            font-family: cursive;
        }

    From here our Css_Theme.aspx is starting
    &lt;h1 class=&quot;Externalcssheading&quot;&gt;External CSS&lt;/h1&gt;
    &lt;br /&gt;
    &lt;p class=&quot;Externalcsspara&quot&gt;his is the Example of the External CSS in which we......  <a onclick="hide(a='externalcss')" style ="color:blue;">Click Here to hide code</a> &lt;/p&gt;
                        </pre>
                    </code>
                </div>
                <br /><br />
            </div>
        </form>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 20px auto 1px auto;">
        <button class="btn btn-danger" onclick="Toogle(a='Sourcecode')">Show/Hide Code</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="location.href='/../First.aspx'">Go to Main Page</button>
    </div>
    <div class="CodeAreaa" style="border: none; margin: 1px auto 10px auto; display: none;" id="Sourcecode">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#Desinecode"><button class="btn btn-danger" onclick="Toogle(a='Desinecode')">Show/Hide Design Part </button></a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#logiccode"><button class="btn btn-danger" onclick="Toogle(a='logiccode')">Show/Hide Logic Part</button></a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#stylecss"><button class="btn btn-danger" onclick="Toogle(a='stylecss')">Show/Hide Style.css file</button></a>
    </div>
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;Css_Theme.aspx.cs&quot; Inherits=&quot;CssTheme_Css_Theme&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
    &lt;title&gt;Css And Themes&lt;/title&gt;
    &lt;link rel=&quot;stylesheet&quot; href=&quot;StyleSheet.css&quot; /&gt;
    &lt;style&gt;
        .CodeAreaa {
            border: 2px solid red;
            border-radius: 20px;
            margin: 20px auto 20px auto;
            padding: 20px;
            width: 50%;
            
        }
        .internalcssheading{
            display: inline-block;
            width: 35%; 
            padding: 14px 48px; 
            margin: 0px 304px; 
            border: 2px solid black; 
            border-radius: 42px; 
            background-color: lawngreen;
        }
        .internalcsspara{
            color:darkblue; 
            font-size: 18px; 
            font-family: cursive
        }
    &lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;div class=&quot;CodeAreaa&quot;&gt;
        &lt;form id=&quot;form1&quot; runat=&quot;server&quot;&gt;
            &lt;div&gt;
                &lt;h1 style=&quot;display: inline-block; width: 30%; padding: 14px 48px; margin: 0px 330px; border: 2px solid black; border-radius: 42px; background-color: aqua;&quot;&gt;Inline CSS&lt;/h1&gt;
                &lt;br /&gt; &lt;br /&gt;
                &lt;p style=&quot;color: ForestGreen; font-size: 18px; font-family: cursive&quot;&gt;
                    This is the Example Of the &lt;b&gt;Inline CSS&lt;/b&gt; in which we use &quot;Sytle&quot; Attribute is used inside Any HTML &lt;br /&gt; Tag
                    to give the Styling. To see the code of the inline CSS &lt;a onclick=&quot;Toogle(a='inlinecss')&quot;&gt;&lt;b&gt;Click here&lt;/b&gt;&lt;/a&gt;&lt;/p&gt;
                &lt;br /&gt;&lt;br /&gt;
                &lt;h1 class=&quot;internalcssheading&quot;&gt;Internal CSS&lt;/h1&gt;
                &lt;br /&gt; &lt;br /&gt;
                &lt;p class=&quot;internalcsspara&quot;&gt;This is the Example of the &lt;b&gt;Internal CSS&lt;/b&gt; In which we are using the Style Tag in head part of the&lt;br /&gt;HTML Page
                    where we select the different different html tag for styling with the help of Selectors&lt;br /&gt; like ID,Class,Tag name etc.
                    To see the Code of Internal CSS &lt;a onclick=&quot;Toogle(a='internalcss')&quot;&gt;&lt;b&gt;Click here&lt;/b&gt;&lt;/a&gt;&lt;/p&gt;
                &lt;br /&gt; &lt;br /&gt;
                &lt;h1 class=&quot;Externalcssheading&quot;&gt;External CSS&lt;/h1&gt;
                &lt;p class=&quot;Externalcsspara&quot;&gt;This is the Example of the &lt;b&gt;External CSS&lt;/b&gt; in which we are creating the new file name as StyleSheet.css&lt;br /&gt; where we are going to 
                    write our stlying part by selecting the tag using css selectors. And we are using&lt;br /&gt; the link tag to link that css file with this file to see 
                    the code of external CSS &lt;a onclick=&quot;Toogle(a='externalcss')&quot;&gt;&lt;b&gt;Click here&lt;/b&gt;&lt;/a&gt;
                &lt;/p&gt;
                &lt;br /&gt;&lt;br /&gt;
            &lt;/div&gt;
        &lt;/form&gt;
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
Logic Part Not Required</pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="stylecss" style="display: none;">
        <div>
            <code>
                <pre>
body {
}
.Externalcssheading{
    display: inline-block;
    width: 35%; 
    padding: 14px 48px; 
    margin: 0px 304px; 
    border: 2px solid black; 
    border-radius: 42px; 
    background-color: Khaki;
}

.Externalcsspara{
    color:Olive; 
    font-size: 18px; 
    font-family: cursive;
}

.Selector123{
    display: inline-block;
    width: 35%; 
    padding: 14px 48px; 
    margin: 0px 304px; 
    border: 2px solid black; 
    border-radius: 42px; 
    background-color: Khaki;
}
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='stylecss')">Hide </button>
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
