<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>人脸识别</title>
    
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
	</style>
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
  <div>
  <div class="i_div">
  	<form action="face.do" method="post" enctype="multipart/form-data">
  	<div class="img_div">
  	<c:if test="${img == null}">
  	<img src="images/null.jpg" id="img" class="img"><br>
  	</c:if>
  	<c:if test="${img != null}">
  	<img src="img/${img }" id="img" class="img"><br>
  	</c:if>
  	</div>
  	<div class="file_div">
  	<input name="file" type="file" id="file" class="file" onchange="changeFile()">
  	<button type="submit">检测</button>
  	<span style="color:red">${error }</span>
  	</div>
  	</form>
  </div>
  <div class="inf">
  	<h3>人脸属性</h3>
  	<c:if test="${gender != null}">
  	<p class="name">性 别</p>
  	${gender }
  	<p class="name">年 龄</p>
  	${age }
  	<p class="name">微笑程度</p>
  	<span class="smile">值 : ${smile }</span> <spn class="smil">阈值${threshold }</spn>
  	<c:if test="${glass != 'None'}">
  	<p class="name">眼镜类型</p>
  	<c:if test="${glass == 'Dark'}">
  		黑色眼镜
  	</c:if>
  	<c:if test="${glass == 'Normal'}">
  		普通眼镜
  	</c:if>
  	
  	</c:if>
  	</c:if>
  </div>
  
  </div>	
  </body>
</html>
