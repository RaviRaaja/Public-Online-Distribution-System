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
	function validate()
	{
	x=document.myForm;
	input=x.phonenumber.value;
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
					<a href="index.jsp" class="nav-btn">HOME<span class="arr"></span></a>
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
						<br/><br/>
				               <h1><font color="maroon"><b>Contact Us</b></font></h1>
				               <br>
				               <div style="margin-left:20px"> 
				               
				                <b> Email : <a href="#" class="email-ico"><span></span>mnss2211pds </b> </a>
				               <br> 
				                <b>Phone : 0522-236785</b> <br>
				                <br> <style="font-size:100px;"> </style>
				                For any further enquiries you can send through this form
				               
				               </div>
				               <br>
				       <div>
				    <center>
				    <br>
				    <fieldset><h1> FORM </h1>
				      <legend></legend>
				    
				    <form name="myForm" method="post" action="contactconnect.jsp">
				    <table width="50%">
				      <tr>
				         <td>First Name:</td>
				         <td><input autofocus="autofocus" type="text" name="FirstName" required/></td>
				      </tr>
				      <tr>
				         <td>Last Name:</td>
				         <td><input  type="text" name="LastName" required></td>
				      </tr>
				      <tr>
				         <td>E-mail:</td>
				         <td><input  type="email" name="Email" required></td>
				      </tr>
				      <tr>
				         <td>Phone:</td>
				         <td><input type="text" name="phonenumber" maxlength="10" onblur="validate()" required></td>
				      </tr>
				      <tr>
				         <td>Complain:</td>
				         <td>
                             <textarea name="Complain" rows="5" cols="30"></textarea>
                         </td>
				      </tr>
				      <tr>
				       <td>&nbsp;</td>
				       <td><input type="submit" value="Send"/></td>
				       <br>
				      
				     
				      </tr>
				     
				    </table>
				    <br>
                          
				    </form>
				    </fieldset>
				    </center>
				     </div>
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
							<ul>
								<li class="active"><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
						</nav>
						<p class="copy">&copy; Copyright 2013 MNSS Pvt Ltd <span>|</span> <strong>Design by <a href="http://freecss.in" target="_blank">Softpro India.</a></strong></p>
						<div class="cl">&nbsp;</div>
					</div>
				</div>
				     </div>
				     </div>
				     </div>
				     
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
				     
					