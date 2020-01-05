<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>top.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link rel="stylesheet" href="css/admin.css">
 </head>
  <body style="overflow-y: hidden;background-color:#4285f4;">
  <div id="top_h1"><h2>企业信息管理系统</h2></div>
  <ul id="top_ul">
  	<a href="http://localhost:8080/Mywork1/UserJSP/Userleft.jsp" target="left_frame"><li>用户管理</li></a>
  	<a href="http://localhost:8080/Mywork1/NewsJSP/Newsleft.jsp" target="left_frame"><li>通信管理</li></a>
  	<a href="http://localhost:8080/Mywork1/LogJSP/Logleft.jsp" target="left_frame"><li>个人工作</li></a>
  	<a href="http://localhost:8080/Mywork1/MeetingJSP/Mettingleft.jsp" target="left_frame"><li>企业管理</li></a>
  	<a href="http://localhost:8080/Mywork1/myjsp/AboutWeleft.jsp" target="left_frame"><li>关于我们</li></a>
  </ul>
  	<p id="blok1" >欢迎用户,<%=session.getAttribute("Username")%></p>
  		
  			<% if(session.getAttribute("Userflag").equals(1)){%>
  				<div id="blok2">身份：管理员</div>
  			<%  }else {%>
  				<div id="blok2">身份：用户</div>
  			<%} %>
	<a href="http://localhost:8080/Mywork1/login.jsp"target="_top"><div class="blok">退出</div></a>
  </body>
</html>

