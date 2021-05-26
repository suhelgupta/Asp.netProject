<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Registration Form</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div>
            <div>
               
                First Name:&nbsp;<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <br /><br />
                Last Name:&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br /><br />
                Age:&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                <br /><br />
                Gender:&nbsp;<asp:RadioButton ID="RadioButton1" GroupName="Gender" runat="server" Text="Male" />&nbsp;<asp:RadioButton ID="RadioButton2" GroupName="Gender" runat="server" Text="Female" />
                <br /><br />
                Email id:&nbsp; <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox>
                <br /><br />
                Mobile Number: &nbsp;<asp:TextBox ID="TextBox5" runat="server" TextMode="Phone"></asp:TextBox>
                <br /><br />
                SELECT THE LANGUAGE:<br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="C" /><br />
                <asp:CheckBox ID="CheckBox2" runat="server" Text="C++" /><br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="Python" /><br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="C#" />
                <br /><br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
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
            First Name:&nbsp;&lt;asp:TextBox ID=&quotTextBox1&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            Last Name:&nbsp;&lt;asp:TextBox ID=&quotTextBox2&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            Age:&nbsp;&lt;asp:TextBox ID=&quotTextBox3&quot runat=&quotserver&quot TextMode=&quotNumber&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            Gender:&nbsp;&lt;asp:RadioButton ID=&quotRadioButton1&quot GroupName=&quotGender&quot runat=&quotserver&quot Text=&quotMale&quot /&gt;&nbsp;&lt;asp:RadioButton ID=&quotRadioButton2&quot GroupName=&quotGender&quot runat=&quotserver&quot Text=&quotFemale&quot /&gt;
            &lt;br /&gt;&lt;br /&gt;
            Email id:&nbsp; &lt;asp:TextBox ID=&quotTextBox4&quot runat=&quotserver&quot TextMode=&quotEmail&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            Mobile Number: &nbsp;&lt;asp:TextBox ID=&quotTextBox5&quot runat=&quotserver&quot TextMode=&quotPhone&quot&gt;&lt;/asp:TextBox&gt;
            &lt;br /&gt;&lt;br /&gt;
            SELECT THE LANGUAGE:&lt;br /&gt;
            &lt;asp:CheckBox ID=&quotCheckBox1&quot runat=&quotserver&quot Text=&quotC&quot /&gt;&lt;br /&gt;
            &lt;asp:CheckBox ID=&quotCheckBox2&quot runat=&quotserver&quot Text=&quotC++&quot /&gt;&lt;br /&gt;
            &lt;asp:CheckBox ID=&quotCheckBox3&quot runat=&quotserver&quot Text=&quotPython&quot /&gt;&lt;br /&gt;
            &lt;asp:CheckBox ID=&quotCheckBox4&quot runat=&quotserver&quot Text=&quotC#&quot /&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotSubmit&quot OnClick=&quotButton1_Click&quot /&gt;
            &nbsp;&nbsp;
            &lt;asp:Button ID=&quotButton2&quot runat=&quotserver&quot Text=&quotReset&quot OnClick=&quotButton2_Click&quot /&gt;
            &lt;br /&gt;&lt;br /&gt;
            &lt;asp:Label ID=&quotLabel1&quot runat=&quotserver&quot Text=&quot&quot&gt;&lt;/asp:Label&gt;
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text += "First Name: " + TextBox1.Text + "&lt;br /&gt;"; 
        Label1.Text += "Last Name: " + TextBox2.Text + "&lt;br /&gt;";
        Label1.Text += "Age: " + TextBox3.Text.ToString() + "&lt;br /&gt;";
        if (RadioButton1.Checked == true)
        {
            Label1.Text += "Gender: Male" + "&lt;br /&gt;";
        }
        if (RadioButton2.Checked == true)
        {
            Label1.Text += "Gender: Female" + "&lt;br /&gt;";
        }
        Label1.Text += "Email id: " + TextBox4.Text + "&lt;br /&gt;";
        Label1.Text += "Mobile Number: " + TextBox5.Text + "&lt;br /&gt;";

        Label1.Text += "Selected Languages are: " + "&lt;br /&gt;";
        if (CheckBox1.Checked == true)
        {
            Label1.Text += CheckBox1.Text + "&lt;br /&gt;";
        }
        if (CheckBox2.Checked == true)
        {
            Label1.Text += CheckBox2.Text + "&lt;br /&gt;";
        }
        if (CheckBox3.Checked == true)
        {
            Label1.Text += CheckBox3.Text + "&lt;br /&gt;";
        }
        if (CheckBox4.Checked == true)
        {
            Label1.Text += CheckBox4.Text + "&lt;br /&gt;";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        Label1.Text = "";
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
</body>
</html>
