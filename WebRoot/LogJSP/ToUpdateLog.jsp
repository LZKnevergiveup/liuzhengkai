<%@page import="com.unsi.dao.LogDAO"%>
<%@page import="com.unsi.vo.LogVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% LogVO logvo = new LogDAO().idLogSearch(request.getParameter("log_id"));
	//System.out.println(sched);
 %>
<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ToUpdateLog.jsp</title>
    
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
   	<form action="servlet/UpdateLogServlet" id="ToNewsform" name="ToNewsform" method="post">
   		<input type="hidden"  class="login_input" name="Userid" value=<%=session.getAttribute("Userid") %> />
   		<input type="hidden"  class="login_input" name="log_id" value=<%=logvo.getLog_id() %> />
   		日志编写者<input type="text"  class="login_input" readonly="readonly" name="Username" value="<%=session.getAttribute("Username") %>"/><br/>
   		日期:<input type="date" class="login_input"  name="log_date" value="<%=logvo.getLog_date()%>"/><br/>
   		日志标题:<input type="text"  class="login_input" name="log_title" value=<%=logvo.getLog_title() %>><br/>	
   		日志内容:<textarea style="resize:none;font-size:15px;" cols="20" rows="5" name="log_content"><%=logvo.getLog_content() %></textarea><br/>
   		
   		
   		<input type="submit" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px" value="修改"/>
   	</form>
   </div>
     
  </body>
</html>
