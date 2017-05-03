<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>交通信号灯管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/light2.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- 
	<script type="text/javascript" src="js/light2.js"></script>
	 -->
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
	<script type="text/javascript">
	$(document).ready(function(){
	
	<%  
		String ishangZgreen = request.getParameter("shangZgreen");
		String ishangZyellow = request.getParameter("shangZyellow");
		String ishangLgreen = request.getParameter("shangLgreen");
		String ishangLyellow = request.getParameter("shangLyellow");
		String izuoZgreen = request.getParameter("zuoZgreen");
		String izuoZyellow = request.getParameter("zuoZyellow");
		String izuoLgreen = request.getParameter("zuoLgreen");
		String izuoLyellow = request.getParameter("zuoLyellow");
		String ixiaZgreen = request.getParameter("xiaZgreen");
		String ixiaZyellow = request.getParameter("xiaZyellow");
		String ixiaLgreen = request.getParameter("xiaLgreen");
		String ixiaLyellow = request.getParameter("xiaLyellow");
		String iyouZgreen = request.getParameter("youZgreen");
		String iyouZyellow = request.getParameter("youZyellow");
		String iyouLgreen = request.getParameter("youLgreen");
		String iyouLyellow = request.getParameter("youLyellow");
	%>
		
		var shangZgreen = parseInt('<%=ishangZgreen%>')
		var shangZyellow= parseInt('<%=ishangZyellow%>')
		var shangLgreen= parseInt('<%=ishangLgreen%>')
		var shangLyellow= parseInt('<%=ishangLyellow%>')
		var zuoZgreen= parseInt('<%=izuoZgreen%>')
		var zuoZyellow= parseInt('<%=izuoZyellow%>')
		var zuoLgreen= parseInt('<%=izuoLgreen%>')
		var zuoLyellow= parseInt('<%=izuoLyellow%>')
		var xiaZgreen = parseInt('<%=ixiaZgreen%>')
		var xiaZyellow= parseInt('<%=ixiaZyellow%>')
		var xiaLgreen= parseInt('<%=ixiaLgreen%>')
		var xiaLyellow= parseInt('<%=ixiaLyellow%>')
		var youZgreen= parseInt('<%=iyouZgreen%>')
		var youZyellow= parseInt('<%=iyouZyellow%>')
		var youLgreen= parseInt('<%=iyouLgreen%>')
		var youLyellow= parseInt('<%=iyouLyellow%>')
	
	/**
	 * lightDiv直行红绿灯	上
	 *
	 *
	 *上边直行绿灯(shangZgreen) 自定义
	 *
	 *上边直行黄灯(shangZyellow) 自定义
	 *
	 *上边直行红灯时间(shangZred)=上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *+左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)+左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)+下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *+右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)+右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 *
	 *上边直行周期(shangZtime)=shangZgreen+shangZyellow+shangZred
	 *
	 */
	var ss2=0;
	var time3=1;
	var time4=1;
	var light2=document.getElementById("yellow");
	var lightImg2=["images/yellow.jpg","images/redleftjt.jpg","images/greenjt.jpg"];
	
	var shangZred=(shangLgreen+shangLyellow
	 +zuoZgreen+zuoZyellow+zuoLgreen+zuoLyellow
	 +xiaZgreen+xiaZyellow+xiaLgreen+xiaLyellow
	 +youZgreen+youZyellow+youLgreen+youLyellow)//上边直行红灯时间
	 
	 var shangZtime=(shangZgreen+shangZyellow+shangZred)//上边直行周期
	
	function f2(){
				//上边直行绿灯倒计时
				var shangzgreen = shangZgreen;
	 			$("#gtime").show();
				document.getElementById("gtime").innerHTML=(shangzgreen/1000);//延迟一秒
	 			var gtime = setInterval(function(){
		 		 	shangzgreen-=1000;
	 				document.getElementById("gtime").innerHTML=(shangzgreen/1000);
		 		 if(shangzgreen<=0){
		 		 	$("#gtime").hide();
		 		 	clearInterval(gtime);
		 		 }
		 	},1000)//shangzgreenEND
		
 		setTimeout(function(){
	 				//上边直行黄灯倒计时
					var shangzyellow = shangZyellow;
		 			$("#ytime").show();//先显示后倒计时
		 			document.getElementById("ytime").innerHTML=(shangzyellow/1000);
		 			var ytime = setInterval(function(){
			 		 	shangzyellow-=1000;
		 				document.getElementById("ytime").innerHTML=(shangzyellow/1000);
			 		 if(shangzyellow<=0){
			 		 	$("#ytime").hide();
			 		 	clearInterval(ytime);
			 		 }
			 	},1000)//shangzyellowEND
 			light2.style.backgroundImage="url("+lightImg2[0]+")"
 			
 		setTimeout(function(){
 				
 			light2.style.backgroundImage="url("+lightImg2[1]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[2]+")"
 			  time3++
 			  
 			},shangZred)//上边直行红灯时间
 		},shangZyellow)//上边直行黄灯
 	  },shangZgreen)//上边直行绿灯
		
	}

	function ff2(){
		var intervalss = setInterval(function(){
			f2();
			setTimeout(function(){
				time4++;
			},0)
				ss2++;
			if(ss2 == time4){
				clearInterval(intervalss)
				}
		}, 0000);
		}//与f2()同时触发
	
	ff2();//函数
	
	for(var l2=0;l2<3;l2++){
		setInterval(function(){
			if((ss2+1) == time3){
				ff2();
			}
		},l2*shangZtime)//上边直行周期
		}
	
	/**
	 * lightDiv2左转红绿灯		上
	 *
	 *
	 *上边左转红灯时间1(shangLred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)		
	 *
	 *上边左转绿灯(shangLgreen) 自定义
	 *
	 *上边左转黄灯(shangLyellow) 自定义
	 *
	 *上边左转再次红灯2(shangLred2)=
	 *左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)+左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)+下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *+右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)+右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 *
	 *上边左转周期(shangLtime)=shangLred1+shangLgreen+shangLyellow+shangLred2
	 *
	 */
	var ss=0;
	var time1=1;
	var time2=1;
	var light=document.getElementById("red");
	var lightImg=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	var shangLred1=(shangZgreen+shangZyellow)//上边左转红灯时间1
	
	var shangLred2=(zuoZgreen+zuoZyellow+zuoLgreen+zuoLyellow
	 +xiaZgreen+xiaZyellow+xiaLgreen+xiaLyellow
	 +youZgreen+youZyellow+youLgreen+youLyellow)//上边左转再次红灯2
	 
	var shangLtime=(shangLred1+shangLgreen+shangLyellow+shangLred2)//上边左转周期
	
	function f(){
	
		setTimeout(function(){
				//上边左转绿灯倒计时
				var shangzgreen = shangLgreen;
	 			$("#ytime").hide();
	 			$("#gtime").show();
				document.getElementById("gtime").innerHTML=(shangzgreen/1000);//延迟一秒
	 			var gtime = setInterval(function(){
		 		 	shangzgreen-=1000;
	 				document.getElementById("gtime").innerHTML=(shangzgreen/1000);
		 		 if(shangzgreen<=0){
		 		 	$("#gtime").hide();
		 		 	clearInterval(gtime);
		 		 }
		 	},1000)//shanglgreenEND
			 light.style.backgroundImage="url("+lightImg[0]+")"
			 
		setTimeout(function(){
					//上边左转黄灯倒计时
					var shangzyellow = shangLyellow;
		 			$("#ytime").show();//先显示后倒计时
		 			document.getElementById("ytime").innerHTML=(shangzyellow/1000);
		 			var ytime = setInterval(function(){
			 		 	shangzyellow-=1000;
		 				document.getElementById("ytime").innerHTML=(shangzyellow/1000);
			 		 if(shangzyellow<=0){
			 		 	$("#ytime").hide();
			 		 	clearInterval(ytime);
			 		 }
			 	},1000)//shanglyellowEND
			 light.style.backgroundImage="url("+lightImg[1]+")"
					
		setTimeout(function(){
	 				//上边左转红灯倒计时
					var shangzred = shangLred2;
					
		 			$("#rtime").show();//先显示后倒计时
		 			document.getElementById("rtime").innerHTML=(shangzred/1000);
		 			var rtime = setInterval(function(){
			 		 	shangzred-=1000;
		 				document.getElementById("rtime").innerHTML=(shangzred/1000);
			 		 if(shangzred<=0){
			 		 	$("#rtime").hide();
			 		 	clearInterval(rtime);
			 		 }
			 	},1000)//shanglredEND
			 light.style.backgroundImage="url("+lightImg[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			  time1++
						},shangLred2)//上边左转再次红灯2 
			 		},shangLyellow) /上边左转黄灯
			 	},shangLgreen);//上边左转绿灯
		     },shangLred1)//上边左转红灯时间1
		     
	}//function f() END
	
	//判断time1是否已经自增
	function ff(){
		var intervalss = setInterval(function(){
			
			f();//函数
			
			setTimeout(function(){
				time2++;
			},0)
			
				ss++;
			
			if(ss == time2){
				clearInterval(intervalss)
				}
			
		}, 0000);//与f()同时触发
	}
	
	//执行函数
	ff();
	
	 //循环function ff()
	for(var l=0;l<3;l++){
		setInterval(function(){
			if((ss+1) == time1){
				ff();
			}
		},l*shangLtime)//上边左转周期
	}	
	
	/**
	 * light2Div直行红绿灯	下
	 *
	 *
	 *下边直行红灯1(xiaZred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)+上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *+左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)+左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *
	 *下边直行绿灯(xiaZgreen) 自定义
	 *
	 *下边直行黄灯(xiaZyellow) 自定义
	 *
	 *下边直行再次红灯2(xiaZred2)=下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *+右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)+右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 *
	 *下边直行周期(xiaZtime)=xiaZred1+xiaZgreen+xiaZyellow+xiaZred2
	 *
	 *
	 */
	var ss3=0;
	var time5=1;
	var time6=1;
	var light3=document.getElementById("yellow2");
	var lightImg3=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	var xiaZred1=(shangZgreen+shangZyellow+shangLgreen+shangLyellow
	 +zuoZgreen+zuoZyellow+zuoLgreen+zuoLyellow)//下边直行红灯1
	 
	var xiaZred2=(xiaLgreen+xiaLyellow
	  +youZgreen+youZyellow+youLgreen+youLyellow)//下边直行再次红灯2
	  
	var xiaZtime=(xiaZred1+xiaZgreen+xiaZyellow+xiaZred2)//下边直行周期
	
	function f3(){
				//下边直行红灯倒计时
				var xiazred1 = xiaZred1;
				$("#xiartime").show();
				$("#xiagtime").hide();
				$("#xiaytime").hide();
				document.getElementById("xiartime").innerHTML=(xiazred1/1000);//延迟一秒
	 			var xiagtime = setInterval(function(){
		 		 	xiazred1-=1000;
	 				document.getElementById("xiartime").innerHTML=(xiazred1/1000);
		 		 if(xiazred1<=0){
		 		 	$("#xiartime").hide();
		 		 	clearInterval(xiagtime);
		 		 }
		 	},1000)//xiazredEND
 		setTimeout(function(){
 				//下边直行绿灯倒计时
				var xiazgreen = xiaZgreen;
	 			$("#xiagtime").show();
				document.getElementById("xiagtime").innerHTML=(xiazgreen/1000);//延迟一秒
	 			var xiagtime = setInterval(function(){
		 		 	xiazgreen-=1000;
	 				document.getElementById("xiagtime").innerHTML=(xiazgreen/1000);
		 		 if(xiazgreen<=0){
		 		 	$("#xiagtime").hide();
		 		 	clearInterval(xiagtime);
		 		 }
		 	},1000)//xiazgreenEND
 			light3.style.backgroundImage="url("+lightImg3[0]+")"
 			
 		setTimeout(function(){
 				//下边直行黄倒计时
				var xiazyellow = xiaZyellow;
	 			$("#xiaytime").show();
				document.getElementById("xiaytime").innerHTML=(xiazyellow/1000);//延迟一秒
	 			var xiaytime = setInterval(function(){
		 		 	xiazyellow-=1000;
	 				document.getElementById("xiaytime").innerHTML=(xiazyellow/1000);
		 		 if(xiazyellow<=0){
		 		 	$("#xiaytime").hide();
		 		 	clearInterval(xiaytime);
		 		 }
		 	},1000)//xiazyellowEND
 			light3.style.backgroundImage="url("+lightImg3[1]+")"
 			
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[2]+")"
 			
 		setTimeout(function(){
 			
 			  time5++
 				},xiaZred2)//下边直行再次红灯2
 			},xiaZyellow)//下边直行黄灯
 		},xiaZgreen)//下边直行绿灯
 	  },xiaZred1)//下边直行红灯1 
		
	}

	function ff3(){
		var intervalss = setInterval(function(){
			f3();
			setTimeout(function(){
				time6++;
			},0)
				ss3++;
			if(ss3 == time6){
				clearInterval(intervalss)
				}
		}, 0000);
		}//与f2()同时触发
	
	ff3();//函数
	
	for(var l3=0;l3<3;l3++){
		setInterval(function(){
			if((ss3+1) == time5){
				ff3();
			}
		},l3*xiaZtime)//下边直行周期 
		}

	/**
	 * light2Div2左转红绿灯	下
	 *
	 *
	 *下边左转红灯1(xiaLred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)+上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *+左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)+左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)
	 *
	 *下边左转绿灯(xiaLgreen) 自定义
	 *
	 *下边左转黄灯(xiaLyellow) 自定义
	 *
	 *下边左转再次红灯2(xiaLred2)=右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)+右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 *
	 *下边左转周期(xiaLtime)=xiaLred1+xiaLgreen+xiaLyellow+xiaLred2
	 *
	 *
	 */
	var ss4=0;
	var time7=1;
	var time8=1;
	var light4=document.getElementById("green2");
	var lightImg4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	var xiaLred1=(shangZgreen+shangZyellow+shangLgreen+shangLyellow
	  +zuoZgreen+zuoZyellow+zuoLgreen+zuoLyellow
	  +xiaZgreen+xiaZyellow)//下边左转红灯1
	  
	var xiaLred2=(youZgreen+youZyellow+youLgreen+youLyellow)//下边左转再次红灯2
	var xiaLtime=(xiaLred1+xiaLgreen+xiaLyellow+xiaLred2)//下边左转周期
	
	function f4(){
		setTimeout(function(){
				//下边左转绿灯倒计时
				var xialgreen = xiaLgreen;
	 			$("#xiagtime").show();
				document.getElementById("xiagtime").innerHTML=(xialgreen/1000);//延迟一秒
	 			var xiagtime = setInterval(function(){
		 		 	xialgreen-=1000;
	 				document.getElementById("xiagtime").innerHTML=(xialgreen/1000);
		 		 if(xialgreen<=0){
		 		 	$("#xiagtime").hide();
		 		 	clearInterval(xiagtime);
		 		 }
		 	},1000)//xialgreenEND
			 light4.style.backgroundImage="url("+lightImg4[0]+")"
			 
		setTimeout(function(){
				//下边左转黄灯倒计时
				var xialyellow = xiaLyellow;
	 			$("#xiaytime").show();
				document.getElementById("xiaytime").innerHTML=(xialyellow/1000);//延迟一秒
	 			var xiaytime = setInterval(function(){
		 		 	xialyellow-=1000;
	 				document.getElementById("xiaytime").innerHTML=(xialyellow/1000);
		 		 if(xialyellow<=0){
		 		 	$("#xiaytime").hide();
		 		 	clearInterval(xiaytime);
		 		 }
		 	},1000)//xialyellowEND
			 light4.style.backgroundImage="url("+lightImg4[1]+")"
					
		setTimeout(function(){
				//下边左转再次红灯倒计时
				var xialred2 = xiaZred1+xiaZred2-xiaZgreen-xiaZyellow;
	 			$("#xiartime").show();
				document.getElementById("xiartime").innerHTML=(xialred2/1000);//延迟一秒
	 			var xiartime = setInterval(function(){
		 		 	xialred2-=1000;
	 				document.getElementById("xiartime").innerHTML=(xialred2/1000);
		 		 if(xialred2<=xiaZred1){
		 		 	clearInterval(xiartime);
		 		 }
		 	},1000)//xialred2END
			 light4.style.backgroundImage="url("+lightImg4[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			  time7++
						},xiaLred2)//下边左转再次红灯2 
			 		},xiaLyellow)//下边左转黄灯
			 	},xiaLgreen);//下边左转绿灯
		     },xiaLred1)//下边左转红灯1
		     
	}//function f() END
	
	//判断time1是否已经自增
	function ff4(){
		var intervalss = setInterval(function(){
			
			f4();//函数
			
			setTimeout(function(){
				time8++;
			},0)
			
				ss4++;
			
			if(ss4 == time8){
				clearInterval(intervalss)
				}
			
		}, 0000);//与f()同时触发
	}
	
	//执行函数
	ff4();
	
	 //循环function ff()
	for(var l4=0;l4<3;l4++){
		setInterval(function(){
			if((ss4+1) == time7){
				ff4();
			}
		},l4*xiaLtime)//下行左转周期
	}	
	
	/**
	 * TlightDiv直行红绿灯  左
	 *
	 *
	 *左边直行红灯1(zuoZred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)+上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *
	 *左边直行绿灯(zuoZgreen) 自定义
	 *
	 *左边直行黄灯(zuoZyellow) 自定义
	 *
	 *左边直行再次红灯2(zuoZred2)=左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)+下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *+右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)+右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 * 
	 *左边直行周期(zuoZtime)=zuoZred1+zuoZgreen+zuoZyellow+zuoZred2
	 *
	 */
	var sy3=0;
	var timer5=1;
	var timer6=1;
	var lightr3=document.getElementById("yellow4");
	var lightImgr3=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	var zuoZred1=(shangZgreen+shangZyellow+shangLgreen+shangLyellow)//左边直行红灯1
	var zuoZred2=(zuoLgreen+zuoLyellow+xiaZgreen+xiaZyellow+xiaLgreen+xiaLyellow
		+youZgreen+youZyellow+youLgreen+youLyellow)//左边直行再次红灯2
	var zuoZtime=(zuoZred1+zuoZgreen+zuoZyellow+zuoZred2)//左边直行周期
	
	function f5(){
	
			//左边直行红灯倒计时
			var zuozred1 = zuoZred1;
			$("#zuoytime").hide();
			$("#zuortime").show();
			document.getElementById("zuortime").innerHTML=(zuozred1/1000);//延迟一秒
 			var zuortime = setInterval(function(){
	 		 	zuozred1-=1000;
 				document.getElementById("zuortime").innerHTML=(zuozred1/1000);
	 		 if(zuozred1<=0){
	 		 	$("#zuortime").hide();
	 		 	clearInterval(zuortime);
	 		 }
	 	},1000)//zuozredEND
	 	
 		setTimeout(function(){
 		
 			//左边直行绿灯倒计时
			var zuozgreen = zuoZgreen;
			$("#zuogtime").show();
			document.getElementById("zuogtime").innerHTML=(zuozgreen/1000);//延迟一秒
 			var zuogtime = setInterval(function(){
	 		 	zuozgreen-=1000;
 				document.getElementById("zuogtime").innerHTML=(zuozgreen/1000);
	 		 if(zuozgreen<=0){
	 		 	$("#zuogtime").hide();
	 		 	clearInterval(zuogtime);
	 		 }
	 	},1000)//zuozredEND
 		
 			lightr3.style.backgroundImage="url("+lightImgr3[0]+")"
 			
 		setTimeout(function(){
 				//左边直行黄灯倒计时
				var zuozyellow = zuoZyellow;
				$("#zuoytime").show();
				document.getElementById("zuoytime").innerHTML=(zuozyellow/1000);//延迟一秒
	 			var zuoytime = setInterval(function(){
		 		 	zuozyellow-=1000;
	 				document.getElementById("zuoytime").innerHTML=(zuozyellow/1000);
		 		 if(zuozyellow<=0){
		 		 	$("#zuoytime").hide();
		 		 	clearInterval(zuoytime);
		 		 }
		 	},1000)//zuozyellowEND
 			lightr3.style.backgroundImage="url("+lightImgr3[1]+")"
 			
 		setTimeout(function(){
 			
 			lightr3.style.backgroundImage="url("+lightImgr3[2]+")"
 			
 		setTimeout(function(){
 			
 			timer5++
 				},zuoZred2)//左边直行再次红灯2
 			},zuoZyellow)//左边直行黄灯
 		},zuoZgreen)//左边直行绿灯
 	  },zuoZred1)//左边直行红灯1
		
	}

	function ff5(){
		var intervalss = setInterval(function(){
			f5();
			setTimeout(function(){
				timer6++;
			},0)
				sy3++;
			if(sy3 == timer6){
				clearInterval(intervalss)
				}
		}, 0000);
		}//与f2()同时触发
	
	ff5();//函数
	
	for(var lr3=0;lr3<3;lr3++){
		setInterval(function(){
			if((sy3+1) == timer5){
				ff5();
			}
		},lr3*zuoZtime)//左边直行周期
		}

	/**
	 * TlightDiv2左转红绿灯	左
	 *
	 *
	 *左边左转红灯1(zuoLred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)+上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *+左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)
	 *
	 *左边左转绿灯(zuoLgreen) 自定义
	 *
	 *左边左转黄灯(zuoLyellow) 自定义
	 *
	 *左边左转再次红灯2(zuoLred2)=下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)+下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *+右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)+右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 *
	 *左边左转周期(zuoLtime)=zuoLred1+zuoLgreen+zuoLyellow+zuoLred2
	 *
	 *
	 */
	var sy4=0;
	var timer7=1;
	var timer8=1;
	var lightr4=document.getElementById("red4");
	var lightImgr4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	var zuoLred1=(shangZgreen+shangZyellow+shangLgreen+shangLyellow
	  +zuoZgreen+zuoZyellow)//左边左转红灯1
	  
	var zuoLred2=(xiaZgreen+xiaZyellow+xiaLgreen+xiaLyellow
	  +youZgreen+youZyellow+youLgreen+youLyellow)//左边左转再次红灯2
	  
	var zuoLtime=(zuoLred1+zuoLgreen+zuoLyellow+zuoLred2)//左边左转周期  
	
	function f6(){
		setTimeout(function(){
				//左边左转绿灯倒计时
				var zuozgreen = zuoZgreen;
				$("#zuogtime").show();
				document.getElementById("zuogtime").innerHTML=(zuozgreen/1000);//延迟一秒
	 			var zuogtime = setInterval(function(){
		 		 	zuozgreen-=1000;
	 				document.getElementById("zuogtime").innerHTML=(zuozgreen/1000);
		 		 if(zuozgreen<=0){
		 		 	$("#zuogtime").hide();
		 		 	clearInterval(zuogtime);
		 		 }
		 	},1000)//zuolgreenEND
			lightr4.style.backgroundImage="url("+lightImgr4[0]+")"
			 
		setTimeout(function(){
				//左边左转黄灯倒计时
				var zuozyellow = zuoZyellow;
				$("#zuoytime").show();
				document.getElementById("zuoytime").innerHTML=(zuozyellow/1000);//延迟一秒
	 			var zuoytime = setInterval(function(){
		 		 	zuozyellow-=1000;
	 				document.getElementById("zuoytime").innerHTML=(zuozyellow/1000);
		 		 if(zuozyellow<=0){
		 		 	$("#zuoytime").hide();
		 		 	clearInterval(zuoytime);
		 		 }
		 	},1000)//zuolyellowEND
			lightr4.style.backgroundImage="url("+lightImgr4[1]+")"
					
		setTimeout(function(){
					//左边左转红灯倒计时
					var zuolred = zuoLred2+zuoLred1-zuoZgreen-zuoZyellow;
					
		 			$("#zuortime").show();//先显示后倒计时
		 			document.getElementById("zuortime").innerHTML=(zuolred/1000);
		 			var zuortime = setInterval(function(){
			 		 	zuolred-=1000;
		 				document.getElementById("zuortime").innerHTML=(zuolred/1000);
			 		 if(zuolred<=zuoZred1){
			 		 	$("#zuortime").hide();
			 		 	clearInterval(zuortime);
			 		 }
			 	},1000)//shanglredEND
			lightr4.style.backgroundImage="url("+lightImgr4[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
				timer7++
						},zuoLred2)//左边左转再次红灯2 
			 		},zuoLyellow) //左边左转
			 	},zuoLgreen);//左边左转绿灯
		     },zuoLred1)//左边左转红灯1
		     
	}//function f() END
	
	//判断time1是否已经自增
	function ff6(){
		var intervalss = setInterval(function(){
			
			f6();//函数
			
			setTimeout(function(){
				timer8++;
			},0)
			
				sy4++;
			
			if(sy4 == timer8){
				clearInterval(intervalss)
				}
			
		}, 0000);//与f()同时触发
	}
	
	//执行函数
	ff6();
	
	 //循环function ff()
	for(var lr4=0;lr4<3;lr4++){
		setInterval(function(){
			if((sy4+1) == timer7){
				ff6();
			}
		},lr4*zuoLtime)//左边左转周期
	}	
	
	/**
	 * Tlight2Div直行红绿灯  右
	 *
	 *
	 *右边直行红灯1(youZred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)+上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *+左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)+左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)+下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *
	 *右边直行绿灯(youZgreen) 自定义
	 *
	 *右边直行黄灯(youZyellow) 自定义
	 *
	 *右边直行再次红灯2(youZred2)=右边左转绿灯(youLgreen)+右边左转黄灯(youLyellow)
	 *
	 *右边直行周期(youZtime)=youZred1+youZgreen+youZyellow+youZred2
	 *
	 *
	 */
	var sl3=0;
	var timel5=1;
	var timel6=1;
	var lightl3=document.getElementById("yellow3");
	var lightImgl3=["images/greenleftjt.jpg","images/yellow.jpg","images/redjt.jpg"];
	
	var youZred1=(shangZgreen+shangZyellow+shangLgreen+shangLyellow
	  +zuoZgreen+zuoZyellow+zuoLgreen+zuoLyellow
	  +xiaZgreen+xiaZyellow+xiaLgreen+xiaLyellow)//右边直行红灯1
	  
	var youZred2=(youLgreen+youLyellow)//右边直行再次红灯2
	var youZtime=(youZred1+youZgreen+youZyellow+youZred2)//右边直行周期
	
	function fl5(){
			//右边直行红灯倒计时
			var youzred1 = youZred1;
			$("#yougtime").hide();
			$("#youytime").hide();
			$("#yourtime").show();
			document.getElementById("yourtime").innerHTML=(youzred1/1000);//延迟一秒
 			var yourtime = setInterval(function(){
	 		 	youzred1-=1000;
 				document.getElementById("yourtime").innerHTML=(youzred1/1000);
	 		 if(youzred1<=0){
	 		 	$("#yourtime").hide();
	 		 	clearInterval(yourtime);
	 		 }
	 	},1000)//youzredEND
 		setTimeout(function(){
 				//右边直行绿灯倒计时
				var youzgreen = youZgreen;
				$("#yougtime").show();
				document.getElementById("yougtime").innerHTML=(youzgreen/1000);//延迟一秒
	 			var yougtime = setInterval(function(){
		 		 	youzgreen-=1000;
	 				document.getElementById("yougtime").innerHTML=(youzgreen/1000);
		 		 if(youzgreen<=0){
		 		 	$("#yougtime").hide();
		 		 	clearInterval(yougtime);
		 		 }
		 	},1000)//youzgreenEND
 			lightl3.style.backgroundImage="url("+lightImgl3[0]+")"
 			
 		setTimeout(function(){
 				//右边直行黄灯倒计时
				var youzyellow = youZyellow;
				$("#youytime").show();
				document.getElementById("youytime").innerHTML=(youzyellow/1000);//延迟一秒
	 			var youytime = setInterval(function(){
		 		 	youzyellow-=1000;
	 				document.getElementById("youytime").innerHTML=(youzyellow/1000);
		 		 if(youzyellow<=0){
		 		 	$("#youytime").hide();
		 		 	clearInterval(youytime);
		 		 }
		 	},1000)//youzyellowEND
 			lightl3.style.backgroundImage="url("+lightImgl3[1]+")"
 			
 		setTimeout(function(){
 				
 			lightl3.style.backgroundImage="url("+lightImgl3[2]+")"
 			
 		setTimeout(function(){
 			
 			timel5++
 				},youZred2)//右边直行再次红灯2	
 			},youZyellow)//右边直行黄灯
 		},youZgreen)//右边直行绿灯
 	  },youZred1)//右边直行红灯1 
		
	}

	function ffl5(){
		var intervalss = setInterval(function(){
			fl5();
			setTimeout(function(){
				timel6++;
			},0)
				sl3++;
			if(sl3 == timel6){
				clearInterval(intervalss)
				}
		}, 0000);
		}//与f2()同时触发
	
	ffl5();//函数
	
	for(var ll3=0;ll3<3;ll3++){
		setInterval(function(){
			if((sl3+1) == timel5){
				ffl5();
			}
		},ll3*youZtime)//右边直行周期
		}

	/**
	 * Tlight2Div2左转红绿灯	右
	 *
	 *
	 *右边左转红灯1(youLred1)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)+上边左转绿灯(shangLgreen)+上边左转黄灯(shangLyellow)
	 *+左边直行绿灯(zuoZgreen)+左边直行黄灯(zuoZyellow)+左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)+下边左转绿灯(xiaLgreen)+下边左转黄灯(xiaLyellow)
	 *+右边直行绿灯(youZgreen)+右边直行黄灯(youZyellow)
	 *
	 *右边左转绿灯(youLgreen) 自定义
	 *
	 *右边左转黄灯(youLyellow) 自定义
	 *
	 *右边左转周期(youLtime)=youLred1+youLgreen+youLyellow
	 *
	 *
	 */
	var sr4=0;
	var timez7=1;
	var timez8=1;
	var lightz4=document.getElementById("green3");
	var lightImgz4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	var youLred1=(shangZgreen+shangZyellow+shangLgreen+shangLyellow
	  +zuoZgreen+zuoZyellow+zuoLgreen+zuoLyellow
	  +xiaZgreen+xiaZyellow+xiaLgreen+xiaLyellow
	  +youZgreen+youZyellow)//右边左转红灯1
	
	var youLtime = (youLred1+youLgreen+youLyellow)//右边左转周期
	
	function fz6(){
		setTimeout(function(){
				//右边左转绿灯倒计时
				var youlgreen = youLgreen;
				$("#yougtime").show();
				document.getElementById("yougtime").innerHTML=(youlgreen/1000);//延迟一秒
	 			var yougtime = setInterval(function(){
		 		 	youlgreen-=1000;
	 				document.getElementById("yougtime").innerHTML=(youlgreen/1000);
		 		 if(youlgreen<=0){
		 		 	$("#yougtime").hide();
		 		 	clearInterval(yougtime);
		 		 }
		 	},1000)//youlgreenEND
			lightz4.style.backgroundImage="url("+lightImgz4[0]+")"
			 
		setTimeout(function(){
				//右边左转黄灯倒计时
				var youlyellow = youLyellow;
				$("#youytime").show();
				document.getElementById("youytime").innerHTML=(youlyellow/1000);//延迟一秒
	 			var youytime = setInterval(function(){
		 		 	youlyellow-=1000;
	 				document.getElementById("youytime").innerHTML=(youlyellow/1000);
		 		 if(youlyellow<=0){
		 		 	$("#youytime").hide();
		 		 	clearInterval(youytime);
		 		 }
		 	},1000)//youlgreenEND
			lightz4.style.backgroundImage="url("+lightImgz4[1]+")"
					
		setTimeout(function(){
			lightz4.style.backgroundImage="url("+lightImgz4[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			timez7++
						}) 
			 		},youLyellow) //右边左转黄灯
			 	},youLgreen);//右边左转绿灯
		     },youLred1)//右边左转红灯1
		     
	}//function f() END
	
	//判断time1是否已经自增
	function ffz6(){
		var intervalss = setInterval(function(){
			
			fz6();//函数
			
			setTimeout(function(){
				timez8++;
			},0)
			
				sr4++;
			
			if(sr4 == timez8){
				clearInterval(intervalss)
				}
			
		}, 0000);//与f()同时触发
	}
	
	//执行函数
	ffz6();
	
	 //循环function ff()
	for(var lr4=0;lr4<3;lr4++){
		setInterval(function(){
			if((sr4+1) == timez7){
				ffz6();
			}
		},lr4*youLtime)//右边左转周期
	}
	
	/**
	 * 隐藏div
	 */
	$("#changeRoad").hide();
	$("#des").hide();
	$("#change").click(function(){
		
		$("#detail").hide();
		$("#changeRoad").show();
		$("#des").show();
		
	})	
	
	/**
	 *
	 *交汇路口类型
	 *
	 */
	 $("input[type='radio']").each(function(){
	 	if($(this).is(":checked")){
	 		$(".shuang").hide();
	 		$(".san").hide();
	 		$(".shuang input").attr("disabled",true);
	 		$(".san input").attr("disabled",true);
	 		}
	 })
	 
		//点击双向对行
		$("#shuang").click(function(){
			$(".shuang").show();
			$("#des").hide();
			$(".dan").hide();
			$(".san").hide();
			$(".shuang input").attr("disabled",false);
			$(".dan input").attr("disabled",true);
			$(".san input").attr("disabled",true);
		})
		
		//点击单路口通行
		$("#dan").click(function(){
			$(".dan").show();
			$("#des").show();
			$(".shuang").hide();
			$(".san").hide();
			$(".dan input").attr("disabled",false);
			$(".shuang input").attr("disabled",true);
			$(".san input").attr("disabled",true);
		})
		
		//点击三叉路口
		$("#san").click(function(){
			$(".san").show();
			$("#des").hide();
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
    <div class="crossroads">
    
    <div class="title2">单路口通行</div>
    
     <div class="cross_div">
     
     	 <div class="test"></div>
     	 <div class="test2"></div>
     	 <div class="test3"></div>
     	 <div class="test4"></div>
     	 <div class="test5"></div>
     	 <div class="test6"></div>
     	 <div class="test7"></div>
     	 <div class="test8"></div>
     	 
   		 <div class="light" id="light">
   		 	<div id="red" class="red"></div>
   		 	<div style="width:20px;height:20px;
   		 	margin-top:2px;margin-bottom:2px;transform:rotate(90deg);position: relative;">
   		 	<span id="gtime" style="padding-left:2px;color:green"></span>
   		 	<span id="ytime" style="padding-left:2px;color:yellow"></span>
   		 	<span id="rtime" style="padding-left:2px;color:red"></span>
   		 	</div>
   		 	<div id="yellow" class="yellow"></div>
   		 </div>
   		 <div class="light2">
   		 	<div id="yellow2" class="yellow2"></div>
   		 	<div style="width:20px;height:20px;
   		 	margin-top:2px;margin-bottom:2px;transform:rotate(90deg);position: relative;">
   		 	<span id="xiagtime" style="padding-left:2px;color:green"></span>
   		 	<span id="xiaytime" style="padding-left:2px;color:yellow"></span>
   		 	<span id="xiartime" style="padding-left:2px;color:red"></span>
   		 	</div>
   		 	<div id="green2" class="green2"></div>
   		 </div>
   		 <div class="light3">
   		 	<div id="yellow3" class="yellow3"></div>
   		 	<div style="width:20px;height:20px;
   		 	margin-top:2px;margin-bottom:2px;transform:rotate(90deg);position: relative;">
   		 	<span id="yougtime" style="padding-left:2px;color:green"></span>
   		 	<span id="youytime" style="padding-left:2px;color:yellow"></span>
   		 	<span id="yourtime" style="padding-left:2px;color:red"></span>
   		 	</div>
   		 	<div id="green3" class="green3"></div>
   		 </div>
   		 <div class="light4">
   		 	<div id="red4" class="red4"></div>
   		 	<div style="width:20px;height:20px;
   		 	margin-top:2px;margin-bottom:2px;transform:rotate(90deg);position: relative;">
   		 	<span id="zuogtime" style="padding-left:2px;color:green"></span>
   		 	<span id="zuoytime" style="padding-left:2px;color:yellow"></span>
   		 	<span id="zuortime" style="padding-left:2px;color:red"></span>
   		 	</div>
   		 	<div id="yellow4" class="yellow4"></div>
   		 	
   		 </div>
   		 
     </div><!-- cross_div End -->
    
     <!-- 路口详细信息 -->
     <div id="detail" class="detail">
     
     <c:forEach items="${roadDetail}" var="det">
     
   		<p class="p1">交汇路口名称 : ${det.crossRoadName }</p>
   		<p class="p1">各路口绿灯时间 : </p>
   		<p class="p1" style="padding-top:10px;">北</p>
     	直行绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB; " value="${det.shangZgreen }" onfocus="this.blur()" type="text"/>
     	直行黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="${det.shangZyellow }"  onfocus="this.blur()" type="text"/><br/>
    	左转绿灯 : <input name="shangLgreen" style="width:70px;color:#4ADACB" value="${det.shangLgreen }"  onfocus="this.blur()" type="text"/>
     	左转黄灯 : <input name="shangLyellow" style="width:70px;color:#EDCF46" value="${det.shangLyellow }"  onfocus="this.blur()" type="text"/><br/>
     	
     	<p class="p1" style="padding-top:10px;">西</p>
     	直行绿灯 : <input name="zuoZgreen" style="width:70px;color:#4ADACB" value="${det.zuoZgreen }" onfocus="this.blur()" type="text"/>
     	直行黄灯 : <input name="zuoZyellow" style="width:70px;color:#EDCF46" value="${det.zuoZyellow }" onfocus="this.blur()" type="text"/><br/>
     	左转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="${det.zuoLgreen }" onfocus="this.blur()" type="text"/>
     	左转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="${det.zuoLyellow }" onfocus="this.blur()" type="text"/>
     	
     	<p class="p1" style="padding-top:10px;">南</p>
     	直行绿灯 : <input name="xiaZgreen" style="width:70px;color:#4ADACB" value="${det.xiaZgreen }" onfocus="this.blur()" type="text"/>
     	直行黄灯 : <input name="xiaZyellow" style="width:70px;color:#EDCF46" value="${det.xiaZyellow }" onfocus="this.blur()" type="text"/><br/>
    	左转绿灯 : <input name="xiaLgreen" style="width:70px;color:#4ADACB" value="${det.xiaLgreen }" onfocus="this.blur()" type="text"/>
     	左转黄灯 : <input name="xiaLyellow" style="width:70px;color:#EDCF46" value="${det.xiaLyellow }" onfocus="this.blur()" type="text"/><br/>
     	
     	<p class="p1" style="padding-top:10px;">东</p>
     	直行绿灯 : <input name="youZgreen" style="width:70px;color:#4ADACB" value="${det.youZgreen }" onfocus="this.blur()" type="text"/>
     	直行黄灯 : <input name="youZyellow" style="width:70px;color:#EDCF46" value="${det.youZyellow }" onfocus="this.blur()" type="text"/><br/>
    	左转绿灯 : <input name="youLgreen" style="width:70px;color:#4ADACB" value="${det.youLgreen }" onfocus="this.blur()" type="text"/>
     	左转黄灯 : <input name="youLyellow" style="width:70px;color:#EDCF46" value="${det.youLyellow }" onfocus="this.blur()" type="text"/><br/>
     		
   		<p class="p2" style="padding-top:10px;">信号灯描述 : ${det.crossDesc }</p>
   	 
   	 <button id="change" class="change">修改</button>
     
     <a class="delete" href="deleteLight.do?deleteId=${det.crossId }" onclick="javascript:if(confirm('确定要删除此路口？'))
     {return true;}return false;">删除</a>
   	 
   	 </c:forEach>
     </div>     
     
     <!-- 修改路口详细信息 -->
     	<c:forEach items="${roadDetail}" var="det">
     <div id="changeRoad" class="detail">
     	<p class="roadTitle">修改路口信息</p>
     	<form name="form1" action="changeLight.do?cId=${det.crossId }&cImage=${det.crossImage}" method="post" enctype="multipart/form-data">
     	<p class="p1">交互路口图片 : </p>
     	<img id="img" src="img/${det.crossImage }" style="width:150px; height:100px;">
     	<input name="file" style="cursor: pointer;border:1px solid #D4D0C8;padding:2px;" 
     	id="file" class="file" type="file" accept="image/jpg,imge/png" onchange="changeFile()" />
     	<p class="p1" style="padding-top:10px;">交汇路口名称 : 
     	<input name="cName" value="${det.crossRoadName }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.crossRoadName }';}" type="text"/> </p>     	
     	<p class="p1">交汇路口类型 : 
     	<input name="cType" value="light.do" id="shuang" type="radio"/> <label for="shuang" style="font-weight: inherit;"> 双向对行</label>
     	<input name="cType" value="light2.do" id="dan" type="radio" <c:if test="${det.crossType == 'light2.do'}">checked="checked"</c:if> /> <label for="dan" style="font-weight: inherit;"> 单路口通行</label>
     	<input name="cType" value="light3.do" id="san" type="radio"/> <label for="san" style="font-weight: inherit;"> 丁字路口</label>
     	</p>
     	
     	<!-- 单路口通行 -->
     	<div class="dan">
  		<p class="p1" style="padding-top:10px;">北</p>
     	直行绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB;readOnly='true' " value="${det.shangZgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.shangZgreen }';}" type="text"/>
     	直行黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="${det.shangZyellow }" onfocus="this.value = ''" 
    	onblur="if (this.value == '') {this.value = '${det.shangZyellow }';}" type="text"/><br/>
    	左转绿灯 : <input name="shangLgreen" style="width:70px;color:#4ADACB" value="${det.shangLgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.shangLgreen }';}" type="text"/>
     	左转黄灯 : <input name="shangLyellow" style="width:70px;color:#EDCF46" value="${det.shangLyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.shangLyellow }';}" type="text"/><br/>
     	
     	<p class="p1" style="padding-top:10px;">西</p>
     	直行绿灯 : <input name="zuoZgreen" style="width:70px;color:#4ADACB" value="${det.zuoZgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.zuoZgreen }';}" type="text"/>
     	直行黄灯 : <input name="zuoZyellow" style="width:70px;color:#EDCF46" value="${det.zuoZyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.zuoZyellow }';}" type="text"/><br/>
     	左转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="${det.zuoLgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.zuoLgreen }';}" type="text"/>
     	左转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="${det.zuoLyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.zuoLyellow }';}" type="text"/>
     	
     	<p class="p1" style="padding-top:10px;">南</p>
     	直行绿灯 : <input name="xiaZgreen" style="width:70px;color:#4ADACB" value="${det.xiaZgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.xiaZgreen }';}" type="text"/>
     	直行黄灯 : <input name="xiaZyellow" style="width:70px;color:#EDCF46" value="${det.xiaZyellow }" onfocus="this.value = ''" 
    	onblur="if (this.value == '') {this.value = '${det.xiaZyellow }';}" type="text"/><br/>
    	左转绿灯 : <input name="xiaLgreen" style="width:70px;color:#4ADACB" value="${det.xiaLgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.xiaLgreen }';}" type="text"/>
     	左转黄灯 : <input name="xiaLyellow" style="width:70px;color:#EDCF46" value="${det.xiaLyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.xiaLyellow }';}" type="text"/><br/>
     	
     	<p class="p1" style="padding-top:10px;">东</p>
     	直行绿灯 : <input name="youZgreen" style="width:70px;color:#4ADACB" value="${det.youZgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.youZgreen }';}" type="text"/>
     	直行黄灯 : <input name="youZyellow" style="width:70px;color:#EDCF46" value="${det.youZyellow }" onfocus="this.value = ''" 
    	onblur="if (this.value == '') {this.value = '${det.youZyellow }';}" type="text"/><br/>
    	左转绿灯 : <input name="youLgreen" style="width:70px;color:#4ADACB" value="${det.youLgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.youLgreen }';}" type="text"/>
     	左转黄灯 : <input name="youLyellow" style="width:70px;color:#EDCF46" value="${det.youLyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.youLyellow }';}" type="text"/><br/>
     	</div>
     	
     	<!-- 双向对行 -->
     	<div class="shuang">
     	<p class="p1">南北红绿灯时间: </p>
     	直行绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	左转绿灯 : <input name="shangLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转黄灯 : <input name="shangLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	<p class="p1" style="padding-top:10px;">东西红绿灯时间: </p>
     	直行绿灯 : <input name="zuoZgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	直行黄灯 : <input name="zuoZyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/><br/>
     	左转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="5000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '5000';}" type="text"/>
     	左转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="3000" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '3000';}" type="text"/>
     	</div>
     	
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

     	<p class="p1" style="padding-top:10px;">信号灯描述 :</p>
     	<textarea name="cDesc" rows="3" cols="35">${det.crossDesc }</textarea><br>
     	<button id="btn" class="btn" type="submit">提交</button>
    	</form>
     </div>     
   	 <div id="des" style="width: 878px;height: 255px;position: absolute;top: 880px;left: 100px;">
     	<textarea name="cDesc" disabled="disabled" style="resize:none;width:880px; height:260px;padding-top:35px;">
     交通规范:
     
     	机动车通过交叉路口，应当按照交通信号灯、交通标志、交通标线或者交通警察的指挥通过；
	转弯时要提前开启转向灯，并在指定的车道行驶。
	转弯过程中，要放慢车速，右转车辆让行左转车辆。
	向右转弯遇有同车道前车正在等候放行信号时，依次停车等候。
	如果同时有信号灯和交警指挥并不同时，以交警指挥为准行车。
	遇停止信号时，依次停在停止线以外。没有停止线的，停在路口以外。
        通过没有交通信号灯、交通标志、交通标线或者交通警察指挥的交叉路口时，应当减速慢行，并让行人和优先通行的车辆先行。
		</textarea><br>
    </div>
    	</c:forEach>
    </div>
  </body>
</html>
