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
					<h1 style="font-family:broadway;color:rgb(163,64,56);font-size:40px;">Public Distribution System

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
					<a href="admin_dealauthentication.jsp" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="admin_dealauthentication.jsp">Dealer Authentication</a></li>
						<li><a href="admin_dealer.jsp">Dealers</a></li>
						<li><a href="beneauthentication.jsp">User Authentication</a></li>
						<li><a href="admin_beneficiary.jsp">Beneficiaries</a></li>
						<li><a href="newsncircular.jsp">News And Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						
					</ul>
				</nav>
				
				
				<nav id="navigation">
					<a href="admin_dealauthentication.jsp" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="feedbackview.jsp">Feedback</a></li>
						<li><a href="contactview.jsp">Contacts</a></li>
						<li><a href="report.jsp">Report</a></li>
						
					</ul>
				</nav>
				
				<br/>
				
				
				<form action="alogout.jsp">
				<p style=" margin-top:-20px;font-size:10px;" align="right">
				<input  type=submit value=LOGOUT>
				</form>
  
  
    
    <div>
				<center><p style="font-weight: bolder;color:rgb(163,64,56); font-size:3.2em; margin:10%">WELCOME ADMIN</p></center>
				
				</div>
    <center><h1 style="font-size:30px ">Activate dealers </h1></center>
    <br/>
    <br/>
    <center>
    <h2>The New Dealers Registered:</h2>
    <br/><br/>
    <table border="1">
    <tr><th colspan="3" >Dealer Name</th>
    <th>License Number</th>
    <th>Details</th>
    </tr>
    
    <% 
         String p=session.getAttribute("session_uname").toString();
         Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class loaded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database connected");
    PreparedStatement ps=con.prepareStatement("select Firstname,Middlename,Lastname,License_no from dealer_status_table where Status='inactive'");
    
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    %>
    <tr>
      <td colspan="3"><%=rs.getString("Firstname") %>
      <%=rs.getString("Middlename") %>
      <%=rs.getString("Lastname") %></td>
      <td><%=rs.getString("License_no") %></td>
      <td><a href="dealer_details.jsp?rcn=<%=rs.getString("License_No")%>&n=<%=rs.getString("Firstname")%>">View</a></td>
    </tr>
    <% } %>
    </table>
    <br/><br/><br/>
    <h2>To Authenticate New Dealer:</h2><br/><br/>
    <form  method="post" action="admin_dealauthenticationconnect.jsp" >
    
    <table>
   
    <tr><td >Enter Dealer License Number:</td><td><input autofocus="autofocus" type="text" name="t2" required/></td></tr>
    </table>
    <input type="submit" value="Submit"/>
   
    </form>
   </center>
   
   
   
    <br/>
    
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
				
				

