<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function 

hideURLbar(){ window.scrollTo(0,1); } </script>
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
							<li><a href="index.do" class="active">主页</a></li>
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
						<form>
							<input type="text" value="搜索" onfocus="this.value = ''" onblur="if 

(this.value == '') {this.value = 'Search here';}">
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
	 <div class="slider">
		  <div class="callbacks_container">
			  <ul class="rslides" id="slider">
				
					<div class="slid banner1">
						  <div class="caption">
								<h3>交通信号灯</h3>
								<p>用于道路平面交叉路口，通过对车辆、行人发出行进或停止的指令使各同时到达的人、车交通流，
								尽可能的减少相互干扰，从而提高路口的通行能力，保障路口的畅通和安全。</p>
								<a href="show.do" class="button">了解更多</a>
						  </div>
					</div>
				
				
					 <div class="slid banner2">	
						  <div class="caption">
								<h3>人脸识别</h3>
								<p>用于身份识别。由于视频监控正在快速普及，众多的视频监控应用迫切需要一种远距离、
								用户非配合状态下的快速身份识别技术，以求远距离快速确认人员身份，实现智能预警。</p>
								<a href="toFace.do" class="button">了解更多</a>
						  </div>
					 </div>
				
				
					<div class="slid banner3">	
						<div class="caption">
							<h3>证件上传</h3>
							<p>如果出门忘带驾驶证、行驶证等证件，可以使用本应用“城市服务”，点击“星级服务”，出示电子证照即可，不会遭到罚款、扣车等处罚。</p>
							<a href="toIDCard.do" class="button">了解更多</a>
						</div>
					</div>
				
			  </ul>
		 </div>
	 </div>
	 </div>
	<!--about-->
		<div class="content">
				<!--training-->
					<div class="training">
						<div class="container">
							<div class="training-grids">
							<div class="col-md-4 training-grid">
								<h3>交通信号灯</h3>
								<a href="show.do"><img src="images/p5.jpg" style="width:350px;height:200px" class="img-responsive" alt="350*199"></a>
								<p></p>
							</div>
							<div class="col-md-4 training-grid">
								<h3>人脸识别</h3>
								<a href="toFace.do"><img src="images/p6.jpg" style="width:350px;height:200px" class="img-responsive" alt="/"></a>
								<p></p>
							</div>
							<div class="col-md-4 training-grid">
								<h3>证件上传</h3>
								<a href="toIDCard.do"><img src="images/p7.jpg" style="width:350px;height:200px" class="img-responsive" alt="/"></a>
								<p></p>
							</div>
							<div class="clearfix"></div>
							</div>
						</div>
					</div>
				<!--training-->
			
		<!--about-->

				<!--models-->
					
			<!--models-->
			<!--event-->
					
					<!---pop-up-box---->  
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
				<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
				</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																	

					
						});
				</script>								  
			<!----//fea-video---->
			<!--specials-->
				<div class="specials-section">
					<div class="container">
						<div class="specials-grids">
							<div class="col-md-3 specials1">
								<h3>categories</h3>
								<ul>
									<li><a href="#">Lorem ipsum dolor</a></li>
									<li><a href="#">Consectetur adipiscing</a></li>
									<li><a href="#">Integer molestie lorem</a></li>
									<li><a href="#">Facilisis in pretium nisl</a></li>
									<li><a href="#">Pacilisis in pretium nisl</a></li>
								</ul>
							</div>
							<div class="col-md-3 specials1">
								<h3>archives</h3>
								<ul>
									<li><a href="#">September, 2013</a></li>
									<li><a href="#">August, 2013</a></li>
									<li><a href="#">July, 2013</a></li>
									<li><a href="#">June, 2013</a></li>
									<li><a href="#">May, 2013</a></li>
								</ul>
							</div>
							<div class="col-md-3 specials1">
								<h3>contact</h3>
								<address>
									<p>The Company Name Inc.</p>
									<p>Glasgow,Le 99 Pr 45.</p>
									<p>Telephone: +1 800 603 6035</p>
									<p>FAX: +1 800 889 9898</p>
									<p>E-mail: <a 

href="mailto:example@mail.com">example@mail.com</a></p>
								</address>
							</div>
							<div class="col-md-3 specials1">
								<h3>social</h3>
								<ul>
									<li><a href="#">facebook</a></li>
									<li><a href="#">twitter</a></li>
									<li><a href="#">google</a></li>
									<li><a href="#">Vimeo</a></li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
				<!--footer-->
					<div class="footer-section">
						<div class="container">
							<div class="footer-top">
								<p>Copyright &copy; 2015.Company name All rights reserved.<a 

target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
							</div>
							<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> 

</span></a>
				</div>
			</div>
            <script type="text/javascript" src="js/index.js">

</script>                                                                    
</body>
</html>
