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
	input=x.upin.value;
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
	input=x.u_ration_card_no.value;
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
	input=x.u_contact_no.value;
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
						<li class="active"><a href="#">HOME</a></li>
						<li><a href="aboutus.jsp">About Us</a></li>
						<li><a href="products.jsp">Products</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
					</ul>
				</nav>
				
		<br/>
		<center>
		<form name="myForm" method="post" action="regconnect.jsp">
		<table width="50%" align="center" >
	         
	          <tr><td colspan="2" align="center" style="font-size:20px;"><b><u>Register Yourself</u></b></td></tr>
	          <tr><td><br/></td></tr><tr><td><br/></td></tr>
			<tr><td>First Name:</td><td><input autofocus="autofocus" type="text" name="u_first_name" required></td></tr>
			<tr><td>Middle Name:</td><td><input type="text" name="u_middle_name"/></td></tr>
			<tr><td>Last Name:</td><td><input autofocus="autofocus" type="text" name="u_last_name" required></td></tr>
			
			<tr><td>Password:</td><td><input autofocus="autofocus" type="password" name="u_pwd" id="p" required></td></tr>
			<tr><td>Confirm Password:</td><td><input autofocus="autofocus" type="password" name="u_confirmpwd" value="" onblur="confirmpass()" id="cp" required></td></tr>
			
			<tr><td>Father's/Husband's Name:</td><td><input autofocus="autofocus" type="text" name="u_fhname" required></td></tr>
			
			<tr><td>Gender:</td><td><input type="radio" id="radio1" name="u_gender" value="M"/>Male<br><input id="radio2" type="radio" name="u_gender" value="F"/>Female</td></tr>
			<tr><td>Date of Birth:</td><td><input autofocus="autofocus" type="date" name="u_dob" required></td></tr>
			<tr><td>Occupation:</td><td><input autofocus="autofocus" type="text" name="u_occupation" required></td></tr>
			<tr><td>Address Line1:</td><td><input autofocus="autofocus" type="text" name="u_add1" required></td></tr>
			<tr><td>Address Line2:</td><td><input type="text" name="u_add2"/></td></tr>
			<tr><td>City:</td><td><input autofocus="autofocus" type="text" name="ucity" required></td></tr>
			<tr><td>Pincode:</td><td><input autofocus="autofocus" type="text" maxlength="6" name="upin" onblur="validate()" required></td></tr>
			<tr><td>State:</td><td><input autofocus="autofocus" type="text" name="ustate" required></td></tr>
			<tr><td>Ration Card No:</td><td><input autofocus="autofocus" type="text" maxlength="6" name="u_ration_card_no" onblur="validate1()" required></td></tr>
			<tr><td>User_Id(Email ID):</td><td><input autofocus="autofocus" type="email" name="u_email_id" required></td></tr>
			<tr><td>Contact Number:</td><td><input  autofocus="autofocus" type="text" maxlength="10" name="u_contact_no" onblur="validate2()" required></td></tr>
			<tr><td>Number of Adults:</td><td><input autofocus="autofocus" type="text" name="u_noofadults" required/></td></tr>
			<tr><td>Number of Minors:</td><td><input autofocus="autofocus" type="text" name="u_noofminor" required/></td></tr>
			
			
			
			
			<tr>
			<td>
			Total Annual Income:
			</td>
			<td><input type="text" name="u_income"/></td>
			</tr>
	
			<tr><td><br/></td></tr>
			<tr><td><br/></td></tr>
			<tr><td><br/></td></tr>
			
			<tr><td colspan="2" align="center"><input type="submit" id="button1" value="Register" onblur="validate(),validate1(),validate2()"/></td></tr>
           
		</table></form></center>
		<br/><br/>
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