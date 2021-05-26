<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation.aspx.cs" Inherits="Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <h1 class="hheading" style="margin: 30px auto 60px auto;">Understanding Validation</h1>
    <div class="CodeAreaa">
        <form id="form1" runat="server">
            <div aria-expanded="undefined">
                <h1> ELPHINSTONE REGISTRATION FORM 2020</h1>
                FIRST NAME : <asp:TextBox ID="TextBox1" runat="server" ControlToValidate="TextBox1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>--%>
                 <br /><br />
               LAST NAME   : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                 <br /><br />
                ADDRESS  :  <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox3"></asp:RequiredFieldValidator> 
                 <br /><br />
                MOBILE NO :<asp:TextBox ID="TextBox4" runat="server" TextMode="Phone" MaxLength="10"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox4"  ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" ControlToValidate="TextBox4"  ValidationExpression="[0-9]{10}" ></asp:RangeValidator>
                 <br /><br />
                Email ID :<asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox5"></asp:RequiredFieldValidator> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="@ missing...." ControlToValidate="TextBox5"  ValidationExpression=".+@.+"></asp:RegularExpressionValidator> 
                 <br /><br />
                  AGE : <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be between 18 to 30" ControlToValidate="TextBox6" MaximumValue="30" MinimumValue="18"></asp:RangeValidator> 
                 <br /><br />
                PASSWORD :<asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                 <br /><br />
                CONFIRM PASSWORD :  <asp:TextBox ID="TextBox8" runat="server"  TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field cannot be blank" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password does not match..." ControlToCompare="TextBox7"  ControlToValidate="TextBox8"></asp:CompareValidator>
                 <br /><br />
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" /> &nbsp; &nbsp; 
                    <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                    <br /><br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
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
            &lt;h1&gt; ELPHINSTONE REGISTRATION FORM 2020&lt;/h1&gt;
            FIRST NAME : &lt;asp:TextBox ID=&quotTextBox1&quot runat=&quotserver&quot ControlToValidate=&quotTextBox1&quot&gt;&lt;/asp:TextBox&gt; 
            &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator1&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox1&quot&gt;&lt;/asp:RequiredFieldValidator&gt;
            &lt;%--&lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator1&quot runat=&quotserver&quot ErrorMessage=&quotRequiredFieldValidator&quot ControlToValidate=&quotTextBox1&quot&gt;&lt;/asp:RequiredFieldValidator&gt;--%&gt;
                &lt;br /&gt;&lt;br /&gt;
            LAST NAME   : &lt;asp:TextBox ID=&quotTextBox2&quot runat=&quotserver&quot&gt;&lt;/asp:TextBox&gt; 
            &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator2&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox2&quot&gt;&lt;/asp:RequiredFieldValidator&gt;
                &lt;br /&gt;&lt;br /&gt;
            ADDRESS  :  &lt;asp:TextBox ID=&quotTextBox3&quot runat=&quotserver&quot TextMode=&quotMultiLine&quot&gt;&lt;/asp:TextBox&gt;
            &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator3&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox3&quot&gt;&lt;/asp:RequiredFieldValidator&gt; 
                &lt;br /&gt;&lt;br /&gt;
            MOBILE NO :&lt;asp:TextBox ID=&quotTextBox4&quot runat=&quotserver&quot TextMode=&quotPhone&quot MaxLength=&quot10&quot &gt;&lt;/asp:TextBox&gt; 
                &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator4&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox4&quot&gt;&lt;/asp:RequiredFieldValidator&gt;
                &lt;asp:RegularExpressionValidator ID=&quotRegularExpressionValidator2&quot runat=&quotserver&quot  ErrorMessage=&quotRegularExpressionValidator&quot ControlToValidate=&quotTextBox4&quot  ValidationExpression=&quot[0-9]{10}&quot&gt;&lt;/asp:RegularExpressionValidator&gt;
                &lt;br /&gt;&lt;br /&gt;
            Email ID :&lt;asp:TextBox ID=&quotTextBox5&quot runat=&quotserver&quot TextMode=&quotEmail&quot&gt;&lt;/asp:TextBox&gt; 
                &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator5&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox5&quot&gt;&lt;/asp:RequiredFieldValidator&gt; 
                &lt;asp:RegularExpressionValidator ID=&quotRegularExpressionValidator1&quot runat=&quotserver&quot ErrorMessage=&quot@ missing....&quot ControlToValidate=&quotTextBox5&quot  ValidationExpression=&quot.+@.+&quot&gt;&lt;/asp:RegularExpressionValidator&gt; 
                &lt;br /&gt;&lt;br /&gt;
                AGE : &lt;asp:TextBox ID=&quotTextBox6&quot runat=&quotserver&quot TextMode=&quotNumber&quot&gt;&lt;/asp:TextBox&gt; 
                &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator6&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox6&quot&gt;&lt;/asp:RequiredFieldValidator&gt;
                &lt;asp:RangeValidator ID=&quotRangeValidator1&quot runat=&quotserver&quot ErrorMessage=&quotAge should be between 18 to 30&quot ControlToValidate=&quotTextBox6&quot MaximumValue=&quot30&quot MinimumValue=&quot18&quot&gt;&lt;/asp:RangeValidator&gt; 
                &lt;br /&gt;&lt;br /&gt;
            PASSWORD :&lt;asp:TextBox ID=&quotTextBox7&quot runat=&quotserver&quot TextMode=&quotPassword&quot&gt;&lt;/asp:TextBox&gt;
                &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator7&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox7&quot&gt;&lt;/asp:RequiredFieldValidator&gt;
                &lt;br /&gt;&lt;br /&gt;
            CONFIRM PASSWORD :  &lt;asp:TextBox ID=&quotTextBox8&quot runat=&quotserver&quot  TextMode=&quotPassword&quot&gt;&lt;/asp:TextBox&gt;
                &lt;asp:RequiredFieldValidator ID=&quotRequiredFieldValidator8&quot runat=&quotserver&quot ErrorMessage=&quotField cannot be blank&quot ControlToValidate=&quotTextBox8&quot&gt;&lt;/asp:RequiredFieldValidator&gt;
                &lt;asp:CompareValidator ID=&quotCompareValidator1&quot runat=&quotserver&quot ErrorMessage=&quotpassword does not match...&quot ControlToCompare=&quotTextBox7&quot  ControlToValidate=&quotTextBox8&quot&gt;&lt;/asp:CompareValidator&gt;
                &lt;br /&gt;&lt;br /&gt;
                &lt;asp:Button ID=&quotButton1&quot runat=&quotserver&quot Text=&quotSUBMIT&quot /&gt; &nbsp; &nbsp; 
                &lt;asp:Button ID=&quotButton2&quot runat=&quotserver&quot Text=&quotReset&quot OnClick=&quotButton2_Click&quot /&gt;
                &lt;br /&gt;&lt;br /&gt;
                &lt;asp:ValidationSummary ID=&quotValidationSummary1&quot runat=&quotserver&quot /&gt;
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
Logic Part code Not Required.
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
