<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>UserView.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<% 
	  String Userid = session.getAttribute("Userid").toString();
	  String Username = session.getAttribute("Username").toString();
	  String Userpassword = session.getAttribute("Userpassword").toString();
	  String Userflag = session.getAttribute("Userflag").toString();
	 // System.out.println(session.getId());
	%>
  </head>
  
  <body style="background:url(http://localhost:8080/Mywork1/images/bg.jpg);">
    <table  border="1" style=" background-color:rgba(255,255,255,0.7); text-align: center" cellpadding="0" cellspacing="0" align="center">
  		<tr>
  			<td colspan="2">用户查看</td>
  		</tr>
  		<tr>
  			<td width="100px">用户id：</td>
  			<td width="100px"><%=Userid %></td>
  		</tr>
  		<tr>
  			<td width="100px">用户名：</td>
  			<td width="100px"><%=Username %></td>
  		</tr>
  		<tr>
  			<td width="100px">密码：</td>
  			<td width="100px"><%=Userpassword %></td>
  		</tr>
  		<tr>
  			<td width="100px">身份：</td>
  			<td width="100px"><% if(Userflag.equals("1")){%>
  				管理员
  			<%  }else {%>
  				用户
  			<%} %></td>
  		</tr>
  	</table>
  </body>
</html>
