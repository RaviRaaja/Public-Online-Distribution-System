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
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mob=request.getParameter("mobno");
     String fb=request.getParameter("feedbck");
      String a=request.getParameter("abc");
      String b=request.getParameter("xyz");
      String c=request.getParameter("complain");
     
          
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class Laoded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database connected");
    PreparedStatement ps=con.prepareStatement("insert into feedback values(?,?,?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,mob);
    ps.setString(4,fb);
     ps.setString(5,a);
      ps.setString(6,b);
       ps.setString(7,c);
    int n=ps.executeUpdate();
    
    
    %>
    <script type="text/javascript">
    alert("Thank You for your valuable Feedback! It will be considered for further improvements");
    window.open("index.jsp","_self",false);
    </script>
    <% 
    }
    catch(ClassNotFoundException e)
   {
   System.out.println(e);
   }
    %>
        
    <br>
  </body>
</html>
