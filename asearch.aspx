<%@ Page Language="C#" AutoEventWireup="true" CodeFile="asearch.aspx.cs" Inherits="asearch" %>

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
    
  <div style="text-align: center">
        <span style="font-size: 14pt; font-family: Cambria">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<strong> &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;</strong></span>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" style="left: 400px; position: absolute; top: 204px">
        <table style="width: 659px">
            <tr>
                <td style="width: 129px">
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt"
                        Text="  Select  the Employee Name  " Width="419px" ForeColor="White"></asp:Label><br />
                </td>
                <td style="width: 100px">
                    <br />
                    <asp:DropDownList
                    ID="DropDownList1" runat="server" AppendDataBoundItems="true" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Font-Names="Cambria" Font-Size="11pt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--SELECT--</asp:ListItem>
                </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                        SelectCommand="SELECT [name] FROM [employee]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
        <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="SEARCH" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                    <br />
                    <br />
       
                </td>
            </tr>
        </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <table style="left: 300px; width: 478px; position: absolute; top: 400px">
            <tr>
                <td style="width: 100px; text-align: center;">
                    <br />
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="16pt"
                        Text="EMPLOYEE DETAILS" Width="360px" ForeColor="White"></asp:Label><br />
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 176px;">
                    <asp:GridView ID="gdemp" runat="server" Font-Names="Times New Roman" Font-Size="14pt" AutoGenerateColumns="False" ForeColor="#FFFFFF">
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
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
