<%@ page language="java" import="java.util.*,java.io.*,com.oreilly.servlet.MultipartRequest" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fupload.jsp' starting page</title>
    
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
String fname=null;
		String mptoken=null;
		File fobj=null;
		
	    String path1=getServletContext().getRealPath("/");
		
		String ui= "XmlDocument";
		System.out.println(ui);
		String nwpath=path1+ui;
		System.out.println(nwpath);
	
		File f=new File(nwpath);
		if(!f.exists())
		{
			f.mkdir();
		}
		
		MultipartRequest mpt=new MultipartRequest(request,nwpath,1024*1024*1000);
		Enumeration e= mpt.getFileNames();
		System.out.println(e);
		while(e.hasMoreElements())
		{
			mptoken=(String)e.nextElement();
			fobj=mpt.getFile(mptoken);
			fname=fobj.getName();
			System.out.println("filename is:"+fname);
			response.sendRedirect("MyJsp.jsp?pn="+fname);
		 }
		 
%>
  </body>
</html>
