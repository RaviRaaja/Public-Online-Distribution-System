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
						<li><a href="feedbackconnect.jsp">Feedback</a></li>
						<li><a href="contactconnect.jsp">Contacts</a></li>
						
					</ul>
				</nav>		
				
				<br/>
				<br/>
				
				
  <%
  
                      
								String r = request.getParameter("rcn");
							    String b = request.getParameter("n");
								Class.forName("com.mysql.jdbc.Driver");
								System.out.println("Class loaded");
								Connection con = DriverManager.getConnection(
										"jdbc:mysql://localhost:3306/pds", "root", "");
								System.out.println("Database Connected");
								PreparedStatement ps = con.prepareStatement("select u_first_name,u_last_name,u_fhname,u_gender,u_dob,u_occupation,u_add1,u_add2,ucity,upin,ustate,u_email_id,u_contact_no,u_noofadults,u_noofminor,u_income from user_registration where u_ration_card_no=?");
								ps.setString(1,r);
								ResultSet rs=ps.executeQuery();
								while(rs.next())
								{
   %>
  <br/><br/><br/>
  <center>
  <h1><font color="#804040">DETAILS</font></h1>
  <br/>
  <table border="1">
      <tr>
      <td>First Name</td><td><%=rs.getString("u_first_name") %></td>
      </tr>
      <tr>
      <td>Last Name</td><td><%=rs.getString("u_last_name") %></td>
      </tr>
      <tr>
      <td>Father's/Husband's Name</td><td><%=rs.getString("u_fhname") %></td>
      </tr>
      <tr>
      <td>Gender</td><td><%=rs.getString("u_gender") %></td>
      </tr>
      <tr>
      <td>Date of Birth</td><td><%=rs.getString("u_dob") %></td>
      </tr>
      <tr>
      <td>Occupation</td><td><%=rs.getString("u_occupation") %></td>
      </tr>
      <tr>
      <td>Address line 1</td><td><%=rs.getString("u_add1") %></td>
      </tr>
      <tr>
      <td>Address line 2</td><td><%=rs.getString("u_add2") %></td>
      </tr>
      <tr>
      <td>City</td><td><%=rs.getString("ucity") %></td>
      </tr>
      <tr>
      <td>Pin code</td><td><%=rs.getString("upin") %></td>
      </tr>
      <tr>
      <td>State</td><td><%=rs.getString("ustate") %></td>
      </tr>
      <tr>
      <td>Email ID</td><td><%=rs.getString("u_email_id") %></td>
      </tr>
      <tr>
      <td>Contact Number</td><td><%=rs.getString("u_contact_no") %></td>
      </tr>
      <tr>
      <td>Number of adults</td><td><%=rs.getString("u_noofadults") %></td>
      </tr>
      <tr>
      <td>Number of minors</td><td><%=rs.getString("u_noofminor") %></td>
      </tr>
      <tr>
      <td>Income</td><td><%=rs.getString("u_income") %></td>
      </tr>
  
  </table>
  
  <br/><br/>
  <a href="beneauthentication.jsp">Go Back</a>
  </center>
  
  <%  
  }
   %>
  
   <br/><br/><br/><br/><br/><br/>
     <div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
							<li><a href="#" class=><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a ></a></li>
							<li>rd</li>
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
				
				

  