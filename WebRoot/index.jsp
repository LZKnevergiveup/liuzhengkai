<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   	<title>index.jsp</title>  
   	<meta http-equiv=Content-Type content="text/html;charset=utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
 
    <script src="js/jquery-1.11.0.js"></script>   
    <frameset rows="16%,80%,4%"frameborder="no">
       <frame src="myjsp/top.jsp"  name="top_frame" noresize="noresize">
       <frame src="myjsp/center.jsp"  name="center_frame" noresize="noresize">
	   <frame src="myjsp/bottom.jsp"  name="bottom_frame" noresize="noresize">
	</frameset>
  </head>
  
  <body>
  </body>
</html>