<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加路口</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style type="text/css">
		.addRoad_div {
			width:450px;
			height:325px;
			border-right:1px solid;
			text-align:center;
			float:left;
			margin-left:345px;
		}
		
		p {
			font-size:22px;
			height:50px;
			line-height:50px;
		}
		
		.i {
			margin-top:5px;
			width:200px;
			height:30px;
		}
		
		.sub {
			width:110px;
			height:30px;
			margin-top:30px;
			background-color:#54ACED;
			border:0px;
			color:white;
		}
		
		.img {
			width:200px;
			height:20px;
			margin-left:2px;
			font-size:15px;
			padding-top: 10px;
		}
		
		.tra {
			width:500px;
			height:500px;
			float:left;
			margin-left:50px;
		}
		
		.p1 {
			font-size:17px;
		}
		
	</style>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$(".dan").hide();
		$(".san").hide();
		$(".shuang").hide();
		
		//点击双向对行
		$("#shuang").click(function(){
			$(".shuang").show();
			$(".dan").hide();
			$(".san").hide();
			$(".shuang input").attr("disabled",false);
			$(".dan input").attr("disabled",true);
			$(".san input").attr("disabled",true);
		})
		
		//点击单路口通行
		$("#dan").click(function(){
			$(".dan").show();
			$(".shuang").hide();
			$(".san").hide();
			$(".dan input").attr("disabled",false);
			$(".shuang input").attr("disabled",true);
			$(".san input").attr("disabled",true);
		})
		
		//点击三叉路口
		$("#san").click(function(){
			$(".san").show();
			$(".shuang").hide();
			$(".dan").hide();
			$(".san input").attr("disabled",false);
			$(".shuang input").attr("disabled",true);
			$(".dan input").attr("disabled",true);
		})
	})
	</script>
  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <form action="addRoad.do" method="post" enctype="multipart/form-data">
    <div class="addRoad_div">
    
    <p>请填写交汇路口详细信息</p>
    
    
    <div>
    	
    	<span></span><br/>
    	交汇路口名称 : <input name="cName" class="i" type="text" value="<%=request.getParameter("cName")==null?"":request.getParameter("cName")%>" /><br/>
    	<span style="color:red">${nameNull }</span>
    	<p class="img">交汇路口图片 : </p>
    	<input name="file" style="cursor: pointer;border:1px solid #D4D0C8;padding:2px;margin-left: 163px;"
    	id="file" class="file" type="file"/>
    	<span style="color:red">${error }</span><br/>
    	交汇路口类型 :
    	<input name="cType" value="light.do" id="shuang" type="radio"/> <label for="shuang" style="font-weight: inherit;"> 双向对行</label>
    	<input name="cType" value="light2.do" id="dan" type="radio"/> <label for="dan" style="font-weight: inherit;"> 单路口通行</label>
    	<input name="cType" value="light3.do" id="san" type="radio"/> <label for="san" style="font-weight: inherit;"> 丁字路口</label><br/>
    	<span style="color:red">${typeNull }</span>
    	<br/>
    	<span style="margin-bottom:20px;">交汇路口描述 : </span>
     	<textarea name="cDesc" rows="0" cols="0" style="width:240px;height:50px;resize: none;"></textarea><br>
    </div>
    
    <button class="sub" type="submit">提交</button>
    
    
    </div>
    <!-- 红绿灯时间 -->
    <div class="tra">
		<!-- 双向对行 -->
		<div class="shuang">
		<p class="p1">南北红绿灯时间: </p>
     	直行绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	左转绿灯 : <input name="shangLgreen" style="width:70px;color:#4ADACB" value="8000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '8000';}" type="text"/>
     	左转黄灯 : <input name="shangLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	<p class="p1">东西红绿灯时间: </p>
     	直行绿灯 : <input name="zuoZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="zuoZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	左转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="8000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '8000';}" type="text"/>
     	左转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/>
    	</div><!-- duiEND -->
    	
    	<!-- 单路口通行 -->
    	<div class="dan">
  		<p class="p1">北</p>
     	直行绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB;readOnly='true' " value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
    	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
    	左转绿灯 : <input name="shangLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转黄灯 : <input name="shangLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	
     	<p class="p1">西</p>
     	直行绿灯 : <input name="zuoZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="zuoZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	左转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/>
     	
     	<p class="p1">南</p>
     	直行绿灯 : <input name="xiaZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="xiaZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
    	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
    	左转绿灯 : <input name="xiaLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转黄灯 : <input name="xiaLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	
     	<p class="p1">东</p>
     	直行绿灯 : <input name="youZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="youZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
    	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
    	左转绿灯 : <input name="youLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转黄灯 : <input name="youLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>    		
    	</div><!-- danEND -->
    	
    	<!-- 丁字路口 -->
    	<div class="san">
    	<p class="p1">西 : </p>
     	左转&右转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转&右转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="1000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '1000';}" type="text"/><br/>
     	<p class="p1" style="padding-top:10px">南: </p>
     	直行&左转绿灯 : <input name="xiaZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行&左转黄灯 : <input name="xiaZyellow" style="width:70px;color:#EDCF46" value="1000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '1000';}" type="text"/><br/>
     	<p class="p1" style="padding-top:10px">北 : </p>
     	直行&右转绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行&右转黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="1000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '1000';}" type="text"/><br/>
    	</div><!-- dingEND -->
    	
    </div>
    </form>
  </body>
</html>
