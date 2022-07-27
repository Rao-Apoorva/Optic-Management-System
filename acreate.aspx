<%@ Page Language="C#" AutoEventWireup="true" CodeFile="acreate.aspx.cs" Inherits="acreate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="create.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="loginbox1">
      <h2 class="h2">CREATE USER</h2>
         <h2 style="text-align: left">
        <h2 class="h3">USER NAME</h2></h2>
        &nbsp;
            <asp:TextBox ID="txtcuser" runat="server" CssClass="txtcuser" OnTextChanged="txtcuser_TextChanged"></asp:TextBox><h2 style="text-align: left">
            &nbsp;&nbsp;</h2>
        <h2 style="text-align: left">
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnc" runat="server" CssClass="btnc" Text="CREATE" OnClick="btnc_Click" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" BorderStyle="Groove" Height="42px" Width="360px" /></h2>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Cambria" Font-Size="12pt"
            OnClick="LinkButton1_Click" CssClass="lnkback">BACK</asp:LinkButton><br />
    
    </div>
    </form>
</body>
</html>
