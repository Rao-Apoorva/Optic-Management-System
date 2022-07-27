<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aattend.aspx.cs" Inherits="aattend" %>

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
     <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="250px" Width="505px" style="left: 457px; position: absolute; top: 212px"><div style="text-align: center" >
            <br />
            <table>
                <tbody>
                    <tr>
                        <td colspan="2" style="height: 21px">
                            <strong><span style="font-size: 16pt; font-family: Cambria">
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Names="Cambria" Font-Size="16pt" Text="ATTENDANCE DETAILS" ForeColor="White"></asp:Label><br />
                            </span></strong></td>
                    </tr>
                    <tr>
                        <td style="width: 629px; height: 21px">
                            <br />
                            <asp:Label ID="lblname" runat="server" Text="Employee Name" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px; height: 21px">
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" Font-Names="Cambria" Font-Size="11pt">
                            </asp:DropDownList><br />
                            </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 21px">
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" style="background-color: transparent" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="White" /><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px; height: 21px">
                            &nbsp;<br />
                            <asp:Label ID="lblid" runat="server" Text="Employee id" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px; height: 21px">
                            <br />
                            &nbsp;<asp:TextBox ID="txtid" runat="server" OnTextChanged="txtid_TextChanged" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px; height: 26px">
                            <br />
                            <asp:Label ID="lblyr" runat="server" Text="Year" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px; height: 26px">
                            <br />
                            <asp:TextBox ID="txtyr" runat="server" OnTextChanged="txtyr_TextChanged" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px; height: 21px">
                            <br />
                            <asp:Label ID="lblmnth" runat="server" Text="Month" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px; height: 21px">
                            <br />
                            <asp:TextBox ID="txtmnth" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px">
                            <br />
                            <asp:Label ID="lbltdays" runat="server" Text="Total Days" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px">
                            <br />
                            <asp:TextBox ID="txttdays" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px">
                            <br />
                            <asp:Label ID="lblleave" runat="server" Text="CL" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px">
                            <br />
                            <asp:TextBox ID="txtleave" runat="server" OnTextChanged="txtleave_TextChanged" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px; height: 26px;">
                            <br />
                            <asp:Label ID="lblltaken" runat="server" Text="Leave taken" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px; height: 26px;">
                            <br />
                            <asp:TextBox ID="txtleatak" runat="server" OnTextChanged="txtleatak_TextChanged" Height="25px" AutoPostBack="True"></asp:TextBox><br />
                            &nbsp;
                            <asp:RegularExpressionValidator ID="ab" runat="server" ErrorMessage="Only numbers!!" ControlToValidate="txtleatak" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 629px">
                            <br />
                            <asp:Label ID="lblelea" runat="server" Text="Extra leave" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" ForeColor="White"></asp:Label>&nbsp;
                            <br />
                        </td>
                        <td style="width: 680px">
                            <br />
                            <asp:TextBox ID="txteleave" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px; height: 35px;">
                            <br />
                            <asp:Label ID="lblwork" runat="server" Text="Total Working Days" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" Width="259px" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 680px; height: 35px;">
                            <br />
                            <asp:TextBox ID="txtwdays" runat="server" Height="25px"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 629px">
                            <br />
                            <asp:Label ID="lblpay" runat="server" Text="Deduction" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="White"></asp:Label><br />
                            &nbsp;</td>
                        <td style="width: 680px">
                            <br />
                            <asp:TextBox ID="txtpay" runat="server" Height="25px" ></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 39px">
                            <br />
                            &nbsp; &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="OK" style="background-color: transparent" Height="37px" Width="116px" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="White" /><br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
            <br />
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="950px" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="#FFFFFF" >
                                  <Columns>
                                  <asp:BoundField DataField="name" HeaderText="EMPLOYEE NAME" />
                                  <asp:BoundField DataField="year" HeaderText="YEAR" />
                                  <asp:BoundField DataField="month" HeaderText="MONTH" />
                                  <asp:BoundField DataField="tdays" HeaderText="DAYS" />
                                  <asp:BoundField DataField="rmnd" HeaderText="LEAVE TAKEN" />
                                  <asp:BoundField DataField="workdays" HeaderText="TOTAL WORKING DAYS" />
                                  <asp:BoundField DataField="epay" HeaderText="DEDUCTION" />
                                  </Columns>
                                </asp:GridView>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;&nbsp; &nbsp;<br />
        </asp:Panel>
        &nbsp;&nbsp;
    </form>
</body>
</html>

    