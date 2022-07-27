<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uforgot.aspx.cs" Inherits="uforgot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <link href="https://fonts.googleapis.com/css?family=Cinzel&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Crete+Round&display=swap" rel="stylesheet">

    <link href="uforget.css" rel="stylesheet" type="text/css" />
</head>
<body> <div class="loginbox">
    <img src="https://i.postimg.cc/zDyt7KCv/a1.jpg" alt="Alternate Text" class="user" />&nbsp;
    <h3 class="h2">
        forgot Password</h3>
    <form id="form1" runat="server">
    <div class="fpasbox" style="text-align: center; left: 40%; top: 10%;">
        <h2 style="text-align: center">
            <asp:TextBox ID="txtuser" runat="server" CssClass="txtpas" MaxLength="10" Width="328px" OnTextChanged="txtuser_TextChanged" placeholder="user name"></asp:TextBox>
            <asp:TextBox ID="txtpas" runat="server" CssClass="txtpas" TextMode="Password" MaxLength="10" Width="328px" placeholder="new password" ></asp:TextBox>
            <asp:TextBox ID="txtcpas" runat="server" CssClass="txtuser" Width="328px" ForeColor="DeepSkyBlue" placeholder="confirm password" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp; &nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpas"
                ControlToValidate="txtcpas" ErrorMessage="Password and Confirm password must be same!!!" ForeColor="LightSeaGreen" Height="1px" Width="409px"></asp:CompareValidator>
            &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="lbl1" runat="server" CssClass="lbl1" Height="20px"></asp:Label>
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp;
            &nbsp; &nbsp; <span
                style="color: white">&nbsp;</span></h2>
        <h2 style="text-align: center">
            &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp;
            <asp:TextBox ID="txtanswr" runat="server" CssClass="txtanswr" Height="25px"></asp:TextBox>&nbsp;&nbsp;
            &nbsp;&nbsp;<span style="color: white"></span> &nbsp; &nbsp;&nbsp;</h2>
        <h2 style="text-align: center">
            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="LightSeaGreen"></asp:Label>&nbsp;</h2>
        <h2 style="text-align: center">
            <span style="color: white">
            <asp:Button ID="btnsbmt" runat="server" CssClass="btnsbmt" Text="SUBMIT" OnClick="btnsbmt_Click" style="color: black" ForeColor="White" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" />&nbsp;</span></h2>
        <p>
            <span style="color: white">&nbsp;</span>&nbsp;</p>
        <p>
            &nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;
        </p>
        <p style="text-align: center">
            &nbsp; <span style="color: black">&nbsp;</span></p>
        <p>
            <span
                style="color: black">&nbsp;</span>&nbsp;</p>
        <p>
            <span style="color: black">&nbsp;</span>&nbsp;</p>
        <p>
            <span
                style="color: black">&nbsp;</span>&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <span style="color: black">&nbsp; </span></p>
        <p style="text-align: center">
            <span
                style="color: black">&nbsp;</span>&nbsp;</p>
        <h2>
            <br>
            <span style="color: black">&nbsp;</span></h2>
        
    </div>
    </form>
</body>
</html>
