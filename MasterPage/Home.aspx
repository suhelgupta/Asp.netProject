<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="MasterPage_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1>This is the Home Page </h1>
    <br />
    <p>This is the Home Page which of the demo of th MAster Page.<br />
        In this i am tring to make one master page Which Contain all main tags like HTML,BODY,HEAD. <br />
        or in in simple this master page act like a template of the website.<br /> we just want to use the tampalte to fill the page accodding to tamplate
        <br /><br />TO see the How template Look Like <a href="MasterPage.aspx">Click here</a>
    </p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
&lt;%@ Page Title=&quot&quot Language=&quotC#&quot MasterPageFile=&quot~/CssTheamMasterPage/MasterPage.master&quot AutoEventWireup=&quottrue&quot CodeFile=&quotHome.aspx.cs&quot Inherits=&quotCssTheamMasterPage_Home&quot %&gt;

&lt;asp:Content ID=&quotContent1&quot ContentPlaceHolderID=&quothead&quot Runat=&quotServer&quot&gt;
&lt;/asp:Content&gt;
&lt;asp:Content ID=&quotContent2&quot ContentPlaceHolderID=&quotContentPlaceHolder1&quot Runat=&quotServer&quot&gt;
     &lt;h1&gt;This is the Home Page &lt;/h1&gt;
    &lt;br /&gt;
    &lt;p&gt;This is the Home Page which of the demo of th MAster Page.&lt;br /&gt;
        In this i am tring to make one master page Which Contain all main tags like HTML,BODY,HEAD. &lt;br /&gt;
        or in in simple this master page act like a template of the website.&lt;br /&gt; we just want to use the tampalte to fill the page accodding to tamplate
        &lt;br /&gt;&lt;br /&gt;TO see the How template Look Like &lt;a href=&quotMasterPage.aspx&quot&gt;Click here&lt;/a&gt;
    &lt;/p&gt;
&lt;/asp:Content&gt;
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
Logic Part Not Required
</asp:Content>

