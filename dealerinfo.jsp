<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
	<script src="js/functions.js" type="text/javascript"></script> 
</head>
<body>
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
					<a href="beneficiary.jsp" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="beneficiary.jsp">HOME</a></li>
						<li><a href="dealerinfo.jsp">Dealer Info</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
						
						
					</ul>
				</nav>
				
				<form action="ulogout.jsp">
				<p style=" margin-top:-20px;font-size:10px;" align="right">
				<input  type=submit value=LOGOUT>
				</form>
				<% 
				
				String p=request.getParameter("upin");
               String p1=request.getParameter("");
				String aa=session.getAttribute("session_uname").toString();
				Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class Loaded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database connected");
     
     PreparedStatement ps=con.prepareStatement("select b.d_first_name,b.d_middle_name,b.d_last_name,b.d_license_no,b.store,b.d_store_district,b.d_store_zone,b.d_address,b.d_contact_no,b.d_email_id from user_registration a,dealer_registration b where a.upin=b.d_pincode and a.u_email_id=? ");
    
     ps.setString(1,aa);
     
     ResultSet rs=ps.executeQuery();
     if(rs.next())
     {
     %>
     
     
     <center><h1><b>YOUR DEALER INFORMATION</b></h1>
     <br/>
     <br/>
     
     
    <table>
    <tr>
    <td><b>Name:</b></td>
   <td><%=rs.getString("d_first_name")%></td>
  
   <td><%=rs.getString("d_middle_name")%></td>
   
   <td><%=rs.getString("d_last_name")%> </td></tr>
   
   
   
   <tr>
   <td><b>License no:</b></td>
   <td><%=rs.getString("d_license_no")%></td>
   </tr>
   
   <tr>
   <td><b>Store Information:</b></td>
   <td><%=rs.getString("store")%></td>
   <td></td>
   <td><%=rs.getString("d_address")%></td>
   <td></td>
   <td><%=rs.getString("d_store_zone")%></td>
   <td></td>
   <td><%=rs.getString("d_store_district")%></td>
   <td></td>
   
   </tr>
   
   
   <tr>
   <td><b>Contact Information:</b></td>
   <td><%=rs.getString("d_contact_no")%></td>
   <td></td>
   <td><%=rs.getString("d_email_id")%></td>
   
   </tr>
   
   </table>
   </center>
   <%
   }
    %>		
				
			
				<div class="clear">&nbsp;</div>
						
				<div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
							<li><a href="#" class=><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a ></a></li>
							<li><a ></a></li>
							<li><a href="#" class="email-ico"><span></span>mnss.2211pds</a></li>
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
				</div>
				<div id="footer">
					
					<!-- end of footer-cols -->
					<div class="footer-bottom">
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
				
		
				