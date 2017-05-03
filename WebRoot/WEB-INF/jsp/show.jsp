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
    
    <title>交通信号灯</title>
    
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
			width:950px;
			height:350px;
		}
		
		dl {
			width:450px;
			float:left;
		}
		
		dd {
			text-align: center;
		}
		
		.add {
			margin-left: 405px;
			background-color:#878787;
			padding:6px;
			color:white;
				
		}	
		.add:hover, a:focus {
		    color: white;
		    text-decoration: none;
		}	
	</style>

  </head>
  
  <body>
  <!-- 
   -->
  <jsp:include page="head.jsp"></jsp:include>
    <div class="cr">
    
    <c:forEach items="${products}" var="cr">
    		<dl>
    			<dt>
    			<c:if test="${cr.crossType == 'light.do' }">
    			<a href="${cr.crossType }?lightId=${cr.crossId }&lightImage=${cr.crossImage}&shangZgreen=${cr.shangZgreen}&shangZyellow=${cr.shangZyellow}
    			&shangLgreen=${cr.shangLgreen}&shangLyellow=${cr.shangLyellow}
    			&zuoZgreen=${cr.zuoZgreen}&zuoZyellow=${cr.zuoZyellow}
    			&zuoLgreen=${cr.zuoLgreen}&zuoLyellow=${cr.zuoLyellow}">
    			<img style="width: 440px; height: 305px"
    			 src="img/${cr.crossImage}"></a>
    			</c:if>
    			<c:if test="${cr.crossType == 'light2.do' }">
    			<a href="${cr.crossType }?lightId=${cr.crossId }&lightImage=${cr.crossImage}&shangZgreen=${cr.shangZgreen}&shangZyellow=${cr.shangZyellow}
    			&shangLgreen=${cr.shangLgreen}&shangLyellow=${cr.shangLyellow}
    			&zuoZgreen=${cr.zuoZgreen}&zuoZyellow=${cr.zuoZyellow}
    			&zuoLgreen=${cr.zuoLgreen}&zuoLyellow=${cr.zuoLyellow}
    			&xiaZgreen=${cr.xiaZgreen}&xiaZyellow=${cr.xiaZyellow}
    			&xiaLgreen=${cr.xiaLgreen}&xiaLyellow=${cr.xiaLyellow}
    			&youZgreen=${cr.youZgreen}&youZyellow=${cr.youZyellow}
    			&youLgreen=${cr.youLgreen}&youLyellow=${cr.youLyellow}">
    			<img style="width: 440px; height: 305px"
    			 src="img/${cr.crossImage}"></a>
    			</c:if>
    			<c:if test="${cr.crossType == 'light3.do' }">
    			<a href="${cr.crossType }?lightId=${cr.crossId }&lightImage=${cr.crossImage}&shangZgreen=${cr.shangZgreen}&shangZyellow=${cr.shangZyellow}
    			&zuoLgreen=${cr.zuoLgreen}&zuoLyellow=${cr.zuoLyellow}
    			&xiaZgreen=${cr.xiaZgreen}&xiaZyellow=${cr.xiaZyellow}">
    			<img style="width: 440px; height: 305px"
    			 src="img/${cr.crossImage}"></a>
    			</c:if>
    			 </dt>
    			<dd>
    			<c:if test="${cr.crossType == 'light.do' }">
    			<a href="${cr.crossType }?lightId=${cr.crossId }&lightImage=${cr.crossImage}&shangZgreen=${cr.shangZgreen}&shangZyellow=${cr.shangZyellow}
    			&shangLgreen=${cr.shangLgreen}&shangLyellow=${cr.shangLyellow}
    			&zuoZgreen=${cr.zuoZgreen}&zuoZyellow=${cr.zuoZyellow}
    			&zuoLgreen=${cr.zuoLgreen}&zuoLyellow=${cr.zuoLyellow}">
    			${cr.crossRoadName }</a>
    			</c:if>
    			<c:if test="${cr.crossType == 'light2.do' }">
    			<a href="${cr.crossType }?lightId=${cr.crossId }&lightImage=${cr.crossImage}&shangZgreen=${cr.shangZgreen}&shangZyellow=${cr.shangZyellow}
    			&shangLgreen=${cr.shangLgreen}&shangLyellow=${cr.shangLyellow}
    			&zuoZgreen=${cr.zuoZgreen}&zuoZyellow=${cr.zuoZyellow}
    			&zuoLgreen=${cr.zuoLgreen}&zuoLyellow=${cr.zuoLyellow}
    			&xiaZgreen=${cr.xiaZgreen}&xiaZyellow=${cr.xiaZyellow}
    			&xiaLgreen=${cr.xiaLgreen}&xiaLyellow=${cr.xiaLyellow}
    			&youZgreen=${cr.youZgreen}&youZyellow=${cr.youZyellow}
    			&youLgreen=${cr.youLgreen}&youLyellow=${cr.youLyellow}">
    			${cr.crossRoadName }</a>
    			</c:if>
    			<c:if test="${cr.crossType == 'light3.do' }">
    			<a href="${cr.crossType }?lightId=${cr.crossId }&lightImage=${cr.crossImage}&shangZgreen=${cr.shangZgreen}&shangZyellow=${cr.shangZyellow}
    			&zuoLgreen=${cr.zuoLgreen}&zuoLyellow=${cr.zuoLyellow}
    			&xiaZgreen=${cr.xiaZgreen}&xiaZyellow=${cr.xiaZyellow}">
    			${cr.crossRoadName }</a>
    			 </c:if>
    			</dd>
    		</dl>
    </c:forEach>
    
    <a href="addRoadView.do" id="add" class="add">添加路口</a>
    
    </div>
    	
<!-- 分页功能 start -->  
    <div style="margin-left: 626px;">  
        <font>第${page.pageNow}页</font> 
        <c:choose>  
            <c:when test="${page.pageNow - 1 > 0}">  
                <a href="show.do?pageNow=${page.pageNow - 1}" >上一页</a>  
            </c:when>  
            <c:when test="${page.pageNow - 1 <= 0}">  
                <a style="color:black;text-decoration:none;" href="show.do?pageNow=1">上一页</a>  
            </c:when>  
        </c:choose>
        
        <c:forEach var="i" begin="1" end="${page.totalPageCount}">
        <c:choose>
        	<c:when test="${i == page.pageNow}">
        		<a style="color:red;text-decoration:none;">${i}</a>
        	</c:when>
        	<c:otherwise>
        		<a href="show.do?pageNow=${i}">${i }</a>
        	</c:otherwise>
        </c:choose>	
        </c:forEach>
          
        <c:choose>  
            <c:when test="${page.totalPageCount==0}">  
                <a href="show.do?pageNow=${page.pageNow}">下一页</a>  
            </c:when>  
            <c:when test="${page.pageNow + 1 < page.totalPageCount}">  
                <a href="show.do?pageNow=${page.pageNow + 1}">下一页</a>  
            </c:when>  
            <c:when test="${page.pageNow + 1 >= page.totalPageCount}">  
                <a style="color:black;text-decoration:none;" href="show.do?pageNow=${page.totalPageCount}">下一页</a>  
            </c:when>  
        </c:choose>  
    </div>  
    <!-- 分页功能 End -->  
  </body>
</html>
