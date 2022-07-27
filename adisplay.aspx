<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adisplay.aspx.cs" Inherits="adisplay" %>

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
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;<strong><span
            style="font-size: 14pt; font-family: Cambria"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
            <asp:Panel ID="Panel1" runat="server" Style="left: 545px; position: absolute; top: 234px">
                <table style="width: 493px">
                    <tr>
                        <td style="width: 100px">
                            <br />
                            <asp:Label ID="Label2" runat="server" Font-Names="Cambria" Font-Size="16pt" Text=" Select Status to be displayed "
                                Width="349px" ForeColor="White"></asp:Label><br />
                        </td>
                        <td style="width: 100px">
                            <br />
                            <asp:DropDownList
                ID="DropDownList1" runat="server" AutoPostBack="True" Font-Names="Cambria" Font-Size="14pt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>--SELECT--</asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Inactive</asp:ListItem>
            </asp:DropDownList><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <br />
        <br />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            &nbsp;&nbsp;
            <br />
        </span></strong>
        <table style="text-align: center; left: 242px; position: absolute; top: 449px; width: 1613px;">
            <tr>
                <td style="width: 100px; text-align: left;">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria"
                        Font-Size="16pt" Text=" Employee Details" Width="313px" ForeColor="White"></asp:Label><br />
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 223px;">
                    <asp:GridView ID="GridView1" runat="server" Width="802px" Font-Names="Times New Roman" Font-Size="14pt" AutoGenerateColumns="False" Height="184px" ForeColor="#FFFFFF"  >
                    <RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="16px" />
<HeaderStyle BackColor="#4a70d0" ForeColor="#ffffff" Font-Size="20px" />
<AlternatingRowStyle BackColor="#c0c0c0" ForeColor="#000000" Font-Size="16px" />
                        <Columns>
                        <asp:BoundField DataField="empid" HeaderText="EMPLOYEE ID" />
                           <asp:BoundField DataField="name" HeaderText="EMPLOYEE NAME" />
                              <asp:BoundField DataField="gender" HeaderText="GENDER" />
                                 <asp:BoundField DataField="dob" HeaderText="DOB" />
                                    <asp:BoundField DataField="phno" HeaderText="PHONE NUMBER" />
                                       <asp:BoundField DataField="alno" HeaderText="ALTERNATE NUMBER" />
                                          <asp:BoundField DataField="adder" HeaderText="ADDRESS" />
                                             <asp:BoundField DataField="email" HeaderText="EMAIL" />
                                                <asp:BoundField DataField="design" HeaderText="DESIGNATION" />
                                                   <asp:BoundField DataField="basic" HeaderText="BASIC" />
                                                      <asp:BoundField DataField="doj" HeaderText="DATE OF JOIN" />
                                                         <asp:BoundField DataField="status" HeaderText="STATUS" />
                                          
                        </Columns>
                        
                   
                


                   
                   
                   
                   
                   
                    </asp:GridView>
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
        &nbsp;<br />
        <br />
        <br />
        <br />
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
    </div>
    </form>
</body>
</html>
