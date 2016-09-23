
           <%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="sun.security.util.Password"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dealerconnect.jsp' starting page</title>
    
    
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
      String fname=request.getParameter("d_first_name");
      String mname=request.getParameter("d_middle_name");
      String lname=request.getParameter("d_last_name");
      String gen=request.getParameter("d_gender");
      String dob=request.getParameter("d_dob");
      String lcn=request.getParameter("d_license_no");
      String pwd=request.getParameter("d_password");
      String cpwd=request.getParameter("d_confirm_password");
      String store=request.getParameter("store");
      String storedist=request.getParameter("d_store_district");
      String storezone=request.getParameter("d_store_zone");
      String address=request.getParameter("Address");
      String pincode=request.getParameter("d_pincode");
      String contact=request.getParameter("d_contact_no");

      String email=request.getParameter("d_email_id");
      
out.println("Congratulations...! You Have Been Registered.! ");

      
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Class loaded");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pds","root","");
    System.out.println("Database connected");
    PreparedStatement ps=con.prepareStatement("insert into dealer_registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    PreparedStatement ps1=con.prepareStatement("insert into login values(?,?,?,?)");
    ps.setString(1,fname);
    ps.setString(2,mname);
    ps.setString(3,lname);
    ps.setString(4,gen);
    ps.setString(5,dob);
    ps.setString(6,lcn);
    ps.setString(7,pwd);
    ps.setString(8,cpwd);
    ps.setString(9,store);
    ps.setString(10,storedist);
    ps.setString(11,storezone);
    ps.setString(12,address);
    ps.setString(13,pincode);
    ps.setString(14,contact);
    ps.setString(15,email);
    ps1.setString(1,lcn);
    ps1.setString(2,pwd);
    ps1.setString(3,"dealer");
    ps1.setString(4,"inactive");
    PreparedStatement ps2 = con.prepareStatement("insert into dealer_status_table (Firstname,Middlename,Lastname,License_no,Status) values(?,?,?,?,?)");
    ps2.setString(1, fname);
    ps2.setString(2, mname);	
    ps2.setString(3, lname);
    ps2.setString(4, lcn);
    ps2.setString(5, "Inactive");
    
    int n=ps.executeUpdate();
    int m=ps2.executeUpdate();
    if(n>0)
    {
    out.println("Success");
    }
    int n1=ps1.executeUpdate();
    if(n1>0)
    {
    out.println("Success");
    }
    }
    catch(ClassNotFoundException e)
    {
    System.out.println(e);
   
    }
    
           response.sendRedirect("dealermessage.jsp");
          
     %>
  </body>
</html>
