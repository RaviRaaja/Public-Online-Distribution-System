<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"
	style="-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
		<title>OnlinePDS(Public Distribution System)</title>
		<link rel="shortcut icon" type="image/x-icon"
			href="css/images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css" type="text/css"
			media="all" />
		<link rel="stylesheet" href="css/flexslider.css" type="text/css"
			media="all" />
		<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700'
			rel='stylesheet' type='text/css' />

		<script src="js/jquery-1.8.0.min.js" type="text/javascript"></script>
		<!--[if lt IE 9]>
		<script src="js/modernizr.custom.js"></script>
	<![endif]-->
		<script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
		<script src="js/functions.js" type="text/javascript"></script>
<script type="text/javascript">
	function validateAmtw(no) {

		if(parseFloat(no.value)>25)
		{
         alert("Please enter quantity less than 25kgs");
         		
		}
	}
	function validateAmtr(no) {

		if(parseFloat(no.value)>10)
		{
         alert("Please enter quantity less than 10kgs");
         		
		}
	}
	function validateAmtwb(no) {

		if(parseFloat(no.value)>35)
		{
         alert("Please enter quantity less than 35kgs");
         		
		}
	}
	function validateAmtrb(no) {

		if(parseFloat(no.value)>14)
		{
         alert("Please enter quantity less than 14kgs");
         		
		}
	}
	function validateAmtsb(no) {

		if(parseFloat(no.value)>6)
		{
         alert("Please enter quantity less than 6kgs");
         		
		}
	}
	function validateAmtkb(no) {

		if(parseFloat(no.value)>12.5)
		{
         alert("Please enter quantity less than 12.5kgs");
         		
		}
	}

function getValue()
  {
 x=document.getElementById("wp").value;
 y=document.getElementById("wq").value;
  document.getElementById("p").value=x*y;

  }
  function getValuer()
  {
 x=document.getElementById("rp").value;
 y=document.getElementById("rq").value;
  document.getElementById("p2").value=x*y;

  }
  function sumValue()
  {
 x=document.getElementById("wq").value;
 y=document.getElementById("rq").value;
 document.getElementById("t").value=parseFloat(x)+parseFloat(y);
  }
  function sumPrice()
  {
 x=document.getElementById("p").value;
 y=document.getElementById("p2").value;
 document.getElementById("t1").value=parseFloat(x)+parseFloat(y);
  }
  function getValueb()
  {
 x=document.getElementById("wpb").value;
 y=document.getElementById("wq").value;
  document.getElementById("p").value=x*y;

  }
  function getValuerb()
  {
 x=document.getElementById("rpb").value;
 y=document.getElementById("rq").value;
  document.getElementById("p2").value=x*y;

  }
  function getQuan()
  {
 x=document.getElementById("sb").value;
 y=document.getElementById("sq").value;
  document.getElementById("p3").value=x*y;

  }
  function getVal()
  {
 x=document.getElementById("aw").value;
 y=document.getElementById("wq").value;
  document.getElementById("p").value=x*y;

  }
  function getValr()
  {
 x=document.getElementById("ar").value;
 y=document.getElementById("rq").value;
  document.getElementById("p2").value=x*y;

  }
  function getVala()
  {
 x=document.getElementById("as").value;
 y=document.getElementById("sq").value;
  document.getElementById("p3").value=x*y;

  }
  function getValaa()
  {
 x=document.getElementById("ak").value;
 y=document.getElementById("kq").value;
  document.getElementById("p4").value=x*y;

  }
  function getQuanb()
  {
 x=document.getElementById("kb").value;
 y=document.getElementById("kq").value;
  document.getElementById("p4").value=x*y;

  }
  function getTotal()
  {
 x=document.getElementById("wq").value;
 y=document.getElementById("rq").value;
 a=document.getElementById("sq").value;
 z=document.getElementById("kq").value;
  document.getElementById("bt").value=parseFloat(x)+parseFloat(y)+parseFloat(a)+parseFloat(z);

  }
  function getTotalp()
  {
 x=document.getElementById("p").value;
 y=document.getElementById("p2").value;
 a=document.getElementById("p3").value;
 z=document.getElementById("p4").value;
  document.getElementById("t1").value=parseFloat(x)+parseFloat(y)+parseFloat(a)+parseFloat(z);

  }
  function getTotala()
  {
 x=document.getElementById("wq").value;
 y=document.getElementById("rq").value;
 a=document.getElementById("sq").value;
 z=document.getElementById("kq").value;
  document.getElementById("atq").value=parseFloat(x)+parseFloat(y)+parseFloat(a)+parseFloat(z);

  }
  function getPricea()
  {
 x=document.getElementById("p").value;
 y=document.getElementById("p2").value;
 a=document.getElementById("p3").value;
 z=document.getElementById("p4").value;
  document.getElementById("t1").value=parseFloat(x)+parseFloat(y)+parseFloat(a)+parseFloat(z);

  }
</script>
	</head>
	<body>

		<div id="wrapper">

			<div class="shell">

				<div class="container">

					<header id="header">
					<img src="css/images/logomy.jpg" alt="" align="left"
						line-height:10px style="width: 51px;" />
					<h1
						style="font-family: broadway; color: rgb(163, 64, 56); font-size: 40px;">
						Public Distribution System
						<a href="#"></a>
					</h1>

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
					<a href="#" class="nav-btn">HOME<span class="arr"></span>
					</a>
					<ul>
						<li>
							<a href="index.jsp">HOME</a>
						</li>
						
						<li><a href="newsncircular.jsp">News and Circular</a>
						</li>
						<li>
							<a href="Gallery.jsp">Gallery</a>
						</li>
						<li>
							<a href="Feedback.jsp">Feedback</a>
						</li>
						<li>
							<a href="Contact.jsp">Contact Us</a>
						</li>
					</ul>
					</nav>
					<br />
					<br />
					<br />
					<center>
						<table>
							<%
								String r = request.getParameter("rcn");
								String b = request.getParameter("n");
								String category = request.getParameter("cat");
								Class.forName("com.mysql.jdbc.Driver");
								System.out.println("Class loaded");
								Connection con = DriverManager.getConnection(
										"jdbc:mysql://localhost:3306/pds", "root", "");
								System.out.println("Database Connected");
								PreparedStatement ps = con.prepareStatement("update ration_card_table set Category=? where Rationcard_no=?");
								ps.setString(1, category);
								ps.setString(2, r);
								int n = ps.executeUpdate();
								con.close();
							%>
							<tr>
								<td>
									Ration Card Number:
								</td>
								<td><input type="text" name="br" id="br" readonly="readonly" value="<%=r%>"/></td>
							</tr>


							<tr>
								<td>
									Beneficiary Name:
								</td>
								<td><input type="text" name="bn" id="bn" readonly="readonly" value="<%=b%>"/></td>
							</tr>
							<tr>
								<td>
									Category:
								</td>
								<td><input type="text" name="bc" readonly="readonly" value="<%=category%>"/></td>
							</tr>
						</table>
					</center>

					<br />
					<br />
					
					<br />
					

					
			<br/>
			<br/>		

					<%
						if (category.equals("APL")) {
					%>
					<center>
					<form action="updatetrans.jsp" method="post">
					
						<table border="1">
							<tr rowspan="2">
								<td>
									Commodity
								</td>
								<td>
									Price(per kg)
								</td>
								<td>
									Quantity(in kgs)
								</td>
								<td>
									Total Price
								</td>
							</tr>
							<tr>
								<td>
									Wheat
								</td>
								<td>
									<input type="text" id="wp" readonly="readonly" value="7.05"/> 
								</td>
								   
								<td>
									<input autofocus="autofocus" type="text" id="wq" name="wquan" 
										onblur="validateAmtw(this),getValue()" required />
								</td>
								
							
							     
								
								
								<td>
									<input  type="text" name="wtprice" id="p"/></td>
								
								 
								
							</tr>
							<tr>
								<td>
									Rice
								</td>
								<td>
									<input type="text" id="rp" readonly="readonly" value="9.25"/> 
								</td>
								<td>
									<input autofocus="autofocus" type="text" id="rq" name="rquan"  
									onblur="validateAmtr(this),getValuer(),sumValue(),sumPrice()" required/>
								</td>
								<td>
									<input  type="text" id="p2" name="rtprice" />
								</td>
							</tr>
							<tr>
								<td>
									Sugar
								</td>
								<td>
									- 
								</td>
								<td>
									<input type="text"  name="squan" id="sq" readonly="readonly" value="0"/> 
								</td>
								<td>
									<input type="text"  name="stprice" id="p3" readonly="readonly" value="0"/>
								</td>
							</tr>
							<tr>
								<td>
									Kerosene Oil
								</td>
								<td>
									- 
								</td>
								<td><input type="text" name="kquan" id="kq" readonly="readonly" value="0"/> 
								</td>
								<td>
									<input type="text"  name="ktprice" id="p4" readonly="readonly" value="0"/>
								</td>
							</tr>
							<tr>
								<td>
									<b>Total</b>
								</td>
								<td> </td>
								<td>
									<input type="text" name="totalquan" id="t"/>
								</td>
								<td>
									<input type="text" name="totalprice" id="t1"/>
								</td>
							</tr>
						
						</table>
						<br />
						
						<br />
						<br />

						<h2>
							To update transactions, Click here :
						</h2>
						<br />
						
							<input type="submit" value="Update" />
						</form>
						
					</center>
					<%
						}
					%>



					<%
						if (category.equals("BPL")) {
					%>
					<center>
					<form action="updatetrans.jsp" method="post">
					
						<table border="1">
							<tr rowspan="2">
								<td>
									Commodity
								</td>
								<td>
									Price(per kg)
								</td>
								<td>
									Quantity(in kgs)
								</td>
								<td>
									Total Price
								</td>
							</tr>
							<tr>
								<td>
									Wheat
								</td>
								<td>
									<input type="text" id="wpb" readonly="readonly" value="4.8"/> 
								</td>
								<td>
									<input type="text" id="wq" name="wquan"   
									onblur="validateAmtwb(this),getValueb() required" />
								</td>
								<td>
									<input type="text" id="p" name="wtprice" />
								</td>
							</tr>
							<tr>
								<td>
									Rice
								</td>
								<td>
									<input type="text" id="rpb" readonly="readonly" value="6.30"/> 
								</td>
								<td>
									<input type="text" id="rq" name="rquan"   
									onblur="validateAmtrb(this),getValuerb() required" />
								</td>
								<td>
									<input type="text" id="p2" name="rtprice" />
								</td>
							</tr>
							<tr>
								<td>
									Sugar
								</td>
								<td>
									<input type="text" id="sb" readonly="readonly" value="13.65"/> 
								</td>
								<td>
									<input type="text" id="sq" name="squan"  
									onblur="validateAmtsb(this),getQuan()required "/>
								</td>
								<td>
									<input type="text" name="stprice" id="p3"/>
								</td>
							</tr>
							<tr>
								<td>
									Kerosene Oil
								</td>
								<td>
									<input type="text" id="kb" readonly="readonly" value="14.96"/>
								</td>
								<td>
									<input type="text" id="kq" name="kquan"  
									onblur="validateAmtkb(this),getQuanb(),getTotal(),getTotalp() required"/>
								</td>
								<td>
									<input type="text" id="p4" name="ktprice" />
								</td>
							</tr>
							<tr>
								<td>
									<b>Total</b>
								</td>
								<td></td>
								<td>
									<input type="text" id="bt" name="totalquanb" />
								</td>
								<td>
									<input type="text" id="t1" name="totalprice" />
								</td>
							</tr>
						</table>
						<br />
						
						<br />
						<br />
                       <h2>
							To update transactions, Click here :
						</h2>
						<br />
						
							<input type="submit" value="Update" />
						</form>
						
						
					</center>
					<%
						}
					%>

					<%
						if (category.equals("AAY")) {
					%>
					<center>
					<form action="updatetrans.jsp" method="post">
					
						<table border="1">
							<tr rowspan="2">
								<td>
									Commodity
								</td>
								<td>
									Price(per kg)
								</td>
								<td>
									Quantity(in kgs)
								</td>
								<td>
									Total Price
								</td>
							</tr>
							<tr>
								<td>
									Wheat
								</td>
								<td>
									<input type="text" id="aw" readonly="readonly" value="2.00"/>
								</td>
								<td>
									<input type="text" id="wq" name="wquan"  
									onblur="validateAmtw(this),getVal()" required/>
								</td>
								<td>
									<input type="text" id="p" name="wtprice" />
								</td>
							</tr>
							<tr>
								<td>
									Rice
								</td>
								<td>
									<input type="text" id="ar" readonly="readonly" value="3.00"/>
								</td>
								<td>
									<input type="text" id="rq" name="rquan"  
									onblur="validateAmtr(this),getValr()" required/>
								</td>
								<td>
									<input type="text" id="p2" name="rtprice" />
								</td>
							</tr>
							<tr>
								<td>
									Sugar
								</td>
								<td>
									<input type="text" id="as" readonly="readonly" value="13.50"/>
								</td>
								<td>
									<input type="text" id="sq" name="squan"  
									onblur="validateAmtsb(this),getVala() required"/>
								</td>
								<td>
									<input type="text" id="p3" name="stprice" />
								</td>
							</tr>
							<tr>
								<td>
									Kerosene Oil
								</td>
								<td>
									<input type="text" id="ak" readonly="readonly" value="12.50"/>
								</td>
								<td>
									<input type="text" id="kq" name="kquan" 
									onblur="validateAmtkb(this),getValaa(),getTotala(),getPricea()" required/>
								</td>
								<td>
									<input type="text" id="p4" name="ktprice" />
								</td>
							</tr>
							<tr>
								<td>
									<b>Total</b>
								</td>
								<td></td>
								<td>
									<input type="text" name="totalquana" id="atq"/>
								</td>
								<td>
									<input type="text" name="totalprice" id="t1"/>
								</td>
							</tr>
						</table>
						<br />
						
						<br />
						<br />

						<h2>
							To update transactions, Click here :
						</h2>
						<br />
						
							<input type="submit" value="Update" />
						</form>
						
					</center>
					<%
						}
					%>
					
						 
					<br />
					<br />
					<center>
					<h2>To Generate Bill, click here:</h2>
					<br/><br/>
					<% java.util.Date dt= new Date();
                    %>
                    <input type="hidden" name="bdate" value="<%out.println(dt);%>"/>
                  
					
					<form name="frmSend" action="bill.jsp">
					<input type="hidden" id="brr" name="txt"/>
					<input type="hidden" id="bnn" name="txt1"/>
					<input type="hidden" id="wqq" name="txt2"/>
					<input type="hidden" id="pp" name="txt3"/>
					<input type="hidden" id="rqq" name="txt4"/>
					<input type="hidden" id="pp2" name="txt5"/>
					<input type="hidden" id="sqq" name="txt6"/>
					<input type="hidden" id="pp3" name="txt7"/>
					<input type="hidden" id="kqq" name="txt8"/>
					<input type="hidden" id="pp4" name="txt9"/>
					<input type="hidden" id="tt1" name="txt10"/>
					<input type="submit" onclick="sendP1(),sendP2(),sendP3(),sendP4(),sendP5(),sendP6(),sendP7(),sendP8(),sendP9(),sendP10(),sendP11()" value="Generate Bill"/>
					</form>
					
					</center>
					
					<br />
					<br />
					<br />

					<div class="socials">
						<div class="socials-inner">
							<h3>
								Follow us
							</h3>
							<ul>
								<li>
									<a href="#" class="facebook-ico"><span></span>Facebook</a>
								</li>
								<li>
									<a href="#" class="twitter-ico"><span></span>Twitter</a>
								</li>
								<li>
									<a href="#" class="rss-feed-ico"><span></span>Gmail</a>
								</li>


							</ul>
							<div class="cl">
								&nbsp;
							</div>
						</div>
					</div>
					<div id="footer">

						<!-- end of footer-cols -->
						<div class="footer-bottom">
							<nav class="footer-nav">

							</nav>
							<p class="copy">
								&copy; Copyright 2013 MNSS Pvt Ltd
								<span>|</span>
								<strong>Design by <a href="http://freecss.in"
									target="_blank">Softpro India.</a>
								</strong>
							</p>
							<div class="cl">
								&nbsp;
							</div>
						</div>
					</div>
				</div>
				<!-- end of container -->
			</div>
			<!-- end of shell -->
		</div>
		<!-- end of wrapper -->
		
		<script type="text/javascript">
		
		function sendP1()
		{
		var pri=document.getElementById("br").value;
		document.getElementById("brr").value=pri;
		}
		function sendP2()
		{
		var pri=document.getElementById("bn").value;
		document.getElementById("bnn").value=pri;
		}
		function sendP3()
		{
		var pri=document.getElementById("wq").value;
		document.getElementById("wqq").value=pri;
		}
		function sendP4()
		{
		var pri=document.getElementById("p").value;
		document.getElementById("pp").value=pri;
		}
		function sendP5()
		{
		var pri=document.getElementById("rq").value;
		document.getElementById("rqq").value=pri;
		}
		function sendP6()
		{
		var pri=document.getElementById("p2").value;
		document.getElementById("pp2").value=pri;
		}
		function sendP7()
		{
		var pri=document.getElementById("sq").value;
		document.getElementById("sqq").value=pri;
		}
		function sendP8()
		{
		var pri=document.getElementById("p3").value;
		document.getElementById("pp3").value=pri;
		}
		function sendP9()
		{
		var pri=document.getElementById("kq").value;
		document.getElementById("kqq").value=pri;
		}
		function sendP10()
		{
		var pri=document.getElementById("p4").value;
		document.getElementById("pp4").value=pri;
		}
		function sendP11()
		{
		var pri=document.getElementById("t1").value;
		document.getElementById("tt1").value=pri;
		}
		</script>
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