<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adelete.aspx.cs" Inherits="adelete" %>

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
        <div style="text-align: center">
            <strong><span style="font-size: 14pt; font-family: Cambria">&nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></strong><br />
            <asp:Panel ID="Panel1" runat="server" Style="left: 462px; position: absolute; top: 309px">
                <table style="width: 638px">
                    <tr>
                        <td style="width: 100px; height: 56px">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                                Text=" Select Status to be displayed" Width="413px" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px; height: 56px">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Cambria" Font-Size="14pt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Inactive</asp:ListItem>
                </asp:DropDownList></td>
                        <td style="width: 100px; height: 56px">
                <asp:Button ID="btnok" runat="server" OnClick="btnok_Click"
                    Text="OK" Width="92px" Font-Names="Cambria" Font-Size="14pt" Font-Bold="True" /></td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<table style="width: 449px; left: 350px; position: absolute; top: 400px;">
                <tr align="center">
                    <td style="width: 100px; text-align: center">
                        <span style="font-size: 24pt; font-family: Cambria;">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="SUPPLIER DETAILS" Width="608px" Height="32px" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt" ForeColor="Black"></asp:Label></span></td>
                </tr>
                <tr align="center">
                    <td style="width: 100px; height: 21px">
                        &nbsp; &nbsp;
                        <asp:GridView ID="grd2" runat="server" AutoGenerateColumns="False" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="Black" OnSelectedIndexChanged="grd2_SelectedIndexChanged">
                        <Columns>
                        <asp:BoundField DataField="sid" HeaderText="Supplier ID" />
                        <asp:BoundField DataField="sname" HeaderText="Supplier Name" />
                        <asp:BoundField DataField="phno" HeaderText="Phone Number" />
                        <asp:BoundField DataField="altphno" HeaderText="Alternate Number" />
                        <asp:BoundField DataField="addr" HeaderText="Address" />
                        <asp:BoundField DataField="pincode" HeaderText="Pincode" />
                        <asp:BoundField DataField="bname" HeaderText="Bank" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" />
                        <asp:BoundField DataField="accno" HeaderText="Account No." />
                        <asp:BoundField DataField="IFSC" HeaderText="IFSC CODE" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                   
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
            </div>
    
    </div>
    </form>
</body>
</html>
