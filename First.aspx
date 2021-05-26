<%@ Page Language="C#" AutoEventWireup="true" EnableSessionState="False" CodeFile="First.aspx.cs" Inherits="First" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This Is mY Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Style.css" />
    <style>
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <a class="navbar-brand" href="#">SKG</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
            
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#home12">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#Services">Services <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#contact">Contact <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">About Us <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" />
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

    <section id="home12">
        <div style="padding-top: 30px">
            <h1 class="text-center hheading">Welcome To SKG's World</h1>
        </div>
        <div id="mymaindiv">
            <div class="mycoll">
                <div class="myitems" onclick="location.href='CurrencyConverter.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold;">Currency Converter</p>
                </div>
                <div class="myitems" onclick="location.href='AdvCurrencyConverter.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold; font-size: 15px;">Advance Currency Converter</p>
                </div>
                <div class="myitems" onclick="location.href='ImageButton.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Image Button</p>
                </div>
                <div class="myitems" onclick="location.href='Selectfavprogram.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Select Fav Program</p>
                </div>
            </div>
            <div class="mycoll">
                <div class="myitems" onclick="location.href='BulletStyle.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Bullet Style</p>
                </div>
                <div class="myitems" onclick="location.href='TableControl.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold; font-size: 15px;">Table Control</p>
                </div>
                <div class="myitems" onclick="location.href='GreetingCardMaker.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Greeting Card Maker</p>
                </div>
                <div class="myitems" onclick="location.href='ImpoGreetingCard.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Improve Greeting Card</p>
                </div>
            </div>
            <div class="mycoll">
                <div class="myitems" onclick="location.href='DisplayException.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Display Exception</p>
                </div>
                <div class="myitems" onclick="location.href='SimpleTrace.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Simple Trace</p>
                </div>
                <div class="myitems" onclick="location.href='Validation.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold; font-size: 15px;">Validation</p>
                </div>
                <div class="myitems" onclick="location.href='RegistrationForm.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Registration Form</p>
                </div>
            </div>
            <div class="mycoll">
                <div class="myitems" onclick="location.href='AddRotator.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Add Rotator</p>
                </div>
                <div class="myitems" onclick="location.href='WebUserControl.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Web User Control</p>
                </div>
                <div class="myitems" onclick="location.href='ViewState.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">View State</p>
                </div>
                <div class="myitems" onclick="location.href='Cookies.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Cookies</p>
                </div>
            </div>
            <div class="mycoll">
                <div class="myitems" onclick="location.href='QueryString.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Query String</p>
                </div>
                <div class="myitems" onclick="location.href='SessionApplication.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Session Applications</p>
                </div>
                <div class="myitems" onclick="location.href='/CssTheme/Css_Theme.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">CSS's And Theames</p>
                </div>
                <div class="myitems" onclick="location.href='/MasterPage/Home.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Master Page</p>
                </div>
            </div>
            <div class="mycoll">
                <div class="myitems" onclick="location.href='LocalDatabase.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Local Database<br />
                        <br>
                    </p>
                </div>
                <div class="myitems" onclick="location.href='ExternalDatabase.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">External Database </p>
                </div>
                <div class="myitems" onclick="location.href='DataListControls.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">DataList Controls</p>
                </div>
                <div class="myitems" onclick="location.href='DropDownListControls.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">DropDownList Controls</p>
                </div>
            </div>

             <div class="mycoll">
                <div class="myitems" onclick="location.href='MultiDropDownListControls.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Multi DropDown Control</p>
                </div>
                <div class="myitems" onclick="location.href='DropDownListValues.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">DropDownList With Values</p>
                </div>
                <div class="myitems" onclick="location.href='MultiDropDownListValues.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Multi DropDown With Values</p>
                </div>
                <div class="myitems" onclick="location.href='GridViewDatabase.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Grid View of Database</p>
                </div>
            </div>

             <div class="mycoll">
                <div class="myitems" onclick="location.href='Login.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Securrity Fundamental</p>
                </div>
                <div class="myitems" onclick="location.href='progressbarwithajax.aspx'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Progress bar with AJAX</p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
            </div>

             <%-- <div class="mycoll">
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
            </div>--%>

            <div class="mycoll">
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
                <div class="myitems" onclick="location.href='#'" style="padding: 13px; margin-top: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"><br /><br /></p>
                </div>
            </div>


        </div>
        <%--<h1 class="hheading" style="margin-top:50px; margin-bottom:1px;">Console Applications</h1>
        <div class="Mymaindiv" style="margin-top:30px;">
            <div class="mycoll">
                <div class="myitems" onclick="location.href='ConsoleFourNumProduct.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold">Product of four number</p>
                </div>
                <div class="myitems" onclick="location.href='WebUserControl.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"></p>
                </div>
                <div class="myitems" onclick="location.href='RegistrationForm.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"></p>
                </div>
                <div class="myitems" onclick="location.href='AddRotator.aspx'" style="padding: 13px; margin-bottom: 1px;">
                    <p class="intext" style="font-family: cursive; font-weight: bold"></p>
                </div>
            </div>
        </div>--%>
    </section>
    <%--<hr />
    <section id="Services" style="height: 150px">
        <h1 class="hheading" style="margin-top: 40px; margin-bottom: 40px">You Can See Our Services In Home Section</h1>
    </section>--%>
    <hr />
    <section id="contact">
        <h1 class="hheading">Contact Us</h1>
        <form runat="server">
            <div id="contact-box123" style="margin: 5px auto 5px auto; width: 35%; position: relative;">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="Text1" runat="server" required />
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="Text2" runat="server" required />
                    <%--<input type="text" class="form-control" id="email" runat="server" required />--%>
                    <%--<input type="email" class="form-control" id="email" runat="server" required />--%>
                </div>
                <div class="form-group">
                    <label for="Email">Enter Your Quries:</label>
                    <textarea class="form-control" id="quaries" runat="server"></textarea>
                </div>
                <%--<button type="submit" class="btn btn-primary" runat="server" onclick="Submitfom">Submit</button>--%>
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" class="btn btn-primary" Style="margin-left: 507px; padding-left: 19px; padding-right: 19px;" Text="Reset" OnClick="Button2_Click" />
                <%--<button type="reset" class="btn btn-primary" style="margin-left: 507px; padding-left: 19px; padding-right: 19px;">Reset</button>--%>
                <br />
                <p id="pid" runat="server" style="display: none"></p>
            </div>
        </form>
    </section>

</body>
</html>
