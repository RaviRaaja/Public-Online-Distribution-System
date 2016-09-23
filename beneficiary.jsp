<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
					<a href="beneficiary.jsp" class="nav-btn">HOME<span class="arr"></span></a>
					<ul>
						<li><a href="beneficiary.jsp">HOME</a></li>
					    <li><a href="dealerinfo.jsp">Dealer Info</a></li>
						<li><a href="newsncircular.jsp">News and Circular</a></li>
						<li><a href="Gallery.jsp">Gallery</a></li>
						<li><a href="Feedback.jsp">Feedback</a></li>
						<li><a href="Contact.jsp">Contact Us</a></li>
						
						
						
					</ul>
				</nav>
				
				
				<form action="ulogout.jsp">
				<p style=" margin-top:-20px;font-size:10px;" align="right">
				<input  type=submit value=LOGOUT>
				</form>
				<br/>
				<div>
				 <h1 style="font-size:30px; color:rgb(163,64,56)";> <center>WELCOME BENEFICIARY</center></h1>
				</div>
				<br>
				<%
				String aa=session.getAttribute("session_uname").toString();
				Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class Laoded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database connected");
     PreparedStatement ps=con.prepareStatement("select u_first_name,u_middle_name,u_last_name,u_ration_card_no from user_registration where u_email_id=?");
     PreparedStatement ps1=con.prepareStatement("select u_income from user_registration where u_email_id=?");
     ps.setString(1,aa);
     ps1.setString(1,aa);
         ResultSet rs=ps.executeQuery();
    
    if(rs.next())
    {
           
    %>
    <form>
    <center>
    <table>
    <tr>
    <th colspan="3" >Name:</th>
   <td><%=rs.getString("u_first_name")%>
   <%=rs.getString("u_middle_name")%>
   <%=rs.getString("u_last_name")%> </td></tr>
   
   <tr>
   <th colspan="3">Ration Card Number:
   </th>
   <td><%=rs.getString("u_ration_card_no")%> </td>
  </tr> 
  <br/>
  <%
  }
  ResultSet rs1=ps1.executeQuery();
      if(rs1.next())
       {
       String a="";
        double i= rs1.getDouble("u_income");
        if(i<=50000)
        { 
         a="Antoyadya Yojna(AAY)";
           
        }
        else
        {
        if(i>50000 && i<=150000)
        {
        a="Below Poverty Line(BPL)";
        }
        else
        a="Above Poverty Line(APL)";
        
        }
        %>
        
        
        
       <tr>
    <th colspan="5">You belong to the category :<%out.println(a);%></th></tr>
      
   </table></center></form>
   <br/>
   
   <center>
   <table border="1">
   
   
   <%
						if (a.equalsIgnoreCase("Antoyadya Yojna(AAY)"))
						 {
					%>
					
					<tr>
					<td  align="center"><b>Category</b></td>
				
					<td  colspan="2" align="center"><b>Antoyadya Yojna(AAY)</b></td>
					</tr>
					
					<tr>
					<td align="center"><b>Category</b></td>
					<td align="center"><b>Quantity(per kg)</b></td>
					<td align="center"><b>Price(per kg)</b></td>
					</tr>
					
					<tr>
					<td align="center"><b>Wheat</b></td>
					<td align="center"><b>25</b></td>
					<td align="center"><b>2.00</b></td>
                    </tr>
                    <tr>
					<td align="center"><b>Rice</b></td>
					<td align="center"><b>10</b></td>
					<td align="center"><b>3.00</b></td>
                    </tr>
                    
                    <tr>
					<td align="center"><b>Sugar</b></td>
					<td align="center"><b>6</b></td>
					<td align="center"><b>13.5</b></td>
                    </tr>
                    
                    <tr>
					<td align="center"><b>Kerosene Oil</b></td>
					<td align="center"><b>12.5</b></td>
					<td align="center"><b>14.96</b></td>
                    </tr>
                    
                    
                    
                     <%
                     }
                     else if(a.equalsIgnoreCase("Below Poverty Line(BPL)"))
						 {
					%> 
					
					
					<tr>
					<td  align="center"><b>Category</b></td>
				
					<td  colspan="2" align="center"><b>Below Poverty Line(BPL)</b></td>
					</tr>
					
					<tr>
					<td align="center"><b>Category</b></td>
					<td align="center"><b>Quantity(per kg)</b></td>
					<td align="center"><b>Price(per kg)</b></td>
					</tr>
					
					<tr>
					<td align="center"><b>Wheat</b></td>
					<td align="center"><b>25</b></td>
					<td align="center"><b>4.80</b></td>
                    </tr>
                    <tr>
					<td align="center"><b>Rice</b></td>
					<td align="center"><b>14</b></td>
					<td align="center"><b>6.30</b></td>
                    </tr>
                    
                    <tr>
					<td align="center"><b>Sugar</b></td>
					<td align="center"><b>6</b></td>
					<td align="center"><b>13.65</b></td>
                    </tr>
                    
                    <tr>
					<td align="center"><b>Kerosene Oil</b></td>
					<td align="center"><b>12.5</b></td>
					<td align="center"><b>14.96</b></td>
                    </tr>
                    
                    
                     <%
                     }
                     else if(a.equalsIgnoreCase("Above Poverty Line(APL)"))
						 {
					%> 
					
					
					<tr>
					<td  align="center"><b>Category</b></td>
				
					<td  colspan="2" align="center"><b>Above Poverty Line(APL)</b></td>
					</tr>
					
					<tr>
					<td align="center"><b>Category</b></td>
					<td align="center"><b>Quantity(per kg)</b></td>
					<td align="center"><b>Price(per kg)</b></td>
					</tr>
					
					<tr>
					<td align="center"><b>Wheat</b></td>
					<td align="center"><b>25</b></td>
					<td align="center"><b>7.05</b></td>
                    </tr>
                    <tr>
					<td align="center"><b>Rice</b></td>
					<td align="center"><b>10</b></td>
					<td align="center"><b>9.25</b></td>
                    </tr>
                    
                    <tr>
					<td align="center"><b>Sugar</b></td>
					<td align="center"><b>Not Entitled</b></td>
					<td align="center"><b>-</b></td>
                    </tr>
                    
                    <tr>
					<td align="center"><b>Kerosene Oil</b></td>
					<td align="center"><b>-</b></td>
					<td align="center"><b>-</b></td>
                    </tr>
                    
  <%
   }
   } 
  
    %>					  
                      

   </table>
   </center>
 
  				
				
		 <div class="clear">&nbsp;</div>
				
				
				
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
				
				