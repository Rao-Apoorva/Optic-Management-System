<%@ Page Language="C#" AutoEventWireup="true" CodeFile="achange.aspx.cs" Inherits="achange" %>

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
    <h2 class="h2">
        Change Password&nbsp;<br />
        </h2>
        <form id="Form1" runat="server">
            <br />
        <br />
            &nbsp;<asp:TextBox ID="txtuser" runat="server" CssClass="usertxt" placeholder="user name" Height="27px"></asp:TextBox><br />
            <asp:TextBox ID="txtold" runat="server" CssClass="passtxt" Height="33px" MaxLength="10"
                placeholder=" old password" TextMode="Password"></asp:TextBox><br />
            <asp:TextBox ID="txtnew" runat="server" CssClass="passtxt" Height="33px" MaxLength="10"
                placeholder=" new password" TextMode="Password"></asp:TextBox><br />
            <asp:TextBox ID="txtcnfrm" runat="server" CssClass="passtxt" Height="33px" MaxLength="10"
                placeholder="confirm password" TextMode="Password"></asp:TextBox><br />
            &nbsp; &nbsp;<br />
            &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" ForeColor="Cyan" Text="Show Password"  OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" Font-Names="Cambria" Font-Size="11pt" CssClass="check" />
            &nbsp;&nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            <br />
            <br />
        <asp:Button ID="btnsign" runat="server" CssClass="signbtn" Text="Save And Continue" OnClick="btnsign_Click" Width="321px" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" Height="30px" /><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
        <br />
    </form>
    
    </div>
</body>
</html>