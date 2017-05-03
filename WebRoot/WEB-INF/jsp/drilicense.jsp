<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>行驶证</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
	
	</script>
	<script type="text/javascript">
	function changeFile(){
		//document.getElementById("file") 获取节点
		var file = document.getElementById("file").files[0];//获取file 对象
		var files = document.getElementById("file")
		var img = document.getElementById("img");
		if(!/image\/\w+/.test(file.type)){  
        alert("图片格式错误");  
        return false;
    	}
		var reader = new FileReader();
		//将文件以 Date URL形式读入页面
		reader.readAsDataURL(file);
		reader.onload = function () {
		  img.src = reader.result;
		 }
	}
	</script>
	
	<style type="text/css">
		.i_div {
			width:500px;
			height:500px;
			margin-top:50px;
			margin-left:200px;
			float:left;
			
		}
		.img_div{
			width:100%;
			height:80%;
			text-align:center;
			background-color: #E4E4E4;
		}
		.img {
			max-width:100%;
			max-height:100%;

		}
		.inf {
			width:500px;
			height:400px;
			border:1px solid;
			border-color:#CACACA;
			float:left;
			margin-left:50px;
			margin-top:50px;
			padding-left:12px;
			padding-top:15px;
		}
		
		.inf_2 {
			width:480px;
			height:320px;
			OVERFLOW-Y: auto; 
			OVERFLOW-X: auto; 
		}
		
		.val {
			font-weight: 600;
			font-size: 18px;
			padding: 0 0 0 26px;
		}
		
		.name {
			font-size: 14px;
			padding-top: 10px;
			font-weight: bolder;
			color: #3e3e3e;
		}
		
		.smile {
			padding-right: 10px;
		}
		
		.card {
			width:500px;
			height:50px;
			margin-left:635px;
			margin-top:30px;
			
		}
		.cardType {
			width:120px;
			height:50px;
			float:left;
			text-align: center;
			line-height:50px;
			size:18px;
			
			margin-right:10px;
			background-color:#3B9DE9;
		}
		.cardType a {
			color:white;
		}
		.cardType a:hover, a:focus {
		    color: black;
	    	text-decoration: none;
		}
	</style>
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
  <!-- 证件识别类别 -->
  <div class="card">
  	<div class="cardType"><a href="toIDCard.do">身份证</a></div>
  	<div class="cardType"><a href="toDriving.do">驾照</a></div>
  	<div class="cardType"><a href="toDriLicense.do" style="color:black">行驶证</a></div>
  </div>
  
  <div>
  <div class="i_div">
  	<form action="DriLicense.do" method="post" enctype="multipart/form-data">
  	<div class="img_div">
  	<c:if test="${img == null}">
  	<img src="images/xingnull3.jpg" id="img" class="img"><br>
  	</c:if>
  	<c:if test="${img != null}">
  	<img src="img/${img }" id="img" class="img"><br>
  	</c:if>
  	</div>
  	<div class="file_div">
  	<input name="file" type="file" id="file" class="file" onchange="changeFile()">
  	<button id="sub" type="submit">识别并上传</button>
  	<span style="color:red">${error }</span>
  	</div>
  	</form>
  </div>
  <div class="inf">
  	<h3 style="height:35px;">识别结果</h3>
  	<div class="inf_2">
  	<c:if test="${plate_no != null}">
  	<c:if test="${engine_no == '' }">
  		<span style="color:red; font-size:18px;">未检测到行驶证</span>
  	</c:if>
  	<c:if test="${engine_no != '' }">
  	<p class="name">号牌号码</p>
  	${plate_no }
  	<p class="name">车辆类型</p>
  	${vehicle_type }
  	<p class="name">所有人</p>
  	${owner }
  	<p class="name">住 址</p>
  	${address }
  	<p class="name">品牌型号</p>
  	${model }
  	<p class="name">车辆识别号</p>
  	${vin }
  	<p class="name">发动机号码</p>
  	${engine_no }
  	<p class="name">注册日期</p>
  	${register_date }
  	<p class="name">发证日期</p>
  	${issue_date }
  	<p class="name">签发机关</p>
  	${issued_by }
  	</c:if>
  	</c:if>
  	<c:if test="${check!=null}">
  		<span style="color:red; font-size:18px;">${check }</span>
  	</c:if>
  	</div>
  </div>
  
  </div>	
  </body>
</html>
