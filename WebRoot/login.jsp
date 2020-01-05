<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	session.invalidate();
	//System.out.println(session.getId());
 %>
<!DOCTYPE html>
<html >
  <head>
    <base href="<%=basePath%>">
    
    <title>login.jsp</title>
    
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
    	.login_ul>li:hover{
    		background-color:rgba(0,0,0,0.3);
    		color:#fff;
    	}
    </style>
</head>
<body>
<div class="login_bg">
<div class="login_container">
    <div class="login_line">
        <div class="login_center">
            <div style="height:170px;"></div>       
            <form action="servlet/UserLoginServlet" id="login_form" method="post">
            <div class="login_box">
                <div class="login_text-center"><h1 style="font-weight:normal;">企业信息管理中心</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="login_field">
                            <input type="text" class="login_input"  id="login_Username" name="Username" placeholder="登录账号"  />
                        	<span id="login_span_name"style="color:red;display:none">账号不能为空</span>
                        	<ul class="login_ul" style="width:100px;background-color:#fff;position: absolute;"></ul>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="login_field">
                            <input type="password" class="login_input" id="login_Userpassword" onkeyup="change(this)" onblur="blur1(this)" name="Userpassword" placeholder="登录密码" data-validate="required:请填写密码" />
                        	<span id="span_Userpassword"style="color:red;display:none;">密码不能为空</span>                        
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field">
                            <input type="text"style="width:182px;" class="login_input" id="login_code"  onkeyup="change(this)" onblur="blur1(this)" name="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
                           <img src="servlet/CheckImgServlet" alt="" width="120" height="43" class="passcode" style="display:block;float:right;">  
                            <span id="span_code"style="color:red;display:none">验证码不能为空</span>                                               
                        </div>
                    </div>
                </div>
                <div style="padding:20px;padding-top:0px;">
                	<a style="float:right;color:red;"href="regeist.jsp">无账号请点击此处注册</a>
                    <input type="submit"id="login_tijiao" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px"  value="登录">
                </div>
            </div>
            </form>          
            </div>
        </div>
    </div>
</div>

</body>
</html>