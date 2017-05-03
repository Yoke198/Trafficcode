<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link type="text/css" href="css/register/reset.css" rel="stylesheet">
	<link type="text/css" href="css/register/public.css" rel="stylesheet">
	<link type="text/css" href="css/register/register.css" rel="stylesheet">
	<link rel="shortcut icon" href="favicon.ico" />
	<script src="js/register/jquery.min.js" type="text/javascript"></script>
	<script src="js/register/check.js"></script>
	<script src="js/register/jquery.form.js" type="text/javascript"></script>
	<script src="js/register/json.parse.js" type="text/javascript"></script>
	<!-- 验证码 -->
	<script language="javascript">  
	  function myReload() {  
		   document.getElementById("CreateCheckCode").src = document  
		           .getElementById("CreateCheckCode").src  
		            + "?nocache=" + new Date().getTime();  
				}  
	</script>
  </head>
  
  <body>
  
  
<div class="register_content">
	
		<ul class="step_ul step1 clear">
			<li class="li1"><a href="index.jsp" style="color:white">主页</a></li>
			<li class="li2"><a href="login.jsp" style="color:white">登陆</a></li>
		</ul>
		
		 <form name="registerForm" id="registerForm" action="register.do" method="post" style="padding:60px 40px 88px 40px;font-family:Microsoft Yahei">
			<div class="div_form clear ">
				<label>用户名：</label>
				<div class="input_div input_div1">
					<div style="float:inherit">
					<input id="user" name="user" placeholder="请输入用户名" maxlength="24" type="text">
					</div>
					<div style="float:inherit">
					<span id = "userError" style="line-height: 40px;color:red">${userError}</span>
					<!-- 
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.userName</s:param>
    				</s:fielderror>
					 -->
    				</div>
				</div>
			</div>
			<div class="div_form clear ">
				<label>密码：</label>
				<div class="input_div input_div3">
				<div style="float:inherit">
					<input id="password" name="password" placeholder="请输入密码" maxlength="32" type="password">
				</div>
					<div style="float:inherit">
					<span id = "passwordError" style="line-height: 40px;color:red">${passwordError }</span>
					<!-- 
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.userPass</s:param>
    				</s:fielderror>
					 -->
    				</div>
				</div>
			</div>
			<!--  -->
			<div class="div_form clear ">
				<label>确认密码：</label>
				<div class="input_div input_div4">
				<div style="float:inherit">
					<input id="confirm" name="confirm" placeholder="再次输入密码" maxlength="32" type="password">
				</div>	
					<div style="float:inherit">
					<span id = "confirmError" style="line-height: 40px;color:red">${confirmError}</span>
					<!-- 
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.userPass2</s:param>
    				</s:fielderror>
					 -->
    				</div>
				</div>
			</div>
			<div class="div_form clear ">
				<label>邮箱：</label>
				<div class="input_div input_div2">
				<div style="float:inherit">
					<input id="email" name="email" placeholder="请填写正确的邮箱，以便接收账号激活邮件" maxlength="64" type="text">
				</div>	
					<div style="float:inherit">
					<span id = "emailError" style="line-height: 40px;color:red">${emailError }</span>
					<!-- 
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.email</s:param>
    				</s:fielderror>
					 -->
    				</div>
				</div>
			</div>
			<div class="div_form clear ">
				<label>验证码：</label>
				<div class="input_div input_div2">
				<div style="float:inherit">
					<input id="code" style="width:150px;" name="code" placeholder="验证码区分大小写" maxlength="4" type="text">
					<img src="PictureCheckCode" id="CreateCheckCode" align="middle">  
           			<a style="cursor:pointer" onclick="myReload()"> 看不清,换一个</a>
				</div>	
					<div style="float:inherit">
					<span id = "codeError" style="line-height: 40px;color:red">${codeError }</span>
					<!-- 
					<s:fielderror style="list-style:none;color:red;">
    				<s:param>par.email</s:param>
    				</s:fielderror>
					 -->
    				</div>
				</div>
			</div>


            
			<div class="div_form clear ">
				<label></label>
				<div class="input_div">
					<input id="btn" class="btn" value="注册" type="submit">
					
				</div>
			</div>
			
		</form>
		
  </body>

</html>
















