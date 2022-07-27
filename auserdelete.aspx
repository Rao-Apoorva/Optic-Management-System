<%@ Page Language="C#" AutoEventWireup="true" CodeFile="auserdelete.aspx.cs" Inherits="auserdelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="userdelete.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="loginbox1">
      <h2 class="h1">
          DELETE USER</h2>
        <h2 style="text-align: left">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;<asp:Label ID="lblcuser" runat="server" CssClass="h2" Text="Name" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"></asp:Label>&nbsp;</h2>
        <h2 style="text-align: left">
            &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtcuser" runat="server" CssClass="txtcuser" OnTextChanged="txtcuser_TextChanged"></asp:TextBox>&nbsp;&nbsp;</h2>
        <h2 style="text-align: left">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
            <asp:Button ID="btnc" runat="server" CssClass="btnc" Text="DELETE" OnClick="btnc_Click" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" Height="42px" Width="360px" BorderStyle="Groove" /></h2>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Cambria" Font-Size="12pt"
            OnClick="LinkButton1_Click" CssClass="lnkback">BACK</asp:LinkButton><br />
    
    </div>
    </form>
</body>
</html>
