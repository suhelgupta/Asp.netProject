<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddRotator.aspx.cs" Inherits="AddRotator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ad Rotator</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Ad Rotator</h1> 
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:Timer ID="Timer1" Interval="2000" runat="server"></asp:Timer>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger EventName="Tick" ControlID="Timer1" />
                    </Triggers>
                    <ContentTemplate>
                        <center>
                            <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/adds.xml" runat="server" Height="400px" Width="400px" Target="_blank" />
                        </center>
                    </ContentTemplate>
                </asp:UpdatePanel>
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
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-danger" onclick="Toogle(a='xmlcode')">Show/Hide Xml Part</button>
    </div>
   <div class="CodeAreaa" id="Desinecode" style="display:none;">
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
            &lt;asp:ScriptManager ID=&quotScriptManager1&quot runat=&quotserver&quot&gt;&lt;/asp:ScriptManager&gt;
            &lt;asp:Timer ID=&quotTimer1&quot Interval=&quot2000&quot runat=&quotserver&quot&gt;&lt;/asp:Timer&gt;
            &lt;asp:UpdatePanel ID=&quotUpdatePanel1&quot runat=&quotserver&quot&gt;
                &lt;Triggers&gt;
                    &lt;asp:AsyncPostBackTrigger EventName=&quotTick&quot ControlID=&quotTimer1&quot /&gt;
                &lt;/Triggers&gt;
                &lt;ContentTemplate&gt;
                    &lt;center&gt;
                        &lt;asp:AdRotator ID=&quotAdRotator1&quot AdvertisementFile=&quot~/adds.xml&quot runat=&quotserver&quot Height=&quot400px&quot Width=&quot400px&quot Target=&quot_blank&quot /&gt;
                    &lt;/center&gt;
                &lt;/ContentTemplate&gt;
            &lt;/asp:UpdatePanel&gt;
        &lt;/div&gt;
    &lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='Desinecode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="logiccode" style="display:none;">
        <div>
            <code>
                <pre>
Code Not Required.
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='logiccode')">Hide </button>
        </div>
    </div>
    <div class="CodeAreaa" id="xmlcode" style="display:none;">
        <div>
            <code>
                <pre>
&lt;?xml version=&quot1.0&quot encoding=&quotutf-8&quot ?&gt;

&lt;Advertisements&gt;
  &lt;Ad&gt;
    &lt;ImageUrl&gt;&lt;![CDATA[https://cdn.vox-cdn.com/thumbor/uipVF77tOP0f-3cRi7bb82po12E=/0x0:2040x1360/1200x800/filters:focal(857x517:1183x843)/cdn.vox-cdn.com/uploads/chorus_image/image/66310811/acastro_180522_facebook_0002.0.jpg]]&gt;&lt;/ImageUrl&gt;
    &lt;!--&lt;ImageUrl&gt;~/image/Facebook.jpg&lt;/ImageUrl&gt;--&gt;
    &lt;NavigateUrl&gt;https://www.facebook.com&lt;/NavigateUrl&gt;
    &lt;AlternateText&gt;&lt;/AlternateText&gt;
  &lt;/Ad&gt;
  
  &lt;Ad&gt;
    &lt;ImageUrl&gt;&lt;![CDATA[https://play-lh.googleusercontent.com/vA4tG0v4aasE7oIvRIvTkOYTwom07DfqHdUPr6k7jmrDwy_qA_SonqZkw6KX0OXKAdk]]&gt;&lt;/ImageUrl&gt;
    &lt;!--&lt;ImageUrl&gt;~/image/youtube.Png&lt;/ImageUrl&gt;--&gt;
    &lt;NavigateUrl&gt;https://www.youtube.com&lt;/NavigateUrl&gt;
    &lt;AlternateText&gt;Image of Youtube&lt;/AlternateText&gt;
  &lt;/Ad&gt;

  &lt;Ad&gt;
    &lt;ImageUrl&gt;&lt;![CDATA[https://www.google.com/logos/doodles/2015/googles-new-logo-5078286822539264.3-hp2x.gif]]&gt;&lt;/ImageUrl&gt;
    &lt;!--&lt;ImageUrl&gt;~/image/Google.jpg&lt;/ImageUrl&gt;--&gt;
    &lt;NavigateUrl&gt;https://www.google.com&lt;/NavigateUrl&gt;
    &lt;AlternateText&gt;Image of Youtube&lt;/AlternateText&gt;
  &lt;/Ad&gt;
&lt;/Advertisements&gt;
                </pre>
            </code>
        <button class="btn btn-danger btn-sm" style="margin-left:95%" onclick="hide(a='xmlcode')">Hide </button>
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
