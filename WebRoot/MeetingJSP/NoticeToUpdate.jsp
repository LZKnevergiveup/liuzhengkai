<%@page import="com.unsi.vo.NoticeVO"%>
<%@page import="com.unsi.dao.NoticeDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Integer notice_id= Integer.valueOf(request.getParameter("notice_id"));
	NoticeDAO nodao = new NoticeDAO();
	NoticeVO notvo = nodao.idNoticeSearch(notice_id);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>NoticeToUpdate.jspe</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/admin.css">
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
   	<form action="servlet/UpdateNoticeServlet" id="ToNewsform" name="ToNewsform" method="post">
   	<input type="hidden"  name="notice_id" value=<%=notvo.getNotice_id() %> />
   		<input type="hidden"  class="login_input" name="Userid" value=<%=session.getAttribute("Userid") %> />
   		公告填写人<input type="text"  class="login_input" readonly="readonly" name="Username" value="<%=session.getAttribute("Username") %>"/><br/>
   		公告标题:<input type="text"  class="login_input" name="notice_title" value=<%=notvo.getNotice_title() %> /><br/>	
   		公告内容:<textarea style="resize:none;font-size:15px;" cols="20" rows="5" name="notice_content"><%=notvo.getNotice_content() %></textarea><br/>
   		公告时间:<input type="date" class="login_input"  name="notice_time" value=<%=notvo.getNotice_time() %> /><br/>
   		
   		<input type="submit" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px" value="发布"/>
   	</form>
   </div>
     
  </body>
</html>

