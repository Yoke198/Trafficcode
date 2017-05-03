	$(function(){

	$("input[name='user']").blur(function(){
			if($("input[name='user']").val().length<3 && $("input[name='user']").val().length>=0){
				
				$("#userError").html("用户名长度不能小于3位数");
				
			}else{
				
				$("#userError").html("");
				
			}
		
	})//user End
	
	//判断两次密码是否一致
	$("input[name='password']").blur(function(){
		if($("input[name='password']").val().length>=0 && $("input[name='password']").val().length<5){
			
			$("#passwordError").html("密码长度不能小于5个字符");
			
		}else{
			
			$("#passwordError").html("");
		}
		
	})//password End
	
	$("input[name='confirm']").blur(function(){
		if($("input[name='password']").val()!=$("input[name='confirm']").val()){
					
					$("#confirmError").html("两次密码不一致");
					
				}else{
					
					$("#confirmError").html("");
					
				}
	})//confirm End
	
	//验证邮箱格式
	$("input[name='email']").blur(function(){
		
		var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		
		var email = $("input[name='email']").val();
		
		if(!reg.test(email)){
			
			$("#emailError").html("邮箱格式错误");
			
		}else{
			
			$("#emailError").html("");
			
		}
		
	})//email End
	
//	//验证码校验
//	$("input[name='code']").blur(function(){
//		if($("input[name='code']").val()==""){
//			
//			$("#codeError").html("请输入验证码");
//			
//		}else{
//			
//			$("#codeError").html("");
//			
//		}
//		
//	})//code End
  		
})












