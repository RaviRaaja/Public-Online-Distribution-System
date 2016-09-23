<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" style="-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title>OnlinePDS(Public Distribution System)</title>
	<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' />
	
	<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
		<script src="js/modernizr.custom.js"></script>
	<![endif]-->
	<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript">
	
	</script> 
</head>
<body >
	<!-- wraper -->
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">
				<!-- header -->
				<header id="header">
				<img src="css/images/logomy.jpg" alt="" align="left" line-height:10px style= "width: 51px;"/>
					<h1 style="font-family:broadway;color:rgb(163,64,56);font-size:40px;">Public Distribution System</h1>

					 <!-- search -->
					<div class="search">
					 
					
						<form method="post">
							<font color="#000000"><span class="field"><input type="text" style="width: 350px;" id="txt1" class="field" value=""></span></font>
							
						</form>
					</div>
							
					
				</header>
				<!-- end of header -->
				<!-- navigation -->
				<nav id="navigation">
					<a href="dealer.jsp" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="dealer.jsp">HOME</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
					</ul>
				</nav>
				
				<br/>
				<br/>
				
				<form action="dlogout.jsp">
				<p style=" margin-top:-20px;font-size:10px;" align="right">
				<input  type=submit value=LOGOUT>
				</form>
				
				<br/><br/><br/>
				<center><h3 style="font-size:30px;"><font color="#800000" ><u><b>Welcome Dealer</b></u></font></h3></center>
				
				
				<br/><br/>
				
				<center>
				
				<table border="1">
				<tr>
				   <td colspan="3">Beneficiary Name</td>
				   
				   <td>Ration Card Number</td>
				   <td>Category</td>
				   <td>Action</td>
				   <td>Transactions</td>
				   <td>Authenticate</td>
				</tr>
				<%
				
				String p1=session.getAttribute("session_uname").toString();
	Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class Laoded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database connected");
     PreparedStatement ps=con.prepareStatement("select r.Firstname,r.Middlename,r.Lastname,r.Rationcard_no from ration_card_table r,dealer_registration d where r.Status='Active' and r.pincode=d.d_pincode and d.d_license_no=?");
    PreparedStatement ps1=con.prepareStatement("select r.Income from ration_card_table r,dealer_registration d where r.Status='Active' and r.pincode=d.d_pincode and d.d_license_no=?");
    ps.setString(1,p1);
    ps1.setString(1,p1);
    ResultSet rs=ps.executeQuery();
    ResultSet rs1=ps1.executeQuery();
    
    while(rs.next())
    {
    %>
    <tr>
      <td colspan="3"><%=rs.getString("Firstname") %>
      <%=rs.getString("Middlename") %>
     <%=rs.getString("Lastname") %></td>
      <td><input type="text" id="rn" value="<%=rs.getString("Rationcard_no") %>"/></td>
      
      
     <% 
      if(rs1.next())
       {
       String a="";
        double i= rs1.getDouble("Income");
        if(i<=50000)
        { 
         a="AAY";
           
        }
        else
        {
        if(i>50000 && i<=150000)
        {
        a="BPL";
        }
        else
        a="APL";
        }
        %>
      <td><input type="text" name="cat" value="<%out.println(a);%>"></td>
      <td><a href="view.jsp?rcn=<%=rs.getString("Rationcard_No")%>&n=<%=rs.getString("Firstname")%>&cat=<%=a %>"><img src="css/images/view.png" width="18px" alt="View" title="View"/></a></td>
      
     
      <%                        
							    String com=rs.getString("Rationcard_No");
								PreparedStatement ps2 = con.prepareStatement("select r_no from bill");
								ResultSet rs2= ps2.executeQuery();
								
								while(rs2.next())
								{
		                        String com1=rs2.getString("r_no");
		                        if(com1.equals(com))
		                        {
								 %>	
							
     
    <td><%out.println("Done"); %></td>
     <%}} %>
     <td><form name="fuploadform" action="fupload.jsp" method="post" enctype="multipart/form-data">
      <input id="fUpload1" type="file" name="fUpload1" />
      <input id="btnSubmit" type="submit" value="submit" />
    </form></td>
    </tr>
    <%
    }
				 %>
				 
    <% 
    }
		con.close();		
		
		 %>
				 
		</table>		
				
				<br/><br/><br/>
				<table>
				<tr><td><form action="money.jsp">
				<input type="submit" value="View TOTAL MONEY Received"></form></td></tr>
				<tr><td><br/></td></tr>
				<tr>
				<td><form action="left.jsp">
				<input type="submit" value="View Left Stock of your Inventory"></form></td>
				</tr>
				
				</table>
				</center>
				
				
				<br/><br/><br/><br/><br/><br/>
				
				
				
				<div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
							<li><a href="#" class=><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a ></a></li>
							<li>2</li>
							<li><a href="#" class="email-ico"><span></span>mnss.2211pds</a><!-- end of footer-cols --> 
					</li>
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
				</div>
				<div id="footer"><div class="footer-bottom">
						<nav class="footer-nav"> 
							 
						</nav>
						<p class="copy">&copy; Copyright 2013 MNSS Pvt Ltd <span>|</span> <strong>Design by <a href="http://freecss.in" target="_blank">Softpro India.</a></strong></p>
						<div class="cl">&nbsp;</div>
					</div>
				</div>
			</div>
			<!-- end of container -->	
		</div>
		<!-- end of shell -->	
	</div>
	<!-- end of wrapper -->
	<script type="text/javascript">
	abc();
	function abc()
	{
	var dt=new Date();
	
	document.getElementById("txt1").value=dt;
	
	setTimeout("abc()", 1000);
	}
	</script> 
	
</body>
</html>
				
				