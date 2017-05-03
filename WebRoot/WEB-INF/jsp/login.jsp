<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
<title>登陆</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/login/reset.css">
	<link rel="stylesheet" type="text/css" href="css/login/structure.css">
	<script type="text/javascript" src="js/login/jquery.min.js"></script>
	<script type="text/javascript" src="js/login/check.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Car Racing Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.8.3.min.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling---->
</head>
<body>
       
	<div class="header">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					<a href="index.do">Traffic</a>
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
							<li><a href="index.do">主页</a></li>
							<li><a href="show.do">信号灯</a></li>
							<li><a href="toFace.do">人脸属性</a></li>
							<li><a href="clogin.do" class="active">登陆</a></li>
							<li><a href="cregister.do">注册</a></li>
							<li></li>
						</ul>
				</div>
				<div class="search">
					<div class="b-search">
						<form>
							<input type="text" value="搜索" onfocus="this.value = ''" onblur="if (this.value == '') {this.value = 'Search here';}">
							<input type="submit" value="">
						</form>
					</div>
				</div>	
				<!--script-nav-->
						 <script>
						 $("span.menu").click(function(){
						 $(".top-menu ul").slideToggle("slow" , function(){
						 });
						 });
						 </script>
					<div class="clearfix"></div>
				</div>
				</div>
					 <!-- Slider-starts-Here -->
	 <script src="js/responsiveslides.min.js"></script>
	 <script>
		$(function () {
		  $("#slider").responsiveSlides({
			auto:true,
			nav: false,
			speed: 500,
			namespace: "callbacks",
			pager:true,
		  });
		});
		
	   </script>
	<div class="banner">		  			
		<div class="bnr2">						  
	   </div>			 
</div>
	 </div>
	
<form class="box login2" action="login.do" method="post">
	<fieldset class="boxBody">
		
	  <div style="width:280px;height:32px;">
	  <a href="imglogin.do">人脸识别</a>
	  <div style="width=30%; float:left">
	  
	  <label>用户名</label>
	  </div>
	  
	  <div style="float:left;width:50%;height:32px;color:red; line-height:42px; margin-left:5px">
	  <span id = "userError" style="color:red">${userError}</span>
	  <!-- 
	  <s:fielderror style="list-style:none;color:red;">
    	<s:param>par.userName</s:param>
      </s:fielderror>
	   -->
	  </div>
	  </div>
	  <input type="text" id="user" name="user" placeholder="请输入用户名" value="<%=request.getParameter("user")==null?"":request.getParameter("user")%>">

	  <div style="width:280px;height:32px;">
	  <div style="width=30%; float:left">
	  <label>密码</label>
	  </div>
	  
	  <div style="float:left;width:50%;height:32px;color:red; line-height:42px; margin-left:5px">
	  <span id = "passwordError" style="color:red">${passwordError }</span>
	  <!--
		<s:fielderror style="list-style:none;color:red;">
    	<s:param>par.userPass</s:param>
    	</s:fielderror>
	   -->
	   
	  </div>
	  </div>
	  <input type="password" name="password" id="password" placeholder="请输入密码" value="<%=request.getParameter("password")==null?"":request.getParameter("password")%>">

	</fieldset>
	<footer>
	  <button type="submit" id="loginButton" class="btnLogin" tabindex="4">登陆</button>
	</footer>
</form>	
	
</body>
</html>
