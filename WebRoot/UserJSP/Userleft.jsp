<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>zz.jsp</title>
    
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
		a{
			color:#fff;
		}
		a:hover{
			color:#3fb4c6;
		}
	</style>
	<script type="text/javascript">
	var i=1;
	function doubonlick(obj){
		if(i==1){
			document.getElementById(obj).style.display="block";
			i=0;
		}else{
			document.getElementById(obj).style.display="none";
			i=1;
		}
	}
	</script>
  </head>
  <body style="background:url(http://localhost:8080/Mywork1/images/bg.jpg);overflow-x:hidden;font-size:20px;">
  	<ul id="left_ul">	
		
			<li class="left_ul_li"  onclick="doubonlick('ul1')">
			<a href= "javascript:void(0)">
			用户管理
					<ul id="ul1" class="lihod">
						<li><a href="UserJSP/UserView.jsp" target="right_frame">用户信息</a></li>
						<li><a href="UserJSP/changeUser.jsp" target="right_frame">密码修改</a></li>
					</ul>
			</a>
			</li>
		
		
			<li  class="left_ul_li" onclick="doubonlick('ul2')">
			<a href= "javascript:void(0)">
			权限管理 
					<ul id="ul2" class="lihod">
						<li><a target="right_frame">权限查看</a></li>
						<li><a target="right_frame">权限删除</a></li>
					</ul>
			</a>
			</li>
		
	</ul>
  </body>
</html>
