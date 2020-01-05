<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>changeUser.jsp</title>
    
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
    <script type="text/javascript">
    			
    </script>
</head>
<body>
<div class="login_bg">
<div class="login_container">
    <div class="login_line">
        <div class="login_center">
            <div style="height:170px;"></div>       
            <form action="servlet/UserChangeServlet" id="changepassword_form" method="post">
            <div class="login_box">
                <div class="login_text-center"><h1 style="font-weight:normal;">密码修改注册</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    
                    <div class="form-group">
                        <div class="login_field">
                            <input type="password" class="login_input"id="oldUserpassword" onkeyup="change(this)" onblur="blur1(this)" name="oldUserpassword" placeholder="输入旧密码"  />
							<span id="span_oldUserpassword"style="color:red;display:none;">旧密码不能为空</span>                        
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="login_field">
                            <input type="password" class="login_input"id="newUserpassword" onkeyup="change(this)" onblur="blur1(this)" name="newUserpassword" placeholder="输入新密码"  />
							<span id="span_newUserpassword"style="color:red;display:none;">新密码不能为空</span>                        
                        </div>
                    </div>
                </div>
                <div style="padding:20px;">
                    <input type="submit" id="passwordchange" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px"  value="确认修改">
                </div>
            </div>
            </form>          
            </div>
        </div>
    </div>
</div>

</body>
</html>
