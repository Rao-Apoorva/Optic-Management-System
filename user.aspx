<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
   <link href="https://fonts.googleapis.com/css?family=Cinzel&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round&display=swap" rel="stylesheet">

    <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <div class="loginbox1">
     <img src="https://i.postimg.cc/zDyt7KCv/a1.jpg"alt="Alternate Text" class="userpic" />&nbsp;
    <h2 class="h2">LOGIN <br />
       </h2>
        <form id="Form2" runat="server">
            <br />
        <br />
            &nbsp;<asp:TextBox ID="txtname" runat="server" CssClass="usertxt" placeholder="Enter Name" Height="27px" OnTextChanged="txtname_TextChanged"></asp:TextBox><br />
        <br />
            <br />
        <asp:TextBox ID="txtpass" runat="server" CssClass="passtxt" placeholder="**********" Height="33px" TextMode="Password" MaxLength="10"></asp:TextBox>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp;&nbsp; &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" ForeColor="Cyan" Text="Show Password" AutoPostBack="True" Font-Names="Cambria" Font-Size="11pt" OnCheckedChanged="CheckBox1_CheckedChanged" CssClass="check" />
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" CssClass="lbl" Text="Label"></asp:Label><br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnsign" runat="server" CssClass="signbtn" Text="SIGN IN" OnClick="btnsign_Click" Width="274px" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" /><br />
        <asp:LinkButton ID="lnksign" runat="server" CssClass="forget" OnClick="lnksign_Click1" Font-Bold="False" Font-Names="Cambria" Font-Size="12pt" >Forget Password</asp:LinkButton>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:LinkButton ID="lnkchnge" runat="server" CssClass="lnkchnge" OnClick="lnkchnge_Click" Font-Bold="False" Font-Names="Cambria" Font-Size="12pt">Change Password</asp:LinkButton><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;<br />
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <br />
        <br />
    </form>
    
    </div>
    
</body>
</html>