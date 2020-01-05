<%@page import="com.unsi.vo.PersonVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%	List<PersonVO> perlist= (ArrayList<PersonVO>)request.getAttribute("perlist");
	//System.out.println(request.getAttribute("perlist"));
 %>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>ToNews.jsp</title>
    
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
   	<form action="servlet/AddNewsServlet" id="ToNewsform" name="ToNewsform" method="post">
   		<input type="hidden" name="Userid" value=<%=session.getAttribute("Userid") %> />
   		<span>发送人</span><input type="text" readonly="readonly" name="Username" value="<%=session.getAttribute("Username") %>"/><br/>
   		<span>接收人</span>
   		<select name="personid"style="margin:30px;">
   			<%for(PersonVO p:perlist){ %>
   				<option value=<%=p.getPerson_id() %>><%=p.getPerson_name() %></option>
   			<%} %>
   		</select><br/>
   		消息内容:<textarea cols="20" rows="5" name="news_content"></textarea><br/>
   		选择发送时间:<input type="date" name="news_time"/><br/>
   		<input onclick="a()" type="submit" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px" value="发送"/>
   	</form>
   </div>
     
  </body>
</html>

