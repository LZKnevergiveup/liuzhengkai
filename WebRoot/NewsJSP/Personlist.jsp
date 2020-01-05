<%@page import="com.unsi.vo.PersonVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	HashMap map = (HashMap)request.getAttribute("map");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Personlist.jsp</title>
    
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
  		<%for(Object a:map.keySet()){
  		%>
  		<tr>
  			<td><%=a.toString()%></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_name()%></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_sex()%></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_phone() %></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_mail()%></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_qq() %></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_work() %></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_address() %></td>
  			<td><%=((PersonVO)map.get(a)).getPerson_Postal()%></td>
  			<td>
  				<a href="servlet/ToSeeAllPerson">到公司通讯录修改</a>&nbsp;&nbsp;
  				<a href="servlet/PersonDeletServlet?UP_id=<%=a%>">删除</a>&nbsp;&nbsp;
  			</td>
  		</tr>
  		<%
  		} %> 
  		<tr>
  			<td colspan="10">
  				<a href="javascript:history.go(-1)"><input type="button"  style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:150px;height:30px;"  value="返回"></a>
			</td>  		
  		</tr>
  	</table>
  </body>
</html>

