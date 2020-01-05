<%@page import="com.unsi.dao.UserDAO"%>
<%@page import="com.unsi.vo.PersonVO"%>
<%@page import="com.unsi.vo.NewsVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	LinkedHashMap<NewsVO,PersonVO> newsHashMap = (LinkedHashMap<NewsVO,PersonVO>)request.getAttribute("newsHashMap");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Newslist.jsp</title>
    
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
    	table{
    		margin-top:10px;
    		text-align:center;
    		background-color:rgba(255,255,255,0.5);
    		text-decoration:none;
    	}
    	td{
    		height:35px;
    	}
    	a{
    		color:#3fb4c6;
    		text-decoration:none;
    	}
    	a:hover{
    		color:red;
    	}
    </style>
	
  </head>
  
  <body style="background:url(http://localhost:8080/Mywork1/images/bg.jpg);">
   <table cellpadding="0" cellspacing="0" border="1" align="center">
  		<tr>
  			<td width="60px">序号</td>
  			<td width="60px">发件人</td>
  			<td width="60px">收件人</td>
	  		<td width="30px">日期</td>
	  		<td width="100px">是否已经阅读</td>
	  		<td width="30px">查看详情</td>
  		</tr>
  		<%int i=1; %>
  		<%for(NewsVO a:newsHashMap.keySet()){
  		%>
  		<tr>
  			<td><%=a.getNews_id()%></td>
  			<td><%=new UserDAO().UseridSearch(a.getUser_id().toString()).getUser_name()%></td>
  			<td><%=((PersonVO)newsHashMap.get(a)).getPerson_name() %></td>
  			<td><%=a.getNews_time()%></td>
  			<%if(a.getNews_read()==1){ %>
  			<td>未读</td>
  			<%}else{ %>
  			<td>已读</td>
  			<%} %>
  			<td>
  				<a href="servlet/NewsReadServlet?Newsid=<%=a.getNews_id()%>&&Newscontent=<%=a.getNews_content()%>">阅读</a>&nbsp;&nbsp;
  			</td>
  		</tr>
  		<%
  		} %> 
  		<tr> 
  			<td colspan="10">
  				<a href="servlet/ToToNewsServlet"><input type="button"  style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:150px;height:30px;"  value="返回"></a>
			</td>  		
  		</tr>
  	</table>
  </body>
</html>
