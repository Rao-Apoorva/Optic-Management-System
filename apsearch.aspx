<%@ Page Language="C#" AutoEventWireup="true" CodeFile="apsearch.aspx.cs" Inherits="apsearch" %>

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
    <li><a href="auserdelete.aspx">DELETE</a></li>
    <li><a href="aunblock.aspx">UNBLOCK</a></li>
    </ul>
    </li>
    </ul>
    </div>
      <div style="text-align: center">
        <asp:Panel ID="Panel1" runat="server" Style="left: 468px; position: absolute; top: 267px">
            <table>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="lblhead" runat="server" CssClass="lblhead" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" Height="7px" Width="401px" ForeColor="#FFFFFF">Select Category Name to be displayed</asp:Label><br />
                    </td>
                    <td style="width: 100px">
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true" 
                            AutoPostBack="True" DataSourceID="SqlDataSource1"
                            DataTextField="Cat_name" DataValueField="Cat_name" 
                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                            Font-Names="Cambria" Font-Size="12pt" CssClass="select">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                            SelectCommand="SELECT [Cat_name] FROM [category]"></asp:SqlDataSource>
                        &nbsp; &nbsp;&nbsp;<br />
                        &nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="#FFFFFF"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <br />
                        <asp:Button ID="btnsrch" runat="server" CssClass="btnsrch" Text="SEARCH" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" OnClick="btnsrch_Click" /><br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <asp:Panel ID="Panel2" runat="server" style="left: 409px; position: absolute; top: 490px" Width="742px">
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" Font-Names="Times New Roman" Font-Size="14pt" AutoGenerateColumns="False" Width="722px" ForeColor="#FFFFFF">
              <Columns>
              <asp:BoundField DataField="Item_id" HeaderText="ITEM ID" />
                <asp:BoundField DataField="Item_name" HeaderText="ITEM NAME" />
                <asp:BoundField DataField="Cat_id" HeaderText="CATEGORY ID" />
                <asp:BoundField DataField="Quantity" HeaderText="QUANTITY" />
                <asp:BoundField DataField="Price" HeaderText="PRICE" />
              </Columns>
                <RowStyle VerticalAlign="Middle" />
            </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    
    </form>
</body>
</html>
