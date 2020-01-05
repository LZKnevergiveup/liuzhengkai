<%@ page language="java" import="java.util.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>AllPersonAdd.jsp</title>
    
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
    	.login_input{
    		display:inline;
    	}
    	.form-group{
    		float:right;
    	}
    </style>
</head>
<body style="background:url(http://localhost:8080/Mywork1/images/bg.jpg);">    
        <form action="servlet/AllProAddServlet" id="AllPersonAdd_form" method="post">
            <div Style="margin:0 auto; width:440px">
                <div class=""><h1 style="font-weight:normal;">公司通讯录添加</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                          	姓名: <input type="text" style="display:inline;" class="login_input" id="person_name" onkeyup="change(this)" onblur="blur1(this)" name="Personname" placeholder="请填写姓名"/><br>
                        	<span id="span_Personname"style="color:red;display:none;">姓名不能为空</span>                        
                    </div>
                    <div class="form-group" style="padding:0px;margin:0px;height:30px;float:left;">
						   &nbsp;&nbsp;&nbsp;&nbsp; 男:<input type="radio" style="display:inline;width:50px;height:10px;" checked="checked" value="男" id="person_sex" name="Personsex" placeholder="性别" />
						     女:<input type="radio" style="display:inline;width:50px;height:10px;" value="女" id="person_sex" name="Personsex" />                                          
                    </div>
                    <div class="form-group">
                        <div class="login_field">
                                                  手机:<input type="text" class="login_input" id="person_phone" onkeyup="change(this)" onblur="blur1(this)" name="Personphone" placeholder="请填写手机号码" /><br>
                        	<span id="span_Personphone"style="color:red;display:none;">手机号码不能为空</span>                        
                        </div>
                    </div>
                    <div class="form-group">   
                            E-mail:<input type="text" class="login_input" id="person_mail" onkeyup="change(this)" onblur="blur1(this)" name="Personmail" placeholder="请填写E-mail" /><br>
                        	<span id="span_Personmail"style="color:red;display:none;">E-mail不能为空</span>                        
                    </div>
                    <div class="form-group">
                            QQ:<input type="text" class="login_input" id="person_qq" onkeyup="change(this)" onblur="blur1(this)" name="Personqq" placeholder="请填写QQ"/><br>
                        	<span id="span_Personqq"style="color:red;display:none;">QQ不能为空</span>                        
                    </div>
                     <div class="form-group">
                                                  工作单位:<input type="text" class="login_input" id="person_work" onkeyup="change(this)" onblur="blur1(this)" name="Personwork" placeholder="请填写工作单位"  /><br>
                        	<span id="span_Personwork"style="color:red;display:none;">工作单位不能为空</span>                        
                    </div>
                     <div class="form-group">
                                                  地址:<input type="text" class="login_input" id="person_address" onkeyup="change(this)" onblur="blur1(this)" name="Personaddress" placeholder="请填写地址" /><br>
                        	<span id="span_Personaddress"style="color:red;display:none;">地址不能为空</span>                        
                    </div>
                     <div class="form-group">
                           	 邮政编码:<input type="text" class="login_input" id="person_postal" onkeyup="change(this)" onblur="blur1(this)" name="Personpostal" placeholder="请填写邮政编码"  /><br>
                        	<span id="span_Personpostal"style="color:red;display:none;">邮政编码不能为空</span>                        
                    </div>
                </div>
                <div style="padding:20px;padding-top:0px;">
                    <input type="submit" style="font-size:16px;color:white;background-color:#0ae;border:#0ae;width:350px;height:46px"  value="确认添加"><br>
                </div>
            </div>
       </form>      
	</body>
</html>
