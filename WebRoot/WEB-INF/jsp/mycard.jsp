<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>我的证件</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		.c{
			margin-left:100px;
			margin-top:20px;
			margin-bottom:100px;
		}
		
		.d {
  			padding: 3px 10px 3px 10px;
  			text-align:center; 
  			background-color: #91C5D4;
  		}
  		
  		.d2 {
  			padding: 3px 10px 3px 10px;
  			text-align:center; 
  			background-color: #D5EAF0;
  		}
  		
	</style>
  </head>
 	

  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <div class="c">
    	<p style="padding:15px;font-size:20px;">身份证</p>
    	<c:if test="${cardnull != null}">
    		<span style="color:#66A9BD;margin-left:15px;"> ${cardnull }</span>
    	</c:if>
    	<c:if test="${cardnull == null}">
    	<table border="1" >
    		<tr>
    			<td class="d">姓名</td>
    			<td class="d">性别</td>
    			<td class="d">民族</td>
    			<td class="d">出生</td>
    			<td class="d">住址</td>
    			<td class="d">身份证号</td>
    			<td class="d">操作</td>
    		</tr>
    		<c:forEach items="${idcard}" var="i">
    		<tr>
    			<td class="d2">${i.name }</td>
    			<td class="d2">${i.gender }</td>
    			<td class="d2">${i.race }</td>
    			<td class="d2">${i.birthday }</td>
    			<td class="d2">${i.address }</td>
    			<td class="d2">${i.idCardNumber }</td>
    			<td class="d2"><a href="delete.do?cardid=${i.id}">删除</a></td>
    		</tr>
    		</c:forEach>
    	</table>
    	</c:if>
    	
    	<p style="padding:15px;font-size:20px;">驾照</p>
    	<c:if test="${dnull != null}">
    		<span style="color:#66A9BD;margin-left:15px;"> ${dnull }</span>
    	</c:if>
    	<c:if test="${dnull == null}">
    	<table border="1" width="1400px">
    		<tr>
    			<td class="d">驾驶证号</td>
    			<td class="d">姓名</td>
    			<td class="d">性别</td>
    			<td class="d">国籍</td>
    			<td class="d">住址</td>
    			<td class="d">出生日期</td>
    			<td class="d">初次领证日期</td>
    			<td class="d">签发机关</td>
    			<td class="d">有效期限</td>
    			<td class="d">驾驶证版本</td>
    			<td class="d">操作</td>
    		</tr>
    		<c:forEach items="${driving}" var="d">
    		<tr>
    			<td class="d2">${d.license_number }</td>
    			<td class="d2">${d.name } </td>
    			<td class="d2">${d.gender } </td>
    			<td class="d2">${d.nationality }</td>
    			<td class="d2">${d.address }</td>
    			<td class="d2">${d.birthday }</td>
    			<td class="d2">${d.issue_date }</td>
    			<td class="d2">${d.issued_by }</td>
    			<td class="d2">
    			${d.valid_for }
    			${d.valid_date } 
    			</td>
    			<td class="d2">
    			<c:if test="${d.version == 1}">
			  		2008年版
			  	</c:if>
			  	<c:if test="${d.version == 2}">
			  		2013年版
			  	</c:if>
    			</td>
    			<td class="d2"><a href="delete.do?drivingid=${d.id}">删除</a></td>
    		</tr>
    		</c:forEach>
    	</table>
    	</c:if>
    	
    	<p style="padding:15px;font-size:20px;">行驶证</p>
    	<c:if test="${dlnull != null}">
    		<span style="color:#66A9BD;margin-left:15px;"> ${dlnull }</span>
    	</c:if>
    	<c:if test="${dlnull == null}">
    	<table border="1" width="1400">
    		<tr>
    			<td class="d">号牌号码</td>
    			<td class="d">车辆类型</td>
    			<td class="d">所有人</td>
    			<td class="d">住址</td>
    			<td class="d">品牌型号</td>
    			<td class="d">车辆识别码</td>
    			<td class="d">发动机号码</td>
    			<td class="d">注册日期</td>
    			<td class="d">发证日期</td>
    			<td class="d">签发机关</td>
    			<td class="d">操作</td>
    		</tr>
    		<c:forEach items="${driLicense}" var="dl">
    		<tr>
    			<td class="d2">${dl.plate_no }</td>
    			<td class="d2" style="width:95px;">${dl.vehicle_type }</td>
    			<td class="d2">${dl.owner }</td>
    			<td class="d2">${dl.address } </td>
    			<td class="d2">${dl.models }</td>
    			<td class="d2">${dl.vin }</td>
    			<td class="d2">${dl.engine_no }</td>
    			<td class="d2">${dl.register_date }</td>
    			<td class="d2">${dl.issue_date }</td>
    			<td class="d2">${dl.issued_by }</td>
    			<td class="d2"><a href="delete.do?drilicenseid=${dl.id}">删除</a></td>
    		</tr>
    		</c:forEach>
    	</table>
    	</c:if>
    	
    </div>
    	
  </body>
</html>
