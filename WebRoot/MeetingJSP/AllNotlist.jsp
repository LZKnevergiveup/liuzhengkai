<%@page import="com.unsi.dao.UserDAO"%>
<%@page import="com.unsi.vo.NoticeVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%ArrayList<NoticeVO> notlist = (ArrayList<NoticeVO>)request.getAttribute("notlist"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AllNotlist.jsp</title>
    
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
    	table{
    		margin-top:10px;
    		text-align:center;
    		background-color:rgba(255,255,255,0.5);
    	}
    	td{
    		height:35px;
    	}
    	a{
    		color:#3fb4c6;
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
  			<td width="100px">公告填写人</td>
  			<td width="100px">公告标题</td>
  			<td>公告内容</td>
  			<td width="100px">公告时间</td>
  			<td width="100px">操作</td>
  		</tr>
  		<%for(NoticeVO not:notlist){
  		%>
  		<tr>
  			<td><%=not.getNotice_id()%></td>
  			<td><%=new UserDAO().UseridSearch(not.getUser_id().toString()).getUser_name()%></td>
  			<td><%=not.getNotice_title()%></td>
  			<td><textarea style="resize:none" readonly="readonly" cols="20" rows="3" ><%=not.getNotice_content()%></textarea></td>
  			<td><%=not.getNotice_time()%></td>
  			<td>
  				<a href="MeetingJSP/NoticeToUpdate.jsp?notice_id=<%=not.getNotice_id()%>">修改</a>&nbsp;&nbsp;
  				<a href="servlet/DeletNoticeServlet?notice_id=<%=not.getNotice_id()%>">删除</a>&nbsp;&nbsp;
  			</td>
  		</tr>
  		<%
  		} %> 
  		<tr>
  			<td colspan="10">
  				<a href="MeetingJSP/AddNotice.jsp"><input type="button"  style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:150px;height:30px;"  value="添加"></a>
			</td>  		
  		</tr>
  	</table>
  </body>
</html>

