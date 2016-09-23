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
	<script type="text/javascript">
	function getValue()
  {
 x=document.getElementById("ww").value;
 y=document.getElementById("w1").value;
 document.getElementById("w2").value=x-y;

  }
  function getValue1()
  {
 x=document.getElementById("rr").value;
 y=document.getElementById("r1").value;
 document.getElementById("r2").value=x-y;

  }
  function getValue2()
  {
 x=document.getElementById("ss").value;
 y=document.getElementById("s1").value;
 document.getElementById("s2").value=x-y;

  }
  function getValue3()
  {
 x=document.getElementById("kk").value;
 y=document.getElementById("k1").value;
 document.getElementById("k2").value=x-y;

  }
  </script>
</head>
<body onload="getValue(),getValue1(),getValue2(),getValue3()">
	
	<div id="wrapper">
		
		<div class="shell">
			
			<div class="container">
				
				<header id="header">
				<img src="css/images/logomy.jpg" alt="" align="left" line-height:10px style= "width: 51px;"/>
					<h1 style="font-family:broadway;color:rgb(163,64,56);font-size:40px;">Public Distribution System
<a href="#"></a></h1>
					
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
					<a href="#" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="index.jsp">HOME</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
					</ul>
				</nav>
				<br><br><br>
					 <center><h3 style="font-size:30px;"><font color="#800000" ><u><b>Inventory Stocks</b></u></font></h3></center>
<br/><br/>
<center>
<form action="updatetransconnect.jsp">
<%
                              String dealer=session.getAttribute("session_uname").toString(); 
                                Class.forName("com.mysql.jdbc.Driver");
								System.out.println("Class loaded");
								Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pds", "root", "");
								System.out.println("Database Connected");
								
								PreparedStatement ps = cn.prepareStatement("select sno,leftrice,leftwheat,leftsugar,leftkerosene from update_stock where d_license=? order by sno desc");
								ps.setString(1,dealer);
								ResultSet rs= ps.executeQuery();
								rs.next(); %>	
								
 

<table border="1">
<tr>
<td>Dealer License No.</td>

<td><input type="text" name="dl" value="<%out.println(dealer); %>"/></td></tr>
<tr><td>Supply Date</td>
<td><% java.util.Date dt= new Date();%>
<input type="text" name="dd" value="<%out.println(dt);%>"/></td></tr>
<tr><td>Quantity of Rice available</td>
<td><input type="text" name="r" value="<%=rs.getString("leftrice")%>" id="rr" /></td>
</tr>
<tr><td>Quantity of Wheat available</td>
<td><input type="text" name="w" value="<%=rs.getString("leftwheat")%>" id="ww" /></td>
</tr>
<tr><td>Quantity of Kerosene available</td>
<td><input type="text" name="k" value="<%=rs.getString("leftkerosene")%>" id="kk" /></td>
</tr>
<tr><td>Quantity of Sugar available</td>
<td><input type="text" name="s" value="<%=rs.getString("leftsugar")%>" id="ss" /></td>
</tr>

 
 <%
								String a = request.getParameter("rquan");
								String b= request.getParameter("wquan");
								
								String c=request.getParameter("squan");
								String d=request.getParameter("kquan");
								String e=request.getParameter("totalprice");
	%>

<tr><td>Quantity of Rice spent</td>
<td><input type="text" id="r1" name="rqs" value="<%out.println(a);%>" ></td>
</tr>
<tr><td>Quantity of Wheat spent</td>
<td><input type="text" id="w1" name="wqs" value="<%out.println(b);%>"></td>
</tr>
<tr><td>Quantity of Sugar spent</td>
<td><input type="text" id="s1" name="sqs" value="<%out.println(c);%>"></td>
</tr>
<tr><td>Quantity of Kerosene spent</td>
<td><input type="text" id="k1" name="kqs" value="<%out.println(d);%>"></td>
</tr>
<tr><td>Quantity of Rice left</td>
<td><input type="text" id="r2" name="rleft" ></td>
</tr>
<tr><td>Quantity of Wheat left</td>
<td><input type="text" id="w2" name="wleft" ></td>
</tr>
<tr><td>Quantity of Sugar left</td>
<td><input type="text" id="s2" name="sleft"  ></td>
</tr>
<tr><td>Quantity of Kerosene left</td>
<td><input type="text" id="k2" name="kleft" ></td></tr>


</table>
<br/><br/>
<table>
<tr><td>Total Amount:</td><td><input type="text" name="a" value="<%out.println(e); %>"/></td></tr>
</table>
<br/><br/><input type="submit" value="Submit"/>
</form>
</center>
         
<br/><br/><br/><br/><br/><br/>
				
				<div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
							<li><a href="#" class="facebook-ico"><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a href="#" class="rss-feed-ico"><span></span>Gmail</a></li>
							
							
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
								<li></li>
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
