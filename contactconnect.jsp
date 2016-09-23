<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dbconnect.jsp' starting page</title>
    
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
  <%
  String fname=request.getParameter("FirstName");
  String lname=request.getParameter("LastName");
  String Email=request.getParameter("Email");
  String Phone=request.getParameter("phonenumber");
  String Complain=request.getParameter("Complain");
  System.out.println("FirstName= "+ fname +" LastName= "+lname+" Email "+Email+"phonenumber= "+Phone+" Complain= "+Complain);
  try
  {
  Class.forName("com.mysql.jdbc.Driver");
  System.out.println("Class loaded");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
  System.out.println("Database connected");
  PreparedStatement ps=con.prepareStatement("insert into contactform values(?,?,?,?,?)");
  ps.setString(1,fname);
  ps.setString(2,lname);
  ps.setString(3,Email);
  ps.setString(4,Phone); 
  ps.setString(5,Complain);   
  int n=ps.executeUpdate();
  %>
  <script type="text/javascript">
  alert("Your complain has been registered. We will look back to you soon!!!!");
  window.open("index.jsp","_self",false);
    </script>
   <% 
  }
  catch(ClassNotFoundException e)
  {
  System.out.println(e);
  }
  
    %>
    </body>
</html>
