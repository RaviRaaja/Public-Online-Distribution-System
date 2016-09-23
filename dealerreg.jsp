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
	function confirmpass()
	{
	var pass=document.getElementById("p").value
	var conpass=document.getElementById("cp").value
	if(pass!=conpass)
	{
	alert('wrong confirm password');
	}}
	function validate()
	{
	x=document.myForm;
	input=x.d_license_no.value;
	if(input.length)
	{
	alert("the field cannot contain less than 6 characters!");
	return false;
	}
	else
	{
	return true;
	}
	}
	function validate1()
	{
	x=document.myForm;
	input=x.d_pincode.value;
	if(input.length<6)
	{
	alert("the field cannot contain less than 6 characters!");
	return false;
	}
	else
	{
	return true;
	}
	}
	function validate2()
	{
	x=document.myForm;
	input=x.d_contact_no.value;
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
						<li class="active"><a href="index.jsp">HOME</a></li>
						<li><a href="aboutus.jsp">About Us</a></li>
						<li><a href="products.jsp">Products</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
					</ul>
				</nav>
				
				<br/><br/>
				<center>
		<form  name="myForm" action="dealerconnect.jsp" method="post">
		<table width="50%" align="center" >
	         
	          <tr><td colspan="2" align="center" style="font-size:20px;"><b><u>Register Yourself as Dealer</u></b></td></tr>
	          <tr><td><br/></td></tr><tr><td><br/></td></tr>
			<tr><td>First Name:</td><td><input autofocus="autofocus" type="text" name="d_first_name" required></td></tr>
			<tr><td>Middle Name:</td><td><input type="text" name="d_middle_name"/></td></tr>
			<tr><td>Last Name:</td><td><input autofocus="autofocus" type="text" name="d_last_name" required ></td></tr>
			<tr><td>Gender:</td><td><input autofocus="autofocus" type="radio" id="radio1" name="d_gender" value="M"/>Male<br><input id="radio2" type="radio" name="d_gender" value="F"/>Female</td></tr>
			<tr><td>Date of Birth:</td><td><input  type="date" name="d_dob"></td></tr>
			<tr><td>License Number:</td><td><input autofocus="autofocus" type="text" name="d_license_no" maxlength="15" onblur="validate()" required></td></tr>
			<tr><td>Password:</td><td><input autofocus="autofocus" type="password" name="d_password" id="p" required></td></tr>
			<tr><td>Confirm Password:</td><td><input autofocus="autofocus" type="password" name="d_confirm_password" onblur="confirmpass()" id="cp" required></td></tr>
			
			<tr><td>Store:</td><td><input autofocus="autofocus" type="text" name="store" required></td></tr>
			
			
			
			<tr><td>Store District:</td><td><input  type="text" name="d_store_district"  ></td></tr>
			<tr><td>Store Zone:</td><td><input autofocus="autofocus" type="text" name="d_store_zone" required></td></tr>
			<tr><td>Address:</td><td><textarea name="Address" rows="4" cols="20"></textarea></td></tr>
			<tr><td>Pincode:</td><td><input autofocus="autofocus" type="text" name="d_pincode" maxlength="6" onblur="validate1()" required  id="v"></td></tr>
			
			<tr><td>Contact Number:</td><td><input autofocus="autofocus" type="text" maxlength="10" name="d_contact_no" onblur="validate2()" required ></td></tr>
			<tr><td>Email ID:</td><td><input autofocus="autofocus" type="email" name="d_email_id" required ></td></tr>
			
			<tr><td><br/></td></tr>
			<tr><td><br/></td></tr>
			<tr><td><br/></td></tr>
			
			<tr><td colspan="2" align="center"><input type="submit" id="button1" value="Register"/></td></tr>
			
			</table>
			</form>
			</center><br/><br/><br/>
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
			