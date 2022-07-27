<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aupdate.aspx.cs" Inherits="aupdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="menu1.css" rel="stylesheet" type="text/css" />
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <form id="form1" runat="server">
   <div class="menu">
   <ul>
   <li><a href="default.aspx"><i class="fa fa-sign-out"></i> LOGOUT</a></li>
   </ul>
    <ul>
    <li><a><i class="fa fa-tags"></i>  SALES</a>
    <ul>
    <li><a href="abilldetail.aspx">BILL DETAILS</a></li>
    <li><a href="asalesdetail.aspx">RETURN DETAILS</a></li>
    </ul>
    </li>
    </ul>
    <ul>
    <li><a><i class='fas fa-box-open'></i>  STOCK</a>
    <ul>
     <li style="width: 179px"><a href="astockdisplay.aspx">STOCK DISPLAY</a></li>
     <li style="width: 174px"><a href="acategorydisplay.aspx">CATEGORY DISPLAY</a></li>
    </ul>
    </li>
    </ul>
     <ul>
    <li><a><i class="fas fa-bars"></i>  PURCHASE</a>
    <ul>
    <li><a href="apurorder.aspx">ORDER</a></li>
    <li><a href="apurreturndetail.aspx">RETURN DETAILS</a></li>
    <li><a href="apurbilldetails.aspx">PURCHASE DETAILS</a></li>
    </ul>
    </li>
    </ul>
    <ul>
    <li><a><i class='fas fa-glasses'></i>  PRODUCT</a>
    <ul>
    <li><a href="apadd.aspx">ADD</a></li>
    <li><a href="apupdate.aspx">UPDATE</a></li>
    <li><a href="apsearch.aspx">SEARCH</a></li>
    <li><a href="apdisplay.aspx">DISPLAY</a></li>
    </ul>
    </li>
    </ul>
   
    <ul>
    <li><a><i class='fas fa-shopping-cart'></i> SUPPLIER </a>
    
    <ul>
    <li><a href="asadd.aspx">ADD</a></li>
    <li><a href="asupdate.aspx">UPDATE</a></li>
    <li><a href="asdelete.aspx">DELETE</a></li>
    <li><a href="assearch.aspx">SEARCH</a></li>
    <li><a href="asdisplay.aspx">DISPLAY</a></li>
    </ul>
    </li>
    </ul>
    <ul>
     <li><a> <i class='fas fa-user-tie'></i>  EMPLOYEE</a>
     <ul>
    <li><a href="aadd.aspx">ADD</a></li>
    <li><a href="aupdate.aspx">UPDATE</a></li>
    <li><a href="adelete.aspx">DELETE</a></li>
    <li><a href="asearch.aspx">SEARCH</a></li>
    <li><a href="adisplay.aspx">DISPLAY</a></li>
    <li><a href="aattend.aspx">ATTENDENCE</a></li>
    <li><a href="asalary.aspx">SALARY</a></li>
    </ul>
    </li>
    </ul>
      <ul>
    <li><a> <i class='fas fa-user-circle'></i> USER</a>
    <ul>
    <li><a href="acreate.aspx">CREATE</a></li>
    <li><a href="acreate.aspx">DELETE</a></li>
    <li><a href="aunblock.aspx">UNBLOCK</a></li>
    </ul>
    </li>
    </ul>
    </div>
    
    
    
    
    <div style="text-align: center">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Panel ID="Panel1" runat="server" Style="left: 431px; position: absolute; top: 263px;">
            <table style="width: 532px">
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                            Text="Select Employee Name" Width="249px" ForeColor="White"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:DropDownList
            ID="DropDownList4" runat="server" AppendDataBoundItems="true" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Font-Names="Cambria" Font-Size="11pt" >
                            <asp:ListItem>--SELECT--</asp:ListItem>
        </asp:DropDownList><br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                            SelectCommand="SELECT [name] FROM [employee]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br />
        <asp:Button ID="btnedit" runat="server" Text="EDIT" OnClick="btnedit_Click" Width="90px" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        &nbsp;&nbsp;<strong><span
            style="font-size: 14pt; font-family: Cambria"> </span></strong>
        <span><strong><span style="font-size: 14pt; font-family: Cambria">&nbsp;</span></strong></span>&nbsp; &nbsp;
        <br />
        <br />
        <br />
        <table style="width: 764px; text-align: center; left: 370px; position: absolute; top: 476px; background-position-x: center; background-attachment: scroll; background-repeat: repeat;">
            <tr align="center">
                <td colspan="2" style="color: #ffffff; height: 44px; text-decoration: underline" align="center">
                    <br />
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt"
                        ForeColor="White" Text="  EMPLOYEE  DETAILS"></asp:Label><br />
                </td>
            </tr>
            <tr align="center">
           
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 21px" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;
                    <br />
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text=" Name   " Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 374px; height: 21px" align="center">
                    &nbsp;<br />
                    <asp:TextBox ID="txtname" runat="server" OnTextChanged="txtname_TextChanged"></asp:TextBox><br />
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 22px" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;<br />
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text=" Gender " Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px; height: 22px" align="center">
                    &nbsp;
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" ToolTip ="male\female\others" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 21px; text-align: center;" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; 
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Date of Birth" Font-Names="Cambria" Font-Size="14pt"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
                <td style="width: 374px; height: 21px" align="center">
                    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="White"></asp:Label><br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="True" Font-Names="Cambria" Font-Size="11pt">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Font-Names="Cambria" Font-Size="11pt">
                    </asp:DropDownList><br />
                    <br />
                    <asp:Calendar ID="Calendar2" runat="server"  ForeColor="White"></asp:Calendar>
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 20px" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp;
                    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Phone num " Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px; height: 20px" align="center">
                    <br />
                    <asp:TextBox ID="txtphn" runat="server" Width="142px" OnTextChanged="txtphn_TextChanged"></asp:TextBox>
                    <br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtphn"
                        ErrorMessage="Check Number!!" MaximumValue="10000000000" MinimumValue="1000000000"
                        Type="Double"></asp:RangeValidator><br />
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 73px;" align="center">
                    &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    <asp:Label ID="Label7" runat="server"
                        ForeColor="White" Text="Alternate phone num " Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                </td>
                <td style="width: 374px; height: 73px;" align="center">
                    &nbsp;<br />
                    <asp:TextBox ID="txtaltphn" runat="server" OnTextChanged="txtaltphn_TextChanged"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtphn"
                        ControlToValidate="txtaltphn" ErrorMessage="Alternate Phone No. and Phone Number is same!!" Operator="NotEqual"></asp:CompareValidator><br />
                </td>
            </tr>
            <tr style="color: #000000" align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;
                    <br />
                    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Address" Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px" align="center">
                    &nbsp;<br />
                    <asp:TextBox ID="txtaddrs" runat="server"
                        TextMode="MultiLine" OnTextChanged="txtaddrs_TextChanged"></asp:TextBox><br />
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;
                    <br />
                    <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Email ID " Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px" align="center">
                    <br />
                    <asp:TextBox ID="txtmail" runat="server" OnTextChanged="txtmail_TextChanged"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
                        ErrorMessage="Check Email ID!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 11px" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                    <br />
                    <asp:Label ID="Label10" runat="server" ForeColor="White" Text=" Designation" Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px; height: 11px" align="center">
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="font-weight: bold; background-color: transparent" Font-Bold="False" Font-Names="Cambria" Font-Size="11pt" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                        <asp:ListItem Value="45000">Manager</asp:ListItem>
                        <asp:ListItem Value="20000">Employee</asp:ListItem>
                        
                    </asp:DropDownList><br />
                </td>
            </tr>
            <tr align="center">
                <td style="font-weight: bold; width: 267px; color: #ffffff; height: 19px" align="center">
                    &nbsp; &nbsp; &nbsp;&nbsp; 
                    <br />
                    <asp:Label ID="Label11" runat="server" ForeColor="White" Text=" Date of joining" Font-Names="Cambria" Font-Size="14pt"></asp:Label><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px; height: 19px" align="center">
                    &nbsp; &nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label" Width="247px" ForeColor="White"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" 
                        Style="font-weight: bold; color: #ffffff" OnSelectionChanged="Calendar1_SelectionChanged" ForeColor="White"></asp:Calendar>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr align="center">
                <td colspan="2" style="height: 19px; text-align: center;" align="center">
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    <br />
                    <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>

