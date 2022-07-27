<%@ Page Language="C#" AutoEventWireup="true" CodeFile="apurorder.aspx.cs" Inherits="apurorder" %>

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
        <asp:Panel ID="Panel2" runat="server">
            <table>
                <tr>
                    <td colspan="6">
                        <br />
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="24pt"
                            Text="PURCHASE ORDER" ForeColor="#000000"></asp:Label><br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="lblpono" runat="server" CssClass="lblpono" Font-Bold="False" Font-Names="Cambria"
                            Font-Size="14pt" Text="Purchase Order No." Width="218px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="Label2" runat="server" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="lblordrd" runat="server" CssClass="lblordrd" Font-Names="Cambria"
                            Font-Size="14pt" Height="22px" Text="Order date" Width="204px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="lblorderd" runat="server" CssClass="lblorderd" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="lbldued" runat="server" CssClass="lbldued" Text="Due Date" Width="115px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="lbldues" runat="server" CssClass="lbldues" ForeColor="#000000"></asp:Label><br />
                        <br />
                        <br />
                        <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" >
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True"
                                Font-Size="12pt" ForeColor="#333399" />
                        </asp:Calendar>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel4" runat="server" Width="982px">
            <table style="width: 958px">
                <tr>
                    <td colspan="6">
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Cambria" Font-Size="16pt"
                            Text="SUPPLIER DETAILS" ForeColor="#000000"></asp:Label><br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="lblnames" runat="server" CssClass="lblnames" Text="Supplier Name" Font-Names="Cambria" Font-Size="14pt" Width="175px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                            DataTextField="sname" DataValueField="sname" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                            SelectCommand="SELECT [sname] FROM [supplier]"></asp:SqlDataSource>
                        <br />
                        &nbsp;<br />
                        &nbsp;&nbsp;
                    </td>
                    <td style="width: 100px">
                        <asp:Label ID="lblids" runat="server" CssClass="lblids" Text="Supplier ID" Font-Names="Cambria" Font-Size="14pt" Width="189px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="Label4" runat="server" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="lblsadrs" runat="server" CssClass="lblsadrs" Text="Address" Font-Names="Cambria" Font-Size="14pt" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:Label ID="Label6" runat="server" ForeColor="#000000"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="6">
                        <br />
                        <asp:Button ID="btnrsave" runat="server" CssClass="btnrsave"
            Text="ENTER ITEM DETAILS" OnClick="btnrsave_Click" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" /><br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="76px" Width="829px">
        <br />
        <br />
            <table style="width: 832px">
                <tr>
                    <td colspan="6" style="height: 42px">
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="ITEM DETAILS" Font-Names="Cambria" Font-Size="16pt" ForeColor="#000000"></asp:Label><br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
                        <asp:Label ID="lblinamep" runat="server" CssClass="lblinamep" Text="Item Name" Font-Names="Cambria" Font-Size="14pt" Width="187px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" AppendDataBoundItems="True" DataSourceID="SqlDataSource2"
                            DataTextField="Item_name" DataValueField="Item_name" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=LAPTOP-H3MPTQHS;Initial Catalog=project;Integrated Security=true"
                            SelectCommand="SELECT [Item_name] FROM [Stock]"></asp:SqlDataSource>
                        <br />
                        &nbsp;<br />
                        &nbsp;
                    </td>
                    <td style="width: 100px">
                        <asp:Label ID="Label3" runat="server" Text="Item ID" Width="129px" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <asp:TextBox ID="txtide" runat="server" Enabled="False"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:Label ID="lbliqtyp" runat="server" CssClass="lbliqtyp" Text="Quantity" Font-Names="Cambria" Font-Size="14pt" ForeColor="#000000"></asp:Label></td>
                    <td style="width: 100px">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="tt" runat="server" ErrorMessage="Only numbers!!" ControlToValidate="TextBox1" ValidationExpression="^[0-9]*$" Width="210px"></asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td colspan="6" style="height: 65px">
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Button ID="btnnxt" runat="server" Text="NEXT PURCHASE" CssClass="btnnxt" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt" OnClick="btnnxt_Click" />&nbsp;<asp:Button
                            ID="Button1" runat="server" Font-Bold="True" Font-Names="Cambria" Font-Size="14pt"
                            OnClick="Button1_Click" Text="PLACE ORDER" /></td>
                </tr>
            </table>
            &nbsp; &nbsp;&nbsp;&nbsp;
        <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        &nbsp;<br />
        &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="#000000" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
 
<RowStyle BackColor="#ffffff" ForeColor="#000000" Font-Size="16px" />
<HeaderStyle BackColor="#4a70d0" ForeColor="#ffffff" Font-Size="20px" />
<AlternatingRowStyle BackColor="#c0c0c0" ForeColor="#000000" Font-Size="16px" />
</asp:GridView>
      
        &nbsp;</div>
    </form>
</body>
</html>
