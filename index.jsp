
<%@ page language="java" import="java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
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
	history.forward();
	function noback()
	{
	history.forward();
	}
	</script>
	
</head>
<body onload="noback()">
	<!-- wraper -->
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">
				<!-- header -->
				<header id="header">
				<img src="css/images/logomy.jpg" alt="" align="left" line-height:10px style= "width: 51px;"/>
					<h1 style="font-family:broadway;color:rgb(163,64,56);font-size:40px;">Public Distribution System<a href="#">  
                      </a></h1>
                     <!--  <p style=" margin-top:-20px;font-size:10px;" align="right">
                       <font color="#400040">
                      <input type="text" id="txt1"/></font></p>-->
                   
					<!-- search -->
					<div class="search">
					 
					
						<form method="post">
							<font color="#000000"><span class="field"><input type="text" style="width: 350px;" id="txt1" class="field" value=""></span></font>
							
						</form>
					</div>
										
				
				                
                         
        <!-- end of search -->
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
				<!-- end of navigation -->
				<!-- slider -->
				<div class="m-slider">
					<div class="slider-holder">
						<span class="slider-shadow"></span>
						<span class="slider-b"></span>
						<div class="slider flexslider">
							<ul class="slides">
								<li>
									<div class="img-holder">
										<img src="css/images/mypds.png" alt="" />
									</div>
									<div class="slide-cnt">
										<h2>The task</h2><br/><h2>of making</h2><br/><h2>the PDS</h2><br/><h2>work.</h2>
										<div class="box-cnt">
										
										</div>
										
									</div>
								</li>
								<li>
									<div class="img-holder">
										<img src="css/images/mypds2.png" alt="" />
									</div>
									<div class="slide-cnt">
										<h2>Pilfering</h2><br/><h2>in manual</h2><br/><h2>PDS.</h2>
										<div class="box-cnt">
										</div>
										
									</div>
								</li>
								<li>
									<div class="img-holder">
										<img src="css/images/mypds3.png" alt="" />
									</div>
									<div class="slide-cnt">
										<h2>Demand </h2><br/><h2>of better</h2><br/><h2>PDS.</h2>
										<div class="box-cnt">
											
										</div>
										
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>		
				<!-- end of slider -->
				<!-- main -->
				<div class="main">
					
					<section class="cols">
						<div class="col">
							<img src="css/images/login.png" alt=""/>
							<div class="col-cnt">
							<form action="loginconnect.jsp">
                          UserId: <br/><input type="text" name="username"> <br/>
                          Password:<input type="password" name="pwd">
                          <br/>
                          
                          <br/><input type="submit" value="Login"/>
                                   </form>
								<h3>New User?</h3>
								<form action="register.jsp">
								<input type="submit" value="beneficiary"/>
								
								</form>
								<form action="dealerreg.jsp">
								<input type="submit" value="dealer"/>
								</form>
								
								
							</div>
						</div>
						<div class="col">
							<img src="css/images/bio.png" alt="" />
							<div class="col-cnt">
								<h2>Biometric System</h2>
								<p>Biometrics refers to the identification of humans by their characteristics or traits. Biometrics is used in computer science as a form of identification and access control.</p>
								<a href="moreonbio.jsp" class="more">view more</a>
							</div>
						</div>
						<div class="col">
							<img src="css/images/obj.png" alt="" />
							<div class="col-cnt">
								<h2>Objective of Online PDS</h2>
								<p>To enhance efficiency and transparency in distribution chain through implementation of Web Based Application.
								To centralize database as all the records will be stored at single location.</p>
								<a href="objpds.jsp" class="more">view more</a>
							</div>
						</div>
						<div class="cl">&nbsp;</div>
					</section>
					<section class="post">
						<div class="video-holder">
							<img src="css/images/whatispds.png" alt="" />
						</div>

						<div class="post-cnt">
							<h2>What is Online PDS?</h2>
							<p>Public Distribution System (PDS) is an Indian food security system. Established by the Government of India under Ministry of Consumer Affairs, Food, and Public Distribution and managed jointly with state governments in India, it distributes subsidized food and non-food items to India's poor. Major commodities distributed include staple food grains, such as wheat, rice, sugar, and kerosene, through a network of Public distribution shops, also known as Ration shops established in several states across the country. Food Corporation of India, a Government-owned corporation, procures and maintains the Public Distribution System.
In terms of both coverage and public expenditure, it is considered to be the most important food security network. However, the food grains supplied by the ration shops are not enough to meet the consumption needs of the poor or are of inferior quality.The PDS has been criticised for its urban bias and its failure to serve the poorer sections of the population effectively. The targeted PDS is costly and gives rise to much corruption in the process of extricating the poor from those who are less needy. Online public distributions system based on biometric system provides electronic portal that is well suited over traditional public distribution systems.

 It provides fully automated and computerized  system to reduce storage losses, theft and black marketing</p>
				
						</div>
						<div class="cl">&nbsp;</div>
					</section>

					<section class="testimonial">
						<h2>Press Release Regarding Online PDS</h2>

						<p><strong class="quote"></strong>The Public Distribution System has undergone a sea change in the allotment of food grains in Uttar Pradesh.
In the past,the PDS dealers got the allotment on paper.This was time taking and cumbersome.
Now they will get the allotment online.This is bound to provide relief to both PDS dealers and consummers across the state.
Governor Syed Ahmad inaugurated the new system today.<strong class="quote"></strong></p>

						<p class="author"> <strong><br></strong></p>
					</section>
				</div>
				<!-- end of main -->
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
							
						
							<h2>Visitor No. :</h2>
							<%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("Welcome to my website!");
       hitsCount = 1;
    }else{
       /* return visit */
       out.println("Welcome back to my website!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<p>Total number of visits: <%= hitsCount%></p>
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
				