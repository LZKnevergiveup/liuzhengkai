<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>regeist.jsp</title>
    
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
            <form action="servlet/AddUserServlet" id="regeist_form" method="post">
            <div class="login_box">
                <div class="login_text-center"><h1 style="font-weight:normal;">企业信息管理注册</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="login_field">
                            <input type="text" class="login_input" id="Username" name="Username" placeholder="注册账号"  />
                            <span id="span_name"style="color:red;display:none">账号不能为空</span>
                            <span id="span_name2"style="color:red;display:none">账号已存在</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="login_field">
                            <input type="password" class="login_input"id="Userpassword" onkeyup="change(this)" onblur="blur1(this)" name="Userpassword" placeholder="输入密码"  />
							<span id="span_Userpassword"style="color:red;display:none;">密码不能为空</span>                        
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field">
                            <input type="text"style="width:182px;" class="login_input" id="code"  onkeyup="change(this)" onblur="blur1(this)" name="code" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
                           <img src="servlet/CheckImgServlet" alt="" width="120" height="43" class="passcode" style="display:block;float:right;">  
                            <span id="span_code"style="color:red;display:none">验证码不能为空</span>                        
                        </div>
                    </div>
                </div>
                <div style="padding:20px;">
                    <input type="submit" id="tijiao" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px"  value="注册">
                </div>
            </div>
            </form>          
            </div>
        </div>
    </div>
</div>

</body>
</html>
