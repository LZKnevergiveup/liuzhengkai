<%@page import="com.unsi.vo.PersonVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title> AllPersonlist.jsp </title>
    
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
	<% 
		List<PersonVO> list = (ArrayList<PersonVO>)request.getAttribute("perlist");
		//System.out.println(list);
	 %>
  </head>
  
  <body style="background:url(http://localhost:8080/Mywork1/images/bg.jpg);">
   <table cellpadding="0" cellspacing="0" border="1" align="center">
  		<tr>
  			<td width="60px">通讯录id</td>
  			<td width="60px">姓名</td>
  			<td width="80px">性别</td>
  			<td width="140px">手机号码</td>
  			<td width="200px">E-mail</td>
  			<td width="150px">QQ</td>
  			<td width="80px">工作单位</td>
  			<td width="80px">地址</td>
	  		<td width="80px">邮政编码</td>
	  		<td width="190px">操作</td>
  		</tr>
  		<%int i=1; %>
  		<%for(PersonVO pvo:list){
  		%>
  		<tr>
  			<td><%=pvo.getPerson_id()%></td>
  			<td><%=pvo.getPerson_name()%></td>
  			<td><%=pvo.getPerson_sex()%></td>
  			<td><%=pvo.getPerson_phone() %></td>
  			<td><%=pvo.getPerson_mail()%></td>
  			<td><%=pvo.getPerson_qq() %></td>
  			<td><%=pvo.getPerson_work() %></td>
  			<td><%=pvo.getPerson_address() %></td>
  			<td><%=pvo.getPerson_Postal()%></td>
  			<td><a href="servlet/AddPersonServlet?person_id=<%=pvo.getPerson_id()%>">添加到我的</a>&nbsp;&nbsp;
  				<a href="NewsJSP/AllProToUpdate.jsp?person_id=<%=pvo.getPerson_id()%>">修改</a>&nbsp;&nbsp;
  				<a href="servlet/AllProDeletServlet?person_id=<%=pvo.getPerson_id()%>">删除</a>&nbsp;&nbsp;
  			</td>
  		</tr>
  		<%
  		} %> 
  		<tr>
  			<td colspan="10">
  				<a href="NewsJSP/AllPersonAdd.jsp"><input type="button"  style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:150px;height:30px;"  value="添加公司通讯录"></a>
			</td>  		
  		</tr>
  	</table>
  </body>
</html>
