
//注册
$(function(){
    $("#Username").keyup(function(){
    	var UserName= $("#Username").val();
    	if(UserName.trim()==""){
    		$("#Username").css("border-color","red");
    		$("#span_name").css("display","inline");
    	}else{
    		$("#Username").css("border-color","blue");
    		$("#span_name").css("display","none");
    	}
	});
 });
$(function(){
    $("#Username").blur(function(){
    	var UserName= $("#Username").val();
    	if(UserName.trim()==""){
    		$("#Username").css("border-color","red");
    		$("#span_name").css("display","inline");
    	}else{
    		$("#Username").css("border-color","#fff");
    		$("#span_name").css("display","none");
    	}
	});
 });
function change(obj){
		
    	var objval= $("#"+obj.id).val();
    	if(objval.trim()==""||objval==null){
    		obj.style.borderColor="red";
    		$("#span_"+obj.name).css("display","inline");
    	}else{
    		obj.style.borderColor="blue";
    		$("#span_"+obj.name).css("display","none");
    	}
}
function blur1(obj){
	var objval= $("#"+obj.id).val();
    	if(objval.trim()==""||objval==null){
    		obj.style.borderColor="red";
    		$("#span_"+obj.name).css("display","inline");
    	}else{
    		obj.style.borderColor="#fff";
    		$("#span_"+obj.name).css("display","none");
    	}
}



$(function(){
    $("#Username").keyup(function(){
    	var UserName= $("#Username").val().trim();
    	$.ajax(
    			{
    				url:"servlet/UserNameSearchServlet",
    				type:"post",
    				data:"Username="+$("#Username").val(),
    				dataType:"JSON",
    				success:function(jsonResult){
    					if(jsonResult==""&&UserName!=""&&UserName!=null){
    						$("#span_name2").css("display","inline");
    						$("#Username").css("border-color","red");    					
    					}else{
    						$("#span_name2").css("display","none");
    						$("#Username").css("border-color","blue");
    					}
    				}
    			
    		}
    	);
	});
 });
$(function(){
	$("#regeist_form").submit(function(){
		    if($("#Username").val().trim()==""||$("#Userpassword").val().trim()==""||$("#code").val().trim()==""){
		    alert("信息不完整");
		    return false;
		    }else{
		    return true;
		    }
	});
});


//登入
$(function(){
    $("#login_Username").keyup(function(){
    	var login_Username= $("#login_Username").val();
    	if(login_Username.trim()==""){
    		$("#login_Username").css("border-color","red");
    		$("#login_span_name").css("display","inline");
    	}else{
    		$("#login_Username").css("border-color","blue");
    		$("#login_span_name").css("display","none");
    	}
	});
 });
$(function(){
    $("#login_Username").blur(function(){
    	var login_Username= $("#login_Username").val();
    	if(login_Username.trim()==""){
    		$("#login_Username").css("border-color","red");
    		$("#login_span_name").css("display","inline");
    	}else{
    		$("#login_Username").css("border-color","blue");
    		$("#login_span_name").css("display","none");
    	}
	});
 });


$(function(){
	$("#login_form").submit(function(){
		    if($("#login_Username").val().trim()==""||$("#login_Userpassword").val().trim()==""||$("#login_code").val().trim()==""){
		    alert("信息不完整");
		    return false;
		    }else{
		    return true;
		    }
	});
});
$(function(){
	$("*").not(".login_ul,#login_Username").click(function(){
		$(".login_ul").hide();
	});
});

$(function(){
    $("#login_Username").keyup(function(){
    	var login_Username= $("#login_Username").val().trim();
    	$.ajax(
    			{
    				url:"servlet/LikeUserNameSearchServlet",
    				type:"post",
    				data:"login_Username="+$("#login_Username").val(),
    				dataType:"JSON",
    				success:function(jsonResult){
    					var liString = "";
						//循环遍历json数组
						for(var i=0;i<jsonResult.length;i++){
							liString+="<li style='color:rgba(0,0,0,0.5)'  onclick=' closeparent(this); sendMessage("+jsonResult[i].userId+")'>"+jsonResult[i].userName+"</li>";
						}
						liString+="<li style='color:red;text-align:center;' onclick='closeparent(this)'>关闭</li>";
						$(".login_ul").html(liString);
						if(jsonResult.length==0)
						{
							$(".login_ul").hide();
						}
						else
						{
							$(".login_ul").show();
							$(".login_Username").blur(function(){
								$(".login_ul").hide();
							});
						}
    				}
    			
    		}
    	);
	});
 });

function sendMessage(message)
{
	$.ajax(
		{
			url:"servlet/UseridSearchServlet",
			type:"post",
			data:"userId="+message,
			dataType:"JSON",
			success:function(jsonResult){
					$("#login_Username").val(jsonResult.userName);
			
			}
		}
	);
}

function closeparent(obj)
{
	$(obj.parentNode.className).hide();
};

$(function(){
$("#login_code").blur(function(){
	$.ajax(
			{
				url:"servlet/codeServlet",
				type:"post",
				data:"login_code="+$("#login_code").val(),
				dataType:"JSON",
				success:function(jsonResult){
						if(jsonResult.codeboolean == false){
							alert("验证码错误");
							$("#login_tijiao").get(0).disabled=true;	
							
						}else{
							$("#login_tijiao").get(0).disabled=false;
							
						}
				
				}
			}
		);
 });
});


// 修改密码
$(function(){
	$("#changepassword_form").submit(function(){
		    if($("#oldUserpassword").val().trim()==""||$("#newUserpassword").val().trim()==""){
		    alert("请将密码填写完整");
		    return false;
		    }else{
		    return true;
		    }
	});
});

// 添加Allperson
$(function(){
	$("#AllPersonAdd_form").submit(function(){
		    if($("[type='text']").val().trim()==""){
		    alert("请将信息填写完整");
		    return false;
		    }else{
		    return true;
		    }
	});
});

$(function(){
	$("#AllPersnToUpdate_form").submit(function(){
//			alert($("[type='text']").get(0).value);
		    if($("[type='text']").val().trim()==""){
		    alert("请将信息填写完整");
		    return false;
		    }else{
		    return true;
		    }
	});
});

//发消息
$(function(){
	
	$("#ToNewsform").submit(function(){
//			alert($("input").get(1).value);
//			alert($("textarea").val());
		    if($("[type='date']").val().trim()==""||$("textarea").val().trim()==""){
		    alert("请将信息填写完整");
		    return false;
		    }else{
		    return true;
		    }
	});
});
//查看消息
function yuedu(){
	
	
}