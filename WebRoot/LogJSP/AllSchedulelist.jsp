<%@page import="com.unsi.dao.UserDAO"%>
<%@page import="com.unsi.vo.ScheduleVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%ArrayList<ScheduleVO> schedlist = (ArrayList<ScheduleVO>)request.getAttribute("schedlist"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AllSchedulelist.jsp</title>
    
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
  			<td width="100px">日志记录者</td>
  			<td>内容</td>
  			<td width="100px">日期</td>
  			<td width="100px">操作</td>
  		</tr>
  		<%int i=1; %>
  		<%for(ScheduleVO sched:schedlist){
  		%>
  		<tr>
  			<td><%=sched.getSchedule_id()%></td>
  			<td><%=new UserDAO().UseridSearch(sched.getUser_id().toString()).getUser_name()%></td>
  			<td><textarea style="resize:none" readonly="readonly" cols="20" rows="3" ><%=sched.getSchedule_content()%></textarea></td>
  			<td><%=sched.getSchedule_date()%></td>
  			<td>
  				<a href="LogJSP/ToUpdateSchedule.jsp?schedule_id=<%=sched.getSchedule_id()%>">修改</a>&nbsp;&nbsp;
  				<a href="servlet/DeletScheduleServlet?schedule_id=<%=sched.getSchedule_id()%>">删除</a>&nbsp;&nbsp;
  			</td>
  		</tr>
  		<%
  		} %> 
  		<tr>
  			<td colspan="10">
  				<a href="LogJSP/AddSchedule.jsp"><input type="button"  style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:150px;height:30px;"  value="添加"></a>
			</td>  		
  		</tr>
  	</table>
  </body>
</html>
