<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AddSchedule.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.11.0.js"></script>
 	  <script src="js/my.js"></script>
    <style type="text/css">
    	input{
			margin:30px;
		}
    </style>
  </head>
  
  <body style="background:url(http://localhost:8080/Mywork1/images/bg.jpg);font-size:15px;">
  <div style="border:1px black solid;background-color:rgba(255,255,255,0.3);width:500px;text-align:center;margin:auto 0;">
   	<form action="servlet/AddscheduleServlet" id="ToNewsform" name="ToNewsform" method="post">
   		<input type="hidden" name="Userid" value=<%=session.getAttribute("Userid") %> />
   		<span>日程编写者</span><input type="text" readonly="readonly" name="Username" value="<%=session.getAttribute("Username") %>"/><br/>
   		消息内容:<textarea style="font-size:15px;" cols="20" rows="5" name="schedule_content"></textarea><br/>
   		选择发送时间:<input type="date" name="schedule_date"/><br/>
   		<input type="submit" style="resize:none;font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px" value="添加"/>
   	</form>
   </div>
     
  </body>
</html>