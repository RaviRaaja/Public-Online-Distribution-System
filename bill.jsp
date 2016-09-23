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
					<a href="dealer.jsp" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="dealer.jsp">HOME</a></li>
						
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
					</ul>
				</nav>
				
				<br/><br/><br/>
				
				
		                         <%
		                       
		                         String a= request.getParameter("txt");
		                         String b= request.getParameter("txt1");
		                         String c= request.getParameter("txt2");
		                         String d= request.getParameter("txt3");
		                         String e= request.getParameter("txt4");
		                         String f= request.getParameter("txt5");
		                         String g= request.getParameter("txt6");
		                         String h= request.getParameter("txt7");
		                         String i= request.getParameter("txt8");
		                         String j= request.getParameter("txt9");
		                         String k= request.getParameter("txt10");
		                         
		                         
		                         Class.forName("com.mysql.jdbc.Driver");
								System.out.println("Class loaded");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pds", "root", "");
								System.out.println("Database Connected");
								
								PreparedStatement ps = con.prepareStatement("insert into bill values(?,?,?,?,?,?,?,?,?,?,?)");
								
								
								ps.setString(1,a);
								ps.setString(2,b);
								ps.setString(3,c);
								ps.setString(4,d);
							    ps.setString(5,e);
							    ps.setString(6,f);
							    ps.setString(7,g);
							    ps.setString(8,h);
							    ps.setString(9,i);
							    ps.setString(10,j);
							    ps.setString(11,k);
							    
							    int n = ps.executeUpdate();
		                          %>		
				     <center>
					
					<h2 style="color: maroon"><u>BILL</u></h2>
					<br/><br/>
					<table style="color: black">
					<tr>
					<td>Ration Card Number:</td><td><%out.println(a); %></td></tr>
					<tr><td>Name:</td><td><%out.println(b); %></td></tr>
					<tr><td><br/></td></tr>
					<tr><td>Item</td><td>Amount(kg)</td><td>Price</td></tr>
					<tr><td><hr/></td><td><hr/></td><td><hr/></td></tr>
					<tr><td>Wheat:</td><td><%out.println(c); %></td><td><%out.println(d); %></td></tr>
					
					<tr><td>Rice:</td><td><%out.println(e); %></td><td><%out.println(f); %></td></tr>
					
					<tr><td>Sugar:</td><td><%out.println(g); %></td><td><%out.println(h); %></td></tr>
					
					<tr><td>Kerosene:</td><td><%out.println(i); %></td><td><%out.println(j); %></td></tr>
					<tr><td><hr/></td><td><hr/></td><td><hr/></td></tr>
					<tr><td>Total Price:</td><td></td><td><%out.println(k); %></td></tr>
					
					
					
					</table>
					
					
				</center>
				
				<br/><br/><br/><br/>
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
					<div class="footer-cols">
						<div class="col">
							<h2></h2>
							<ul>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
						<div class="col">
							<h2></h2>
							<ul>
								<li><a href="#"> </a></li>
								<li><a href="#"></a></li>
								<li><a href="#"> </a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
						<div class="col">
							<h2></h2>
							<ul>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"> </a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
						<div class="col">
							<h2></h2>
							<ul>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</div>
						<div class="cl">&nbsp;</div>
					</div>
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
				
		