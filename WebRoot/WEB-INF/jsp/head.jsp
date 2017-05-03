<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<style type="text/css">
				.search input[type="submit"] {
    width: 39px;
    height: 32px;
    padding: 0px 1px;
    border: none;
    cursor: pointer;
    position: absolute;
    outline: none;
    top: 14px;
    right: 0px;
    background-color: #05a581;
}
	</style>
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
							<!-- 
							 -->
							<li><a href="show.do">信号灯</a></li>
							<li><a href="toFace.do">人脸属性</a></li>
							<li><a href="toIDCard.do">证件上传</a></li>
							
							<c:if test="${null != userEL}">
							<li><a href="mycard.do">我的证件</a></li>
							<li id="a"><a href="javascript:void(0)">${userEL }</a></li>
							<li style="width:31px"><a id="b" href="offlogin.do">注销</a></li>
							</c:if>
							<c:if test="${null == userEL}">
							<li><a href="clogin.do"  class="aa">登陆</a></li>
							<li><a href="cregister.do">注册</a></li>
							</c:if>
						</ul>
				</div>
				<div class="search">
					<div class="b-search">
						<form action="search.do" method="post">
							<input type="text" name="search" value="搜索" onfocus="this.value = ''" onblur="if (this.value == '') {this.value = '搜索';}">
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
	 <script type="text/javascript" src="js/index.js">
	 
</script>  
</body>
</html>
