<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Mettingleft.jsp' starting page</title>
    
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
	var i=0;
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
		<a href= "javascript:void(0)">
		<li class="left_ul_li" onclick="doubonlick('ul1')">公司公告
				<ul id="ul1" class="lihod">
					<li><a href="MeetingJSP/AddNotice.jsp" target="right_frame">发布公告</a></li>
					<li><a href="servlet/SeeAllNoticeServlet" target="right_frame">查看公告</a></li>
					<li><a href="servlet/SeeAllNoticeServlet" target="right_frame">修改公告</a></li>
					<li><a href="servlet/SeeAllNoticeServlet" target="right_frame">删除公告</a></li>
				</ul>
		</li>
		</a>
		<a href= "javascript:void(0)">
			<li  class="left_ul_li" onclick="doubonlick('ul2')">工作会议
					<ul id="ul2" class="lihod">
						<li><a href="myjsp/AboutWeleft.jsp"  target="right_frame">发送通知</a></li>
						<li><a href="myjsp/AboutWeleft.jsp"  target="right_frame">删除通知</a></li>
						<li><a href="myjsp/AboutWeleft.jsp"  target="right_frame">修改通知</a></li>
						<li><a href="myjsp/AboutWeleft.jsp"  target="right_frame">查看通知</a></li>
					</ul>
			</li>
		</a>
	</ul>
  </body>
</html>