<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>center.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <frameset cols="10%,10%,80%"frameborder="no" >
		<frame src="/Mywork1/UserJSP/Userleft.jsp" name="left_frame" noresize="noresize">
		<frame src="/Mywork1/myjsp/color.jsp" name="color_frame" noresize="noresize">
       <frame src="/Mywork1/myjsp/right.jsp" name="right_frame" noresize="noresize"  marginwidth="70px"marginheight="20px"  name="right">
	   </frameset>
  </head>
  
  <body>
 
  </body>
</html>
