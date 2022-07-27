<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uhome.aspx.cs" Inherits="uhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="menu2.css" rel="stylesheet" type="text/css" />
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
    <li><a href="usalesbill.aspx">GENERATE BILL </a></li>
    <li><a href="usreturn.aspx">RETURN </a></li>
    </ul>
    </li>
    </ul>
    
     <ul>
    <li><a><i class="fas fa-bars"></i>  PURCHASE</a>
    <ul>
    <li><a href="upurbill.aspx">GENERATE BILL</a></li>
    <li><a href="upurreturndetail.aspx">RETURN DETAILS</a></li>
    <li><a href="upurorderdis.aspx">ORDER DISPLAY</a></li>
     <li><a href="upurbilldetails.aspx">BILL DISPLAY</a></li>
    </ul>
    </li>
    </ul>
    
     <ul>
    <li><a><i class='fas fa-glasses'></i>  STOCK</a>
    <ul>
    <li><a href="ucatdis.aspx">CATEGORY </a></li>
    <li><a href="ucompdis.aspx">COMPANY </a></li>
    <li><a href="umodeldis.aspx">MODEL</a></li>
  
    </ul>
    </li>
    </ul>
    
    
    <ul>
    <li><a><i class='fas fa-glasses'></i>  PRODUCT</a>
    <ul>
    <li><a href="upadd.aspx">ADD</a></li>
    <li><a href="upupdate.aspx">UPDATE</a></li>
    <li><a href="upsearch.aspx">SEARCH</a></li>
    <li><a href="updisplay.aspx">DISPLAY</a></li>
    </ul>
    </li>
    </ul>
   
    
    
    <ul>
     <li><a> <i class='fas fa-user-tie'></i>  SUPPLIER</a>
     <ul>
   
    <li><a href="usupdisplay.aspx">DISPLAY</a></li>
   
    </ul>
    </li>
    </ul>
      
   
    </div>
    </form>
</body>
</html>
