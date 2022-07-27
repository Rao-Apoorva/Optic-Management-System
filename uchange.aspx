<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uchange.aspx.cs" Inherits="uchange" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
   <link href="https://fonts.googleapis.com/css?family=Cinzel&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round&display=swap" rel="stylesheet">

    <link href="styleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="loginbox">
    <img src="https://i.postimg.cc/zDyt7KCv/a1.jpg" alt="Alternate Text" class="user" />&nbsp;
    <h2 class="h2">
        Change Password&nbsp;<br />
        </h2>
        <form id="Form1" runat="server">
            <asp:TextBox ID="txtuser" runat="server" CssClass="usertxt" Height="24px" Width="303px" placeholder="username"></asp:TextBox><br />
            <asp:TextBox ID="txtold" runat="server" CssClass="passtxt" Height="35px" Width="318px" placeholder="old password"></asp:TextBox><br />
            &nbsp;<asp:TextBox ID="txtnew" runat="server" CssClass="passtxt" Height="29px" Width="288px" placeholder="new password"></asp:TextBox><br />
            <asp:TextBox ID="txtcnfrm" runat="server" CssClass="passtxt" Height="32px" Width="301px" placeholder="confirm password"></asp:TextBox><br />
            <br />
            <br />
            &nbsp; &nbsp;&nbsp;<br />
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp; &nbsp;&nbsp; 
            <br />
            &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="Label" Height="20px"></asp:Label><br />
            <br />
            <br />
        <asp:Button ID="btnsign" runat="server" CssClass="signbtn" Text="Save And Continue" OnClick="btnsign_Click" Width="321px" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" Height="30px" /><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
        <br />
    </form>
    
    </div>
</body>
</html>