<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>services</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
					<a href="index.html">car racing</a>
				</div>
				<div class="top-menu">
					<span class="menu"><img src="images/nav.png" alt=""/> </span>
						<ul>
							<li><a href="index.jsp">主页</a></li>
							<li><a href="about.html">关于</a></li>
							<li><a href="services.html" class="active">服务</a></li>
							<li><a href="racing.html">racing</a></li>
							<li><a href="login.jsp">登陆</a></li>
							<li><a href="register.jsp">注册</a></li>
						</ul>
				</div>
				<div class="search">
					<div class="b-search">
						<form>
							<input type="text" value="Search here" onfocus="this.value = ''" onblur="if (this.value == '') {this.value = 'Search here';}">
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
</body>
</html>
