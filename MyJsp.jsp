<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
  String xmlpage=request.getParameter("pn");
   %>
  <div>
<b>id:</b> <span id="to"></span><br>
<b>Name:</b> <span id="from"></span><br>
<b>Authentication:</b> <span id="message"></span>
</div>
    <script type="text/javascript">
      if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
//xmlhttp.open("GET","MyXml.xml",false);
xmlhttp.open("GET","/SPDS/XmlDocument/<%=xmlpage%>",false);

xmlhttp.send();
xmlDoc=xmlhttp.responseXML;

document.getElementById("to").innerHTML=xmlDoc.getElementsByTagName("id")[0].childNodes[0].nodeValue;
document.getElementById("from").innerHTML=xmlDoc.getElementsByTagName("name")[0].childNodes[0].nodeValue;
//document.getElementById("message").innerHTML=
var auth=xmlDoc.getElementsByTagName("authentication")[0].childNodes[0].nodeValue;
if(auth=="true")
{
alert(auth);
window.open("dealer.jsp","_self",false);
}
else
{
alert("Not Authenticated User");
}
    </script>
  </body>
</html>
