<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>choose.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.11.0.js"></script> 
	<script>
		$(function(){
				var r=confirm("旧密码不正确是否继续修改!");
				if (r==true)
				  {
					location="UserJSP/changeUser.jsp";
				  }
				else
				  {
					location="UserJSP/UserView.jsp";
				  }
			});
	
	</script>
  </head>
  
  <body style="background-color:#4285f4"> 
  </body>
</html>
