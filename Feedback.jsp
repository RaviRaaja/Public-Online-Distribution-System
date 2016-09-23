<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Feedback.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
 <body>
  
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
	function validate()
	{
	x=document.myForm;
	input=x.mobno.value;
	if(input.length<10)
	{
	alert("the field cannot contain less than 10 characters!");
	return false;
	}
	else
	{
	return true;
	}
	}
	</script>
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
						<li><a href="aboutus.jsp">About Us</a></li>
						<li><a href="products.jsp">Products</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
					</ul>
				</nav>
				<!-- end of navigation -->
 <!-- Begin Freedback Form -->
<!-- DO NOT EDIT YOUR FORM HERE, PLEASE LOG IN AND EDIT AT FREEDBACK.COM -->
 <br>
 <form name="myForm" action="feedbackconnect.jsp" method="post">
	<table width=50% border="0">
		<tr>
			<td>Name:</td>
			<td><input autofocus="autofocus" type="text" name="name"  required/>
			</td>
		</tr>
		<tr>
		<td>Email Address:</td>
			<td><input  type="email" name="email"  required/>
			</td>
		</tr>
		<tr>
		<td>Mobile No.:</td>
			<td>
				<input  type="text" maxlength="10" name="mobno" onblur="validate()" required/>
			</td>
		</tr>
		<tr>
			<td>FeedBack:</td>
			<td>
				<textarea  name="feedback" rows="5" cols="30" required></textarea>
				
			</td>
		</tr>
		<tr>
			<td>Have You Filled Any feedback form before on our website?
			</td>
			<td>
				<select name="abc" id="abc">
					<option value="Yes">Yes</option>
					<option value="No">No</option>
				</select>
				
			</td>
		</tr>
		<tr>
			<td>Were You Satisfied By The Action Taken By Us?
			</td>
			<td>
				<select name="xyz" id="xyz">
					<option value="Yes">Yes</option>
					<option value="No">No</option>
				</select>
				
			</td>
		</tr>
		<tr>
			<td>Any Complaints:
			</td>
			<td>
				<textarea name="complain" rows="5" cols="30"></textarea>
				
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value=" Submit Form " />
			</td>
		</tr>
				
	</table>
</form>


<br><center><font face="Arial, Helvetica" size="1"><b>
</center>
<!-- End Freedback Form -->
 
 <div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
						<ul>
						<ul>
							<li><a href="#" class="facebook-ico"><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a href="#" class="mail-ico"><span></span>Gmail</a></li>
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
						<div class="cl">&nbsp;
						</div>
					</div>
					<!-- end of footer-cols -->
					<div class="footer-bottom">
						<nav class="footer-nav"></nav>
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
	</html></script></head><br><br><br></html>