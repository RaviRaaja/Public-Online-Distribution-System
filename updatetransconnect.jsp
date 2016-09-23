<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
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
							<span class="field"><input type="text" class="field" value="Search here..." title="Search here..." /></span>
							<input type="submit" class="search-btn" value="" />
						</form>
					</div>
					<!-- end of search -->
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
				
				
    <%
								
								String deal=request.getParameter("dl");
								String dat= request.getParameter("dd");
								String rd= request.getParameter("r");
								String wd= request.getParameter("w");
								String kd= request.getParameter("k");
								String sd= request.getParameter("s");
								
								String aa2= request.getParameter("rqs");
								String bb2= request.getParameter("wqs");
								String cc2= request.getParameter("sqs");
								String dd2= request.getParameter("kqs");
								 String rl=request.getParameter("rleft");
								String wl=request.getParameter("wleft");
							  
							   String sl=request.getParameter("sleft");
							   String kl=request.getParameter("kleft");
							   String money=request.getParameter("a");
								Class.forName("com.mysql.jdbc.Driver");
								System.out.println("Class loaded");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pds", "root", "");
								System.out.println("Database Connected");
								
								PreparedStatement ps = con.prepareStatement("insert into inventry values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
								PreparedStatement ps1 = con.prepareStatement("insert into update_stock(d_license,s_date,leftrice,leftwheat,leftsugar,leftkerosene) values(?,?,?,?,?,?)");
								PreparedStatement ps2 = con.prepareStatement("insert into money(money_d_license,total_amt) values(?,?)");
								ps.setString(1, deal);
								ps.setString(2,dat);
								ps.setString(3,rd);
								ps.setString(4,wd);
								ps.setString(5,kd);
							    ps.setString(6,sd);
							    ps.setString(7,aa2);
							    ps.setString(8,bb2);
							    ps.setString(9,cc2);
							    ps.setString(10,dd2);
							    ps.setString(11,rl);
								ps.setString(12,wl);
								ps.setString(13,sl);
								ps.setString(14,kl);
								ps1.setString(1,deal);
								ps1.setString(2,dat);
								ps1.setString(3,rl);
								ps1.setString(4,wl);
								ps1.setString(5,sl);
								ps1.setString(6,kl);
								ps2.setString(1,deal);
								ps2.setString(2,money);
								int n = ps.executeUpdate();
								int n1 = ps1.executeUpdate();
								int n2 = ps2.executeUpdate();
								con.close();
							%>
							
							<br/><br/><br/>
							<center><h2>Your inventory stocks and money have been updated.</h2>
							<br/><br/>
							<a href="dealer.jsp">Go Back</a>
							</center>
			
<br/><br/><br/><br/><br/><br/>
     <div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
							<li><a href="#" class=><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a ></a></li>
							<li></li>
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
</body>
</html>
				
				

  