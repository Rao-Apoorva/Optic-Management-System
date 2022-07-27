<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
   <link href="https://fonts.googleapis.com/css?family=Cinzel&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round&display=swap" rel="stylesheet">

    <link href="styleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="loginbox">
    <img src="https://image.flaticon.com/icons/png/512/925/925125.png" alt="Alternate Text" class="user" />&nbsp;
    <h2 class="h2">LOGIN <br />
        </h2>
        <form id="Form1" runat="server">
            <br />
        <br />
            &nbsp;<asp:TextBox ID="txtname" runat="server" CssClass="usertxt" placeholder="Enter Name" Height="27px"></asp:TextBox><br />
        <br />
            <br />
        <asp:TextBox ID="txtpass" runat="server" CssClass="passtxt" placeholder="**********" Height="33px" TextMode="Password" MaxLength="10"></asp:TextBox>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" ForeColor="Cyan" Text="Show Password"  OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" Font-Names="Cambria" Font-Size="11pt" CssClass="check" />
            &nbsp;&nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <asp:Button ID="btnsign" runat="server" CssClass="signbtn" Text="SIGN IN" OnClick="btnsign_Click" Width="322px" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" Height="25px" /><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:LinkButton ID="lnkchnge" runat="server" CssClass="lnkchnge" OnClick="lnkchnge_Click" Font-Bold="False" Font-Names="Cambria" Font-Size="12pt">Change Password</asp:LinkButton><br />
        <br />
    </form>
    
    </div>
</body>
</html>