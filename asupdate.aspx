<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asupdate.aspx.cs" Inherits="asupdate" %>

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
        <div>
            <div style=" text-align: center">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <br />
                &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                &nbsp;<asp:Panel ID="Panel2" runat="server" style="left: 353px; position: absolute; top: 159px">
                    <table style="width: 666px">
                        <tr>
                            <td style="width: 100px">
                                <br />
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt"
                                    Text="Select Supplier Name" Width="444px" ForeColor="Black"></asp:Label><br />
                            </td>
                            <td style="width: 100px">
                                <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="sname" DataValueField="sname" Font-Names="Cambria" Font-Size="14pt">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                        SelectCommand="SELECT [sname] FROM [supplier]"></asp:SqlDataSource>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            <asp:Button ID="btnedit" runat="server" OnClick="btnedit_Click" Text="EDIT" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;&nbsp;<br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;
                <table id="TABLE1" onclick="return TABLE1_onclick()" style="border-left-color: #000000;
                    border-bottom-color: #000000; border-top-color: #000000; height: 479px; border-right-color: #000000; width: 761px; left: 334px; position: absolute; top: 389px;">
                    <tr align="center">
                        <td colspan="2" style="border-left-color: #000000; border-bottom-color: #000000; border-top-color: #000000; height: 29px; border-right-color: #000000;">
                            <strong><span style="font-size: 24pt; font-family: Cambria">
                                <br />
                                <asp:Label ID="Label11" runat="server" Text="SUPPLIER DETAILS" ForeColor="Black"></asp:Label><br />
                            </span></strong></td>
                    </tr>
                    <tr align="center">
                        <td style="width: 161px; height: 36px">
                            <span style="font-family: Cambria">
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" Text="Supplier name" ForeColor="Black"></asp:Label><br />
                            </span></td>
                        <td style="width: 134px; height: 36px">
                            <br />
                            <asp:TextBox ID="txtsname" runat="server"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 161px; height: 35px">
                            <span style="font-family: Cambria">
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Text="Phone number" ForeColor="Black"></asp:Label><br />
                            </span></td>
                        <td style="width: 134px; height: 35px">
                            <br />
                            <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
                            <br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtphno"
                                ErrorMessage="Check number" MaximumValue="10000000000" MinimumValue="1000000000"
                                Type="Double"></asp:RangeValidator><br />
                        </td>
                    </tr>
                    <tr style="font-weight: bold; color: #000000; font-family: Cambria" align="center">
                        <td style="width: 161px; height: 32px">
                            <span>
                                <br />
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                    Text="Alternate phone num" Width="274px" ForeColor="Black"></asp:Label><br />
                            </span></td>
                        <td style="width: 134px; font-family: Times New Roman; height: 32px">
                            <br />
                            <asp:TextBox ID="txtaphno" runat="server"></asp:TextBox><br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtphno"
                                ControlToValidate="txtaphno" ErrorMessage="Alternate Phone No. and Phone No. is same"
                                Operator="NotEqual" Width="295px"></asp:CompareValidator><br />
                            </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 161px; height: 34px">
                            <span style="font-family: Cambria">
                                <br />
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                    Text="Address" ForeColor="Black"></asp:Label><br />
                            </span></td>
                        <td style="width: 134px; height: 34px">
                            <br />
                            <asp:TextBox ID="txtaddr" runat="server"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 161px; height: 30px">
                            <span style="font-family: Cambria">
                                <br />
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                    Text="Pincode" ForeColor="Black"></asp:Label><br />
                            </span></td>
                        <td style="width: 134px; font-family: Times New Roman; height: 30px">
                            <br />
                            <asp:TextBox ID="txtpin" runat="server"></asp:TextBox><br />
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpin" ValidationExpression="^[0-9]*$" ErrorMessage="Check!!(Only Numbers are allowed)" Width="254px"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman" align="center">
                        <td style="width: 161px; height: 25px">
                            <span>
                                <br />
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                    Text="Email" ForeColor="Black"></asp:Label><br />
                            </span></td>
                        <td style="width: 134px; height: 25px">
                            <br />
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                                ErrorMessage="Check Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                        </td>
                    </tr>
                    <tr align="center" style="font-family: Times New Roman">
                        <td colspan="2" style="height: 35px; text-align: center;">
                            <br />
                            <asp:Label ID="Label14" runat="server" Text="BANK DETAILS" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" ForeColor="Black"></asp:Label><br />
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman" align="center">
                        <td style="width: 161px; height: 58px">
                            <br />
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                Text="Bank Name" ForeColor="Black"></asp:Label><br />
                        </td>
                        <td style="width: 134px; height: 58px">
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Cambria" Font-Size="14pt">
                                <asp:ListItem>--SELECT--</asp:ListItem>
                                <asp:ListItem>Vijaya Bank</asp:ListItem>
                                <asp:ListItem>Karnataka Bank</asp:ListItem>
                                <asp:ListItem>Syndicate Bank</asp:ListItem>
                                <asp:ListItem>State Bank</asp:ListItem>
                                <asp:ListItem>ICICI Bank</asp:ListItem>
                            </asp:DropDownList><br />
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman">
                        <td style="width: 161px; height: 58px">
                            <br />
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                Text="Branch" ForeColor="Black"></asp:Label><br />
                        </td>
                        <td style="width: 134px; height: 58px">
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman">
                        <td style="width: 161px; height: 58px">
                            <br />
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                Text="Acc No." ForeColor="Black"></asp:Label><br />
                        </td>
                        <td style="width: 134px; height: 58px">
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr style="font-family: Times New Roman">
                        <td style="width: 161px; height: 58px">
                            <br />
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                Text="IFSC" ForeColor="Black"></asp:Label><br />
                        </td>
                        <td style="width: 134px; height: 58px">
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="2" style="height: 58px">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click" Font-Bold="True" Font-Names="Cambria" Font-Size="12pt" />&nbsp;&nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
                            &nbsp; &nbsp;<br />
                            <br />
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                &nbsp;
                <asp:Panel ID="Panel1" runat="server" Style="left: 110px; position: absolute; top: 542px">
                <asp:GridView ID="GridView1" runat="server" style="position: static" AutoGenerateColumns="False" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="Black">
                     <Columns>
                            <asp:BoundField DataField="sid" HeaderText="SUPPLIER ID" />
                            <asp:BoundField DataField="sname" HeaderText="SUPPLIER NAME" />
                            <asp:BoundField DataField="phno" HeaderText="PHONE NO." />
                            <asp:BoundField DataField="altphno" HeaderText="ALTERNATE NO." />
                            <asp:BoundField DataField="addr" HeaderText="ADDRESS" />
                            <asp:BoundField DataField="pincode" HeaderText="PINCODE" />
                            <asp:BoundField DataField="mail" HeaderText="E-MAIL" />
                            <asp:BoundField DataField="bname" HeaderText="BANK" />
                            <asp:BoundField DataField="Branch" HeaderText="BRANCH" />
                            <asp:BoundField DataField="accno" HeaderText="ACCOUNT NO." />
                            <asp:BoundField DataField="IFSC" HeaderText="IFSC CODE" />
                            <asp:BoundField DataField="status" HeaderText="STATUS" />
                            </Columns>
                </asp:GridView>
                </asp:Panel>
                <br />
                <br />
                <br />
            </div>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;
        </div>
    
    </div>
    </form>
</body>
</html>
