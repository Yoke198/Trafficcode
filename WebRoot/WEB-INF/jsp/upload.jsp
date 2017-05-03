<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-form.js"></script>
    <script type="text/javascript" language="javascript">  
	  $(function(){
	  
	  	var i =3000;
	  	for(i=0;i<10;i++){
	  	setTimeout(function(){
	 	var time = setInterval(function(){
	 		 i-=1000;
	 		 console.info(i)
	 		 if(i<=1000){
	 		 	clearInterval(time);
	 		 }
	 	},1000)
	  	}, i*3000)
	  	}
	 });
    </script> 
  </head>
  
  <body>

  </body>
</html>
