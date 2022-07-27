<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asalary.aspx.cs" Inherits="asalary" %>

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
        &nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="1912px" Width="888px" style="left: 358px; position: absolute; top: 225px">
            <span style="font-size: 16pt; font-family: Cambria"><strong>
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <table style="left: 202px; width: 446px; position: absolute; top: 25px; height: 376px" >
                    <tr align="center">
                        <td colspan="2">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                            &nbsp;<asp:Label ID="Label5" runat="server" Font-Names="Cambria" Font-Size="16pt"
                                Text="EMPLOYEE SALARY DETAILS" ForeColor="White"></asp:Label><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; height: 26px" align="center">
                            <br />
                            <asp:Label ID="lblempid" runat="server" Font-Size="14pt" Text="Employee name" Width="220px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; height: 26px" align="center">
                            <br />
                            <asp:DropDownList ID="DropDownList" runat="server" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged">
                            </asp:DropDownList><br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                                OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="center" style="height: 26px" colspan="2">
                            <br />
                            <asp:Button ID="btncheck" runat="server" OnClick="btncheck_Click" Text="Search" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="center" style="width: 100px; height: 26px">
                            <br />
                            <asp:Label ID="lblname" runat="server" Font-Size="14pt" Text="Employee id" Font-Bold="True" Font-Names="Cambria" Width="163px" ForeColor="White"></asp:Label><br />
                        </td>
                        <td align="center" style="width: 100px; height: 26px">
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px" align="center">
                            <br />
                            <br />
                            <asp:Label ID="lbldesig" runat="server" Font-Size="14pt" Text="Designation" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                            <br />
                        </td>
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtdesign" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblpaydate" runat="server" Font-Size="14pt" Text="Pay Date" Width="112px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px" align="center">
                            <br />
                            <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"></asp:Label><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="Label1" runat="server" Font-Size="14pt" Text="Basic pay" Width="142px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px" align="center">
                            <br />
                            <br />
                            <asp:TextBox ID="txtbasic" runat="server" Height="25px"></asp:TextBox><br />
                            <br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="center" style="width: 100px; text-align: center">
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Bonus" Width="144px" ForeColor="White"></asp:Label><br />
                        </td>
                        <td align="center" style="width: 100px; text-align: center">
                            <br />
                            <asp:TextBox ID="txtbonus" runat="server" AutoPostBack="True" OnTextChanged="txtbonus_TextChanged"></asp:TextBox><br />
                       <asp:RegularExpressionValidator ID="bo" runat="server" ErrorMessage="Only numbers!!" ControlToValidate="txtbonus" ValidationExpression="^[0-9]*$" Font-Names="Cambria" Font-Size="12pt" Width="161px"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblda" runat="server" Font-Size="14pt" Text="DA" Width="79px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtda" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblhra" runat="server" Font-Size="14pt" Text="HRA" Width="73px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txthra" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; height: 31px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblgross" runat="server" Font-Size="14pt" Text="GROSS" Width="74px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; height: 31px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtgross" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; height: 28px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblpf" runat="server" Font-Size="14pt" Text="PF" Width="71px" Font-Names="Cambria" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; height: 28px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtpf" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; height: 28px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblcpay" runat="server" Font-Size="14pt" Text="Deducted Amount" Font-Names="Cambria" Width="207px" ForeColor="White"></asp:Label></td>
                        <td style="width: 100px; height: 28px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtcpay" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; height: 28px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lblextr" runat="server" Font-Size="14pt" Text="Extra Leave" Font-Names="Cambria" Width="160px" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; height: 28px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtextra" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 100px; height: 35px; text-align: center;" align="center">
                            <br />
                            <asp:Label ID="lbltotpay" runat="server" Font-Size="14pt" Text="TOTAL PAY" Font-Names="Cambria" Width="128px" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px; height: 35px; text-align: center;" align="center">
                            <br />
                            <asp:TextBox ID="txtpay" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" style="height: 32px; text-align: center;" align="center">
                            <br />
                            <asp:Button ID="btnsave" runat="server" Text="SAVE" OnClick="btnsave_Click1" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td align="center" colspan="2" style="height: 32px; text-align: center">
                            <br />
        <br />
                        </td>
                    </tr>
                </table>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <br />
            </strong></span>
        </asp:Panel>
        &nbsp;&nbsp;<br />
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
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
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
