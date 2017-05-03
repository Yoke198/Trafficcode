<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.cr {
			margin:50px auto;
			width:1000px;
			height:350px;
		}
		
		dl {
			width:450px;
			float:left;
		}
		
		dd {
		text-align: center;
		}
	</style>

  </head>
  
  <body>
  <!-- 
   -->
  <jsp:include page="head.jsp"></jsp:include>
  <c:if test="${page.totalPageCount==0}">
  <P style="margin-left:717px;font-size: 18px;">没找到匹配项</P>
  </c:if>
  <c:if test="${page.totalPageCount!=0}">
    	<div class="cr">
    <c:forEach items="${search}" var="cr">
    		<dl>
    			<dt><a href="${cr.crossType }?lightId=${cr.crossId }"><img style="width: 440px; height: 305px" src="img/${cr.crossImage}"></a></dt>
    			<dd><a href="${cr.crossType }?lightId=${cr.crossId }">${cr.crossRoadName }</a></dd>
    		</dl>
    </c:forEach>
    	</div>
    	

<!-- 分页功能 start -->  

    	
    <div style="margin-left: 626px;">  
        <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第  
            ${page.pageNow} 页</font> <a href="search.do?pageNow=1">首页</a>  
        <c:choose>  
            <c:when test="${page.pageNow - 1 > 0}">  
                <a href="search.do?pageNow=${page.pageNow - 1}" >上一页</a>  
            </c:when>  
            <c:when test="${page.pageNow - 1 <= 0}">  
                <a href="search.do?pageNow=1">上一页</a>  
            </c:when>  
        </c:choose>  
        <c:choose>  
            <c:when test="${page.totalPageCount==0}">  
                <a href="search.do?pageNow=${page.pageNow}">下一页</a>  
            </c:when>  
            <c:when test="${page.pageNow + 1 < page.totalPageCount}">  
                <a href="search.do?pageNow=${page.pageNow + 1}">下一页</a>  
            </c:when>  
            <c:when test="${page.pageNow + 1 >= page.totalPageCount}">  
                <a href="search.do?pageNow=${page.totalPageCount}">下一页</a>  
            </c:when>  
        </c:choose>  
                <a href="search.do?pageNow=${page.totalPageCount}">尾页</a>  
    </div>  
    <!-- 分页功能 End -->  
    </c:if>
  </body>
</html>
