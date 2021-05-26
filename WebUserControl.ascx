<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>

<h4>Web User Controls</h4>
<br />
Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br /><br /> 
City:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br /><br /> 
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
<br /><br /> 
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>