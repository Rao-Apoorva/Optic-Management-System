<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asadd.aspx.cs" Inherits="asadd" %>

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
    <li><a href="aunblock.aspx">UNBLOCK</a></li>
    </ul>
    </li>
    </ul>
    </div>
    
   <div>
        <div style="text-align: center;">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;&nbsp;
            <table id="TABLE1" onclick="return TABLE1_onclick()" style="border-left-color: #000000;
                border-bottom-color: #000000; border-top-color: #000000; height: 479px; border-right-color: #000000; width: 699px; left: 473px; position: absolute; top: 231px;" runat="server">
                <tr align="center">
                    <td colspan="2" style="border-left-color: #000000; border-bottom-color: #000000; border-top-color: #000000; height: 29px; border-right-color: #000000; text-align: center;">
                        <strong><span style="font-size: 24pt; font-family: Cambria">&nbsp; &nbsp; &nbsp;<asp:Label ID="Label15" runat="server" Text="SUPPLIER DETAILS" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt" Font-Underline="True" ForeColor="Black"></asp:Label></span></strong></td>
                </tr>
                <tr  align="center">
                    <td style="width: 161px; height: 34px; text-align: center;">
                        <strong><span style="font-family: Cambria">
                            <br />
                            <asp:Label ID="Label1" runat="server" Font-Size="14pt" Text="Supplier ID" Font-Names="Cambria" ForeColor="Black"></asp:Label><br />
                        </span></strong></td>
                    <td style="width: 134px; height: 34px; text-align: center;">
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="Label" Font-Bold="True" ForeColor="Black"></asp:Label><br />
                    </td>
                </tr>
                <tr align="center" >
            
                    <td style="width: 161px; height: 36px; text-align: center;">
                        <span style="font-family: Cambria">
                            <br />
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Text="Supplier Name" Font-Names="Cambria" ForeColor="Black"></asp:Label><br />
                        </span></td>
                    <td style="width: 134px; height: 36px; text-align: center;">
                        <br />
                        <asp:TextBox ID="txtsname" runat="server" OnTextChanged="txtsname_TextChanged"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="nn" runat="server" ErrorMessage="Invalid Name!!(Special characters are not allowed)" ControlToValidate="txtsname" ValidationExpression="^[A-Z a-z]*$" Width="229px"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr align="center">
                    <td style="width: 161px; height: 28px; text-align: center;">
                        <span style="font-family: Cambria">
                            <br />
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="Phone Number" Font-Names="Cambria" ForeColor="Black"></asp:Label><br />
                        </span></td>
                    <td style="width: 134px; height: 28px; text-align: center;">
                        <br />
                        <asp:TextBox ID="txtphno" runat="server" OnTextChanged="txtphno_TextChanged"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtphno"
                            ErrorMessage="Check Number" MaximumValue="10000000000" MinimumValue="1000000000"
                            Type="Double"></asp:RangeValidator></td>
                </tr>
                <tr align="center">
                    <td style="width: 161px; height: 32px; text-align: center;">
                        <span style="font-family: Cambria">
                            <br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="Alternate Phone no." Width="222px" Font-Names="Cambria" ForeColor="Black"></asp:Label><br />
                            <br />
                        </span></td>
                    <td style="width: 134px; height: 32px; text-align: center;">
                        <br />
                        <br />
                        <asp:TextBox ID="txtaphno" runat="server"></asp:TextBox><br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtphno"
                            ControlToValidate="txtaphno" ErrorMessage="Alternate Phone No. and Phone No.  is same"
                            Operator="NotEqual" Width="252px"></asp:CompareValidator></td>
                </tr>
                <tr align="center">
                    <td style="width: 161px; height: 34px; text-align: center;">
                        <span style="font-family: Cambria">
                            <br />
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" Text="Address" Font-Names="Cambria" ForeColor="Black"></asp:Label><br />
                        </span></td>
                    <td style="width: 134px; height: 34px; text-align: center;">
                        <br />
                        <asp:TextBox ID="txtaddr" runat="server" OnTextChanged="txtaddr_TextChanged"></asp:TextBox><br />
                    </td>
                </tr>
                <tr align="center">
                    <td style="width: 161px; height: 30px; text-align: center;">
                        <span style="font-family: Cambria">
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="14pt" Text="Pincode" Font-Names="Cambria" ForeColor="Black"></asp:Label></span></td>
                    <td style="width: 134px; font-family: Times New Roman; height: 30px; text-align: center;">
                        <br />
                        <asp:TextBox ID="txtpin" runat="server"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="pp" runat="server" ControlToValidate="txtpin" ErrorMessage="Check!!" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr style="font-family: Times New Roman" align="center">
                    <td style="width: 161px; height: 29px; text-align: center;">
                        <span>
                            <br />
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="14pt" Text="Email" Font-Names="Cambria" ForeColor="Black"></asp:Label><br />
                        </span></td>
                    <td style="width: 134px; height: 29px; text-align: center;">
                        <br />
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="Check Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                </tr>
                <tr align="center" style="font-family: Times New Roman">
                    <td colspan="2" style="height: 35px; text-align: center">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <br />
                        <br />
                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                            Text="BANK DETAILS" ForeColor="Black"></asp:Label><br />
                    </td>
                </tr>
                <tr style="font-family: Times New Roman" align="center">
                    <td style="width: 161px; height: 58px; text-align: center;">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="14pt" Text="Bank Name" Font-Names="Cambria" ForeColor="Black"></asp:Label></td>
                    <td style="width: 134px; height: 58px; text-align: center;">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Vijaya Bank</asp:ListItem>
                            <asp:ListItem>Karnataka Bank</asp:ListItem>
                            <asp:ListItem>State Bank</asp:ListItem>
                            <asp:ListItem>Syndicate Bank</asp:ListItem>
                            <asp:ListItem>ICICI Bank</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr align="center" style="font-family: Times New Roman">
                    <td style="width: 161px; height: 58px; text-align: center;">
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                            Text="Branch" ForeColor="Black"></asp:Label></td>
                    <td style="width: 134px; height: 58px; text-align: center;">
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                          <asp:RegularExpressionValidator ID="bb" runat="server" ErrorMessage="Check!!(Special characters not allowed)" ControlToValidate="TextBox2" ValidationExpression="^[A-Z a-z]*$" Width="250px"></asp:RegularExpressionValidator>
               </td> 
                </tr>
                <tr style="font-family: Times New Roman" align="center">
                    <td style="width: 161px; height: 58px; text-align: center;">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="14pt" Text="Acc No." Font-Names="Cambria" ForeColor="Black"></asp:Label></td>
                    <td style="width: 134px; height: 58px; text-align: center;">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="16"></asp:TextBox>
                        <br />
                       <asp:RegularExpressionValidator ID="aa" runat="server" ErrorMessage="Only numbers!!" ControlToValidate="TextBox1" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator><%-- </td>--%>
                </td>
                </tr>
                <tr align="center" style="font-family: Times New Roman">
                    <td style="width: 161px; height: 58px; text-align: center;">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                            Text="IFSC" ForeColor="Black"></asp:Label></td>
                    <td style="width: 134px; height: 58px; text-align: center;">
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server" MaxLength="11"></asp:TextBox><br />
                        &nbsp;
                        <asp:RegularExpressionValidator ID="tt" runat="server" ErrorMessage="Special Characters not allowed!!" ControlToValidate="TextBox3" ValidationExpression="^[A-z a-z 0-9]*$" Width="224px"></asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr align="center">
                    <td colspan="2" style="height: 58px">
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        &nbsp;
                        <br />
                        <asp:Button ID="btnadd" runat="server" Text="OK" OnClick="btnadd_Click" Width="188px" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                        &nbsp;<br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                        <br />
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
