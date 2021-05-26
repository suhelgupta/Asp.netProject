<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CssSelector.aspx.cs" Inherits="CssTheme_CssSelector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Css And Themes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/../Style.css" />
    <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="stylesheet" href="Cssselectors.css" />
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
    <h1 class="hheading" style="margin: 30px auto 60px auto; color:black;">Css And Themes</h1>
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
                <h2 class="Selectorcssheading">  Css Selectors</h2>
                <br /><br />
                <p>1. <b>Universal Selector</b><br />This Line is the example Of the Universal Selector Because We Have Not Given Any Style To this Tag But It has A different<br />
                     color because of universal selector which apply the the style to all tages. We Use * symboal to use universal Css<br /> 
                    To see the code of the Universal Selector <a onclick="Toogle(a='Universal')"><b>Click here</b></a> </p>
                <div id="Universal" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
    Css code &darr;
    * {
        font-size: 17px;
        color : red;
    }
    HTML code &darr;
    &lt;p&gt;This Line is the example Of the Universal Selector...........<a onclick="hide(a='Universal')" style ="color:blue;font-size: 11px;">Click Here to hide code</a>&lt;/p&gt;
                        </pre>
                    </code>
                </div>
                <br />
                <h6>2. <b style="color:DarkGreen">Type Selector</b><br />Type Selector is use to select a single tag to for giving styling. in this case I have giving the
                     style to h6 tag.<br /> So, Every h6 tag will get the same styling To see the code
                     of Type Selector <a onclick="Toogle(a='TypeSelect')"><b style ="color:DarkGreen;">Click here</b></a></h6>
                <div id="TypeSelect" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
    Css code &darr;
    h6 {
        font-weight: normal;
        color: DarkGreen;
    }
    HTML code &darr;
    &lt;h6&gt;Type Selector is use to select a single tag to for giving...........<a onclick="hide(a='TypeSelect')" style ="color:blue;font-size: 11px;">Click Here to hide code</a>&lt;/h6&gt;
                        </pre>
                    </code>
                </div>
                <br />
                <h6><h3>3. <b style="color:DarkMagenta">Group Selector</b></h3><br /><h4>We use group selector when we want to apply the same styling to different different tags</h4> 
                   <span> then we <br />will use group selectors.</span><h5>To see
                        the Code of group selector</h5> <a onclick="Toogle(a='groupselect')"><b style ="color:DarkMagenta;">Click here</b></a></h6>
                <div id="groupselect" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
    Css code &darr;
    h3,h4,h5, span{
        display: inline;
        color: DarkMagenta;
        font-weight: normal;
        font-size: 17px;
    }
    HTML code &darr;
    &lt;h6&gt;
    &lt;h3&gt;3. Group Selector&lt;/h3&gt;&lt;h4&gt;We use group selector when we want to apply the same styling to different different tags&lt;/h4&gt; 
    &lt;span&gt; then we &lt;br /&gt;will use group selectors.&lt;/span&gt;&lt;h5&gt;To see the Code of group selector&lt;/h5&gt;
    &lt;/h6&gt;<a onclick="hide(a='groupselect')" style ="color:blue;font-size: 11px;">Click Here to hide code</a>&lt;/h6&gt;
                        </pre>
                    </code>
                </div>
                <br /><br />
                <p id="IdSelector">4. <b style="color:DarkOrange">ID Selector</b><br />this line styling is done by ID Selector where we are stelecting the perticular tag by It's ID. We use # which denote that <br /> we are using id name
                    . To see the code of ID selector <a onclick="Toogle(a='IdSelect')"><b style ="color:DarkOrange;">Click here</b></a></p>
                <div id="IdSelect" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
    Css code &darr;
    #IdSelector{
        color:DarkOrange;
        text-decoration:underline;
    }
    HTML code &darr;
    &lt;p id="IdSelector"&gt;this line styling is done by ID Selector where we are stelecting the.........<a onclick="hide(a='IdSelect')" style ="color:blue;font-size: 11px;">Click Here to hide code</a>&lt;/p&gt;
                        </pre>
                    </code>
                </div>
                <p class="classselector">5.<b style="color:blue">Class Selector</b> <br />If I want to give a set of styling to so many different diggerent tags the in can create the class of few styling and<br /> then i will
                     add that class to a tag as attribute.</p>
                <p class="classselector"> We use (.)Period(dot) operator to denote the class in css file. </p><br />
                <span class="classselector">To see thee code of Class Selector <a onclick="Toogle(a='ClassSelect')"><b style ="color:blue;">Click here</b></a> </span>
                <div id="ClassSelect" style="display:none; border: 2px solid black">
                    <code>
                        <pre>
    Css code &darr;
    .classselector{
        display: inline;
        color: blue;
    }
    HTML code &darr;
     &lt;p class=&quot;classselector&quot;&gt;5.&lt;b style=&quot;color:blue&quot;&gt;Class Selector&lt;/b&gt; &lt;br /&gt; If I want to give a set of styling 
    to so many different diggerent tags the in can create the class of few styling and&lt;br /&gt; then i will add that class to a tag as attribute.&lt;/p&gt;
    &lt;p class=&quot;classselector&quot;&gt; We use (.)Period(dot) operator to denote the class in css file. &lt;/p&gt;&lt;br /&gt;
    &lt;span class=&quot;classselector&quot;&gt;To hide  thee code of Class Selector <a onclick="hide(a='ClassSelect')" style ="color:blue;font-size: 11px;">Click Here to hide code</a>  &lt;/span&gt;
                        </pre>
                    </code>
                </div>
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
        <button class="btn btn-danger" onclick="Toogle(a='Cssfile')">Show/Hide CSS File</button>
    </div>
    <div class="CodeAreaa" id="Desinecode" style="display: none;">
        <div>
            <code>
                <pre>
&lt;%@ Page Language=&quot;C#&quot; AutoEventWireup=&quot;true&quot; CodeFile=&quot;CssSelector.aspx.cs&quot; Inherits=&quot;CssTheme_CssSelector&quot; %&gt;

&lt;!DOCTYPE html&gt;

&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;
&lt;head runat=&quot;server&quot;&gt;
  &lt;title&gt;Css And Themes&lt;/title&gt;
    &lt;link rel=&quot;stylesheet&quot; href=&quot;Cssselectors.css&quot; /&gt;
&lt;/head&gt;
&lt;body&gt;
    &lt;h2 class=&quot;Selectorcssheading&quot;&gt;  Css Selectors&lt;/h2&gt;
    &lt;br /&gt;&lt;br /&gt;
    &lt;p&gt;1. &lt;b&gt;Universal Selector&lt;/b&gt;&lt;br /&gt;This Line is the example Of the Universal Selector Because We Have Not Given Any Style To this Tag But It has A different&lt;br /&gt;
            color because of universal selector which apply the the style to all tages. We Use * symboal to use universal Css&lt;br /&gt; 
        To see the code of the Universal Selector &lt;a onclick=&quot;Toogle(a='Universal')&quot;&gt;&lt;b&gt;Click here&lt;/b&gt;&lt;/a&gt; &lt;/p&gt;

    &lt;h6&gt;2. &lt;b style=&quot;color:DarkGreen&quot;&gt;Type Selector&lt;/b&gt;&lt;br /&gt;Type Selector is use to select a single tag to for giving styling. in this case I have giving the
            style to h6 tag.&lt;br /&gt; So, Every h6 tag will get the same styling To see the code
            of Type Selector &lt;a onclick=&quot;Toogle(a='TypeSelect')&quot;&gt;&lt;b style =&quot;color:DarkGreen;&quot;&gt;Click here&lt;/b&gt;&lt;/a&gt;&lt;/h6&gt;

    &lt;br /&gt;
    &lt;h6&gt;&lt;h3&gt;3. &lt;b style=&quot;color:DarkMagenta&quot;&gt;Group Selector&lt;/b&gt;&lt;/h3&gt;&lt;br /&gt;&lt;h4&gt;We use group selector when we want to apply the same styling to different different tags&lt;/h4&gt; 
        &lt;span&gt; then we &lt;br /&gt;will use group selectors.&lt;/span&gt;&lt;h5&gt;To see
            the Code of group selector&lt;/h5&gt; &lt;a onclick=&quot;Toogle(a='groupselect')&quot;&gt;&lt;b style =&quot;color:DarkMagenta;&quot;&gt;Click here&lt;/b&gt;&lt;/a&gt;&lt;/h6&gt;
    
    &lt;br /&gt;&lt;br /&gt;
    &lt;p id=&quot;IdSelector&quot;&gt;4. &lt;b style=&quot;color:DarkOrange&quot;&gt;ID Selector&lt;/b&gt;&lt;br /&gt;this line styling is done by ID Selector where we are stelecting the perticular tag by It's ID. We use # which denote that &lt;br /&gt; we are using id name
        . To see the code of ID selector &lt;a onclick=&quot;Toogle(a='IdSelect')&quot;&gt;&lt;b style =&quot;color:DarkOrange;&quot;&gt;Click here&lt;/b&gt;&lt;/a&gt;&lt;/p&gt;

    &lt;p class=&quot;classselector&quot;&gt;5.&lt;b style=&quot;color:blue&quot;&gt;Class Selector&lt;/b&gt; &lt;br /&gt;If I want to give a set of styling to so many different diggerent tags the in can create the class of few styling and&lt;br /&gt; then i will
            add that class to a tag as attribute.&lt;/p&gt;
    &lt;p class=&quot;classselector&quot;&gt; We use (.)Period(dot) operator to denote the class in css file. &lt;/p&gt;&lt;br /&gt;
    &lt;span class=&quot;classselector&quot;&gt;To see thee code of Class Selector &lt;a onclick=&quot;Toogle(a='ClassSelect')&quot;&gt;&lt;b style =&quot;color:blue;&quot;&gt;Click here&lt;/b&gt;&lt;/a&gt; &lt;/span&gt;
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
Logic Part Not Required.</pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="Cssfile" style="display: none;">
        <div>
            <code>
                <pre>
* {
    font-size: 17px;
    color : red;
}

.Selectorcssheading{
    display: inline-block;
    width: 29%; 
    padding: 14px 48px; 
    margin: 0px 328px; 
    border: 2px solid black; 
    border-radius: 42px; 
    background-color: Aquamarine;
    font-size: 32px;
    color : black;
}

h6{
    font-weight: normal;
    color: DarkGreen;
}

h3,h4,h5, span{
    display: inline;
    color: DarkMagenta;
    font-weight: normal;
    font-size: 17px;
    
}

#IdSelector{
    color:DarkOrange;
    text-decoration:underline;
}

.classselector{
    display: inline;
    color: blue;
}
                </pre>
            </code>
            <button class="btn btn-danger btn-sm" style="margin-left: 95%" onclick="hide(a='Cssfile')">Hide </button>
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
