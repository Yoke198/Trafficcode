<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>测试验证码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script language="javascript">  
	  function myReload() {  
		   document.getElementById("CreateCheckCode").src = document  
		           .getElementById("CreateCheckCode").src  
		            + "?nocache=" + new Date().getTime();  
				}  
	</script> 	
  </head>
  
  <body>
    <form action="Check.jsp" method="post">  
            <input name="checkCode" type="text" id="checkCode" title="验证码区分大小写"  
                size="8" ,maxlength="4" />  
            <img src="PictureCheckCode" id="CreateCheckCode" align="middle">  
            <a href="" onclick="myReload()"> 看不清,换一个</a>  
            <input type="submit" value="提交" />  
        </form>
  </body>
</html>
