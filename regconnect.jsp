<%@ page language="java" import="java.util.*,java.sql.*,java.util.Date" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regconnect.jsp' starting page</title>
    
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
    	String fname = request.getParameter("u_first_name");
    	String mname = request.getParameter("u_middle_name");
    	String lname = request.getParameter("u_last_name");
    	String pwd = request.getParameter("u_pwd");
    	String cpwd = request.getParameter("u_confirmpwd");
    	String fhname = request.getParameter("u_fhname");
    	String gender = request.getParameter("u_gender");
    	String dob = request.getParameter("u_dob");
    	String occu = request.getParameter("u_occupation");
    	String add1 = request.getParameter("u_add1");
    	String add2 = request.getParameter("u_add2");
    	String city = request.getParameter("ucity");
    	String pin = request.getParameter("upin");
    	String state = request.getParameter("ustate");
    	String rationc = request.getParameter("u_ration_card_no");
    	String id = request.getParameter("u_email_id");
    	String num = request.getParameter("u_contact_no");
    	String adults = request.getParameter("u_noofadults");
    	String minor = request.getParameter("u_noofminor");
    	String income = request.getParameter("u_income");
    	out.println("Congratulations! You are registered now.");
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		System.out.println("Class loaded");
    		Connection con = DriverManager.getConnection(
    				"jdbc:mysql://localhost:3306/pds", "root", "");
    		System.out.println("Database Connected");
    		PreparedStatement ps = con
    				.prepareStatement("insert into user_registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

    		ps.setString(1, fname);
    		ps.setString(2, mname);
    		ps.setString(3, lname);
    		ps.setString(4, pwd);
    		ps.setString(5, cpwd);
    		ps.setString(6, fhname);
    		ps.setString(7, gender);
    		ps.setString(8, dob);
    		ps.setString(9, occu);
    		ps.setString(10, add1);
    		ps.setString(11, add2);
    		ps.setString(12, city);
    		ps.setString(13, pin);
    		ps.setString(14, state);
    		ps.setString(15, rationc);
    		ps.setString(16, id);
    		ps.setString(17, num);
    		ps.setString(18, adults);
    		ps.setString(19, minor);
    		ps.setString(20, income);
    		PreparedStatement ps1 = con
    				.prepareStatement("insert into login values(?,?,?,?)");
    		ps1.setString(1, id);
    		ps1.setString(2, pwd);
    		ps1.setString(3, "Beneficiary");
    		ps1.setString(4, "inactive");
    		PreparedStatement ps2 = con.prepareStatement("insert into ration_card_table (Firstname,Middlename,Lastname,Rationcard_no,Income,status,pincode) values(?,?,?,?,?,?,?)");
    		ps2.setString(1, fname);
    		ps2.setString(2, mname);
    		ps2.setString(3, lname);
    		ps2.setString(4, rationc);
    		ps2.setString(5, income);
    		ps2.setString(6, "Inactive");
    		ps2.setString(7, pin);

    		int n = ps.executeUpdate();
    		int m = ps2.executeUpdate();

    		if (n > 0) {
    			out.println("Success");
    		}
    		int n1 = ps1.executeUpdate();

    		if (n1 > 0) {
    			out.println("Success");
    		}
    	} catch (ClassNotFoundException e) {
    		System.out.println(e);
    	}
    	response.sendRedirect("regmessage.jsp");
    %>
  </body>
</html>
