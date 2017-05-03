<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
<title>人脸识别登陆</title>
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
	<style type="text/css">
		.img_div {
			width:100px;
			height:100px;
			border:1px solid;
			margin-left:85px;
			margin-bottom:10px;
		}
		
		.sub {
			margin-left:200px;
			margin-top:10px;
			background-color:#009FE3;
			color:white;
			border:0px;
			padding:7px 20px;
		}
		
		.head {
			width:100%;
			height:100%;
			
		}
	</style>
	<script type="text/javascript">
		function change(){
		//获取file
		var file = document.getElementById("file").files[0];
		var img = document.getElementById("head");
		var reader = new FileReader();
		if(!/image\/\w+/.test(file.type)){  
        alert("图片格式错误");  
        return false;
    	}
		//将文件以 Date URL形式读入页面
		reader.readAsDataURL(file);
		reader.onload=function(){
		img.src=reader.result
		}
		}
	</script>
</head>
<body>
       
	<div class="header">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					<a href="index.html">Traffic</a>
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
							<li><a href="index.do">主页</a></li>
							<li><a href="myftl.do">关于</a></li>
							<li><a href="services.html">服务</a></li>
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
	
<form class="box login" action="ilogin.do" method="post" enctype="multipart/form-data">
	<fieldset class="boxBody" style="height:450px">
		
	  <div style="width:280px;height:32px;">
	  <div style="width=30%; float:left">
	  <label>头像</label>
	  </div>
	  
	  <div style="float:left;width:50%;height:32px;color:red; line-height:42px; margin-left:5px">
	  <span id = "userError" style="color:red">${userError}</span>
	  </div>
	  </div>
	  <div class="img_div">
	  	<img alt="" src="images/lovis.jpg" id="head" class="head">
	  </div>
	  	<span style="color:red;padding-left: 84px;">${error }</span>
	  <input name="file" style="cursor: pointer;border:1px solid #D4D0C8;padding:2px;margin-left: 10px;;margin-top: 10px"
    	id="file" class="file" type="file" onchange="change()" />

	  <div style="width:280px;height:32px;">
	  <div style="width=30%; float:left">
	  <label>密码</label>
	  </div>
	  
	  <div style="float:left;width:50%;height:32px;color:red; line-height:42px; margin-left:5px">
	  <span id = "passwordError" style="color:red">${passwordError}</span>
	  </div>
	  </div>
	  <input type="password" name="password" id="password" placeholder="请输入密码">

	  <button class="sub" type="submit">登陆</button>
	</fieldset>
</form>	
	
</body>
</html>
