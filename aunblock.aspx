<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aunblock.aspx.cs" Inherits="aunblock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="delete.css" rel="stylesheet" type="text/css" />
</head>
<body class="un">
    <form id="form1" runat="server">
    <div style="text-align: center; vertical-align: middle;" class="loginbox1">
    <h2 class="h10">UNBLOCK USER</h2>
     <br />
        <br />
     <h2 class="h3">USER NAME</h2>
        <br />
        <asp:TextBox ID="txtblck" runat="server" CssClass="txtblck" OnTextChanged="txtblck_TextChanged"></asp:TextBox><br />
        <br />
        <br />
        <asp:Button ID="btnblck" runat="server" CssClass="btnblck" OnClick="btnblck_Click"
            Text="OK" Width="360px" BorderStyle="Groove" Height="42px" /><br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="Linkbutton1">BACK</asp:LinkButton><br />
        <br />
        </div>
    </form>
</body>
</html>
