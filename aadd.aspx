<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aadd.aspx.cs" Inherits="aadd" %>

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
    
   <div>
        <table style="width: 764px; background-color: transparent; text-align: center; left: 335px; position: absolute; top: 303px;">
            <tr align="center">
                <td colspan="2" style="height: 44px; color: #ffffff; text-decoration: underline;" align="center">
                    <span style="color: black">
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt"
                            Text="  EMPLOYEE  DETAILS" ForeColor="#FFFFFF"></asp:Label><br />
                    </span></td>
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 21px; font-weight: bold; color: #ffffff;" align="center">
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                        ForeColor="White" Text=" Empid   "></asp:Label><br />
                </td>
                <td style="width: 374px; height: 21px">
                    <br />
                    <asp:Label ID="Label14" runat="server" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"></asp:Label><br />
                </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 21px; font-weight: bold; color: #ffffff; text-align: center;" align="center">
                    <br />
                    &nbsp;
                    &nbsp;<span style="color: black">
                        <asp:Label ID="Label5" runat="server" Font-Names="Cambria"
                        Font-Size="14pt" Text="  Name" ForeColor="#FFFFFF"></asp:Label><br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span> &nbsp; 
                </td>
                <td style="width: 374px; height: 21px" align="center">
                    &nbsp;
                
                   <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px" AutoPostBack="True" OnTextChanged="txtname_TextChanged"></asp:TextBox><br />
               <asp:RegularExpressionValidator ID="nn" runat="server" ControlToValidate="txtname" ErrorMessage="Invalid Username!!!(Special characters not allowed)" ValidationExpression="^[A-Z a-z 0-9]*$"></asp:RegularExpressionValidator>
                </td>
                
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 22px; font-weight: bold; color: #ffffff;" align="center">
                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Names="Cambria" Font-Size="14pt" ForeColor="#FFFFFF"
                        Text="Gender"></asp:Label><br />
                    &nbsp;&nbsp;<br />
                    <br />
                    <span style="color: black">&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;
                    &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 374px; height: 22px" align="center">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="reg" runat="server" ErrorMessage="Only characters allowed!!!Please Check" ControlToValidate="TextBox1" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    <br />
                    </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 21px; font-weight: bold; color: #ffffff;" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp;<asp:Label ID="Label7" runat="server" Font-Names="Cambria" Font-Size="14pt"
                        Text="Date of Birth"></asp:Label>
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 374px; height: 21px" align="center">
                    <asp:Label ID="Label2" runat="server" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"></asp:Label><br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Font-Names="Cambria" Font-Size="11pt">
                    </asp:DropDownList>&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True"
                        OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Font-Names="Cambria" Font-Size="11pt">
                    </asp:DropDownList><br />
                    <br />
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" ForeColor="#FFFFFF">
                    </asp:Calendar>
                </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 20px; font-weight: bold; color: #ffffff;" align="center">
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label><br />
                    <br />
                    <span style="color: black">&nbsp;</span> &nbsp; &nbsp; &nbsp; &nbsp;</td>
                <td style="width: 374px; height: 20px" align="center">
                    <br />
                    &nbsp;<asp:TextBox ID="txtphn" runat="server" Width="250px" Height="30px"></asp:TextBox>&nbsp;<br />
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Check Number"
                        MaximumValue="10000000000" MinimumValue="1000000000" ControlToValidate="txtphn" Type="Double"></asp:RangeValidator>
                    &nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; font-weight: bold; color: #ffffff;" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<span style="color: black"> 
                        <asp:Label ID="Label9" runat="server" Font-Names="Cambria" Font-Size="14pt" Text=" Alternate phone num" ForeColor="White"></asp:Label><br />
                        &nbsp;&nbsp; &nbsp;&nbsp;</span> &nbsp; &nbsp;
                </td>
                <td style="width: 374px" align="center">
                    <br />
                    &nbsp;
                    <asp:TextBox ID="txtaltphn" runat="server" Height="30px" Width="250px"></asp:TextBox>
                    &nbsp;
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtphn"
                        ControlToValidate="txtaltphn" ErrorMessage="Alternate Phone No. and Phone No. is same!!" Operator="NotEqual"></asp:CompareValidator><br />
                </td>
            </tr>
            <tr style="color: #000000"align="center">
                <td style="width: 267px; font-weight: bold; color: #ffffff;">
                    &nbsp;&nbsp;<br />
                    <asp:Label ID="Label10" runat="server" Font-Names="Cambria" Font-Size="14pt"
                        ForeColor="White" Text=" Address "></asp:Label><br />
                    <span style="color: black">&nbsp; &nbsp;
                    &nbsp; &nbsp; </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
                <td style="width: 374px">
                    &nbsp;<br />
                    <asp:TextBox ID="txtaddrs" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox><br />
                </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; font-weight: bold; color: #ffffff;" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp;<asp:Label ID="Label11" runat="server" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"
                        Text="  Email ID "></asp:Label><br />
                    <span style="color: black">&nbsp; &nbsp;</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
                <td style="width: 374px" align="center">
                    <br />
                    &nbsp;<asp:TextBox ID="txtmail" runat="server" Height="30px" Width="250px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmail"
                        ErrorMessage="Check Email ID!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 11px; font-weight: bold; color: #ffffff;" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp;<br />
                    &nbsp; &nbsp;<asp:Label
                        ID="Label12" runat="server" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"
                        Text="  Designation     "></asp:Label><br />
                    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</td>
                <td style="width: 374px; height: 11px" align="center">
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="background-color: transparent; font-weight: bold;" Font-Bold="True" Font-Italic="False" Font-Names="Cambria" Font-Size="11pt">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem Value="45000">Manager</asp:ListItem>
                        <asp:ListItem Value="20000">Employee</asp:ListItem>
                    </asp:DropDownList><br />
                </td>
            </tr>
            <tr align="center">
                <td align="center" style="font-weight: bold; width: 267px; color: #ffffff; height: 19px">
                    <br />
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                        ForeColor="White" Text="Bank Name"></asp:Label></td>
                <td align="center" style="width: 374px; height: 19px">
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                    <asp:RegularExpressionValidator ID="bn" runat="server" ControlToValidate="TextBox2" ValidationExpression="^[A-Z a-z]*$" ErrorMessage="Only Characters!!"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="center">
                <td align="center" style="font-weight: bold; width: 267px; color: #ffffff; height: 19px">
                    <br />
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                        ForeColor="White" Text="Branch"></asp:Label></td>
                <td align="center" style="width: 374px; height: 19px">
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ValidationExpression="^[A-Z a-z]*$" ErrorMessage="Only Characters!!"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="center">
                <td align="center" style="font-weight: bold; width: 267px; color: #ffffff; height: 19px">
                    <br />
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                        ForeColor="White" Text="Account No."></asp:Label></td>
                <td align="center" style="width: 374px; height: 19px">
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="16"></asp:TextBox><br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ValidationExpression="^[0-9]*$" ErrorMessage="Check!!(Only Numbers are allowed)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align="center">
                <td style="width: 267px; height: 19px; font-weight: bold; color: #ffffff;" align="center">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp;&nbsp;<span style="color: black"> &nbsp;<asp:Label ID="Label13" runat="server" Font-Names="Cambria"
                            Font-Size="14pt" ForeColor="White" Text="Date of joining  "></asp:Label><br />
                    </span> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</td>
                <td style="width: 374px; height: 19px" align="center">
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Width="247px" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"></asp:Label><br />
                    &nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
            <tr align="center">
                <td colspan="2" style="height: 19px; text-align: center;" align="center">
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Style="font-weight: bold; color: black;"
                        Text="ADD" Width="166px" ForeColor="Black" Height="33px" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                        ID="btnclr" runat="server" ForeColor="Black" Height="33px" OnClick="btnclr_Click"
                        Text="CLEAR" Width="166px" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnhome" runat="server" ForeColor="Black"
                        OnClick="btnhome_Click" Text="HOME" />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
