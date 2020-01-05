<%@page import="com.unsi.vo.ScheduleVO"%>
<%@page import="com.unsi.dao.ScheduleDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% ScheduleVO sched = new ScheduleDAO().idUserSearch(request.getParameter("schedule_id"));
	//System.out.println(sched);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ToUpdateSchedule.jsp</title>
    
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
   	<form action="servlet/UpdateScheduleServlet?schedule_id=<%=sched.getSchedule_id() %>" id="ToNewsform" name="ToNewsform" method="post">
   		<input type="hidden" name="Userid" value=<%=session.getAttribute("Userid") %> />
   		<span>日志编写者</span><input type="text" readonly="readonly" name="Username" value="<%=session.getAttribute("Username") %>"/><br/>
   		消息内容:<textarea style="font-size:15px;" cols="20" rows="5" name="schedule_content"><%=sched.getSchedule_content() %></textarea><br/>
   		选择发送时间:<input type="date" value=<%=sched.getSchedule_date() %> name="schedule_date"/><br/>
   		<input type="submit" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px" value="修改"/>
   	</form>
   </div>
     
  </body>
</html>
