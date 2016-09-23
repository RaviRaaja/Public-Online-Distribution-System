<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginconnect.jsp' starting page</title>
    
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
  String u=request.getParameter("username");
  session.setAttribute("session_uname",u);
  String p=request.getParameter("pwd");
  String u1=request.getParameter("username");
  String p1=request.getParameter("pwd");
  try
    {
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class loaded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database Connected");
    PreparedStatement ps=con.prepareStatement("select status from login where userid=? and password=?");
    PreparedStatement ps1=con.prepareStatement("select user_type from login where userid=? and password=?");
    PreparedStatement ps2=con.prepareStatement("select userid from login");
    ps.setString(1,u);
    ps.setString(2,p);
    ps1.setString(1,u1);
    ps1.setString(2,p1);
    ResultSet rs=ps.executeQuery();
    ResultSet rs1=ps1.executeQuery();
    
    ResultSet rs2=ps2.executeQuery();
    if(rs2.next())
    {
    String id=rs2.getString("userid");
    String a2=session.getAttribute("session_uname").toString();
    if(a2.equals(id))
    {
    }
    else
    {
    %>
    <script type="text/javascript">
    alert("You have been blocked.");
    </script>
    
    <% }}
    if(rs.next())
    {
    
    String s=rs.getString("status");
    if(s.equalsIgnoreCase("Inactive"))
    {
    
    response.sendRedirect("loginmessage.jsp");
    }
    else
    {
    if(rs1.next())
    {
    String s1=rs1.getString("user_type");
     if(s1.equalsIgnoreCase("beneficiary"))
    {
    response.sendRedirect("beneficiary.jsp");
    }
    else if(s1.equalsIgnoreCase("dealer"))
    {
    response.sendRedirect("dealer.jsp");
    }
    else
     response.sendRedirect("admin_dealauthentication.jsp");
       }
    }
    }
    }
    
    catch(ClassNotFoundException e)
    {
     System.out.println(e);
    }
    
     %>
      </body>
</html>
