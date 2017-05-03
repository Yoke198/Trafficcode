  $(function(){
	$("input[name='user']").blur(function(){
		if($("input[name='user']").val().length<3 && $("input[name='user']").val().length>=0){
			$("#userError").html("用户名长度不能小于3位数");
			
		}else{
			$("#userError").html("");
			
		}

	});//user End
	
	$("input[name='password']").blur(function(){
		if($("input[name='password']").val().length>=0 && $("input[name='password']").val().length<5){
			$("#passwordError").html("密码长度不能小于5位数");
			
		}else{
			$("#passwordError").html("");
			
		}
		
	});//password End
  })