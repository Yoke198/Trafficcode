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
	<link rel="stylesheet" type="text/css" href="css/light3.css">
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
	<script type="text/javascript">
	$(document).ready(function(){
	
	<%  
		String ishangZgreen = request.getParameter("shangZgreen");
		String ishangZyellow = request.getParameter("shangZyellow");
		String izuoLgreen = request.getParameter("zuoLgreen");
		String izuoLyellow = request.getParameter("zuoLyellow");
		String ixiaZgreen = request.getParameter("xiaZgreen");
		String ixiaZyellow = request.getParameter("xiaZyellow");
	%>
	
		var shangZgreen = parseInt('<%=ishangZgreen%>')
		var shangZyellow= parseInt('<%=ishangZyellow%>')
		var zuoLgreen= parseInt('<%=izuoLgreen%>')
		var zuoLyellow= parseInt('<%=izuoLyellow%>')
		var xiaZgreen = parseInt('<%=ixiaZgreen%>')
		var xiaZyellow= parseInt('<%=ixiaZyellow%>')
	
	/**
	 * lightDiv右转红绿灯	左
	 *
	 *注:右转或直行与左转时间相同
	 *
	 *左边左转绿灯(zuoLgreen) 自定义
	 *
	 *左边左转黄灯(zuoLyellow) 自定义
	 *
	 *左边左转红灯(zuoLred)=下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)
	 *+上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)
	 *
	 *左边左转周期(zuoLtime)=zuoLgreen+zuoLyellow+zuoLred
	 *
	 */
	var ss2=0;
	var time3=1;
	var time4=1;
	var light2=document.getElementById("red");
	var lightImg2=["images/yellow.jpg","images/redleftjt.jpg","images/greenjt.jpg"];
	
	var zuoLred=(xiaZgreen+xiaZyellow+shangZgreen+shangZyellow)//左边左转红灯16
	var zuoLtime=(zuoLgreen+zuoLyellow+zuoLred)//左边左转周期24
	
	function f2(){
		
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[0]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[1]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[2]+")"
 			  time3++
 			  
 			},zuoLred)//红灯右转时间
 		},zuoLyellow)//左边左转黄灯
 	  },zuoLgreen)//左边左转绿灯
		
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
		},l2*zuoLtime)//左边左转周期
		}
	
	/**
	 * lightDiv2左转红绿灯	左
	 *
	 *红绿灯时间与左边右转相等
	 *
	 */
	var ss=0;
	var time1=1;
	var time2=1;
	var light=document.getElementById("yellow");
	var lightImg=["images/yellow.jpg","images/redjt.jpg","images/greenleftjt.jpg"];
	
	function f(){
		setTimeout(function(){
			 light.style.backgroundImage="url("+lightImg[0]+")"
			 
		setTimeout(function(){
			 light.style.backgroundImage="url("+lightImg[1]+")"
					
		setTimeout(function(){
			 light.style.backgroundImage="url("+lightImg[2]+")"
			  //当其自增以后才再次调用该方法
			  time1++
			 		},zuoLred)//红灯右转时间
 		},zuoLyellow)//左边左转黄灯
 	  },zuoLgreen)//左边左转绿灯
		     
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
		},l*zuoLtime)//左边左转周期
	}	
	
	/**
	 * light2Div直行红绿灯	下
	 *
	 *下边直行红灯1(xiaZred1)=左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *
	 *下边直行绿灯(xiaZgreen) 自定义
	 *
	 *下边直行黄灯(xiaZyellow) 自定义
	 *
	 *下边直行再次红灯2(xiaZred2)=上边直行绿灯(shangZgreen)+上边直行黄灯(shangZyellow)
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
	
	var xiaZred1=(zuoLgreen+zuoLyellow)//下边直行红灯1
	var xiaZred2=(shangZgreen+shangZyellow)//下边直行再次红灯2
	var xiaZtime=(xiaZred1+xiaZgreen+xiaZyellow+xiaZred2)//下边直行周期
	
	function f3(){
		
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[0]+")"
 			
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[1]+")"
 			
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[2]+")"
 			
 		setTimeout(function(){
 			time5++
 				},xiaZred2)//下边直行红灯2
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
	 *与下边直行红绿灯相等
	 *
	 */
	var ss4=0;
	var time7=1;
	var time8=1;
	var light4=document.getElementById("green2");
	var lightImg4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function f4(){
		setTimeout(function(){
			 light4.style.backgroundImage="url("+lightImg4[0]+")"
			 
		setTimeout(function(){
			 light4.style.backgroundImage="url("+lightImg4[1]+")"
					
		setTimeout(function(){
			 light4.style.backgroundImage="url("+lightImg4[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			  time7++
						},xiaZred2)//下边直行红灯2
 			},xiaZyellow)//下边直行黄灯
 		},xiaZgreen)//下边直行绿灯
 	  },xiaZred1)//下边直行红灯1
		     
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
		},l4*xiaZtime)//下边直行周期 
	}
	
	/**
	 * light3Div直行红绿灯	上
	 *
	 *
	 *上边直行红灯1(shangZred1)=左边左转绿灯(zuoLgreen)+左边左转黄灯(zuoLyellow)
	 *+下边直行绿灯(xiaZgreen)+下边直行黄灯(xiaZyellow)
	 *
	 *上边直行绿灯(shangZgreen) 自定义
	 *
	 *上边直行黄灯(shangZyellow) 自定义
	 *
	 *上边直行周期(shangZtime)=(shangZred1+shangZgreen+shangZyellow)
	 *
	 */
	var sx3=0;
	var timex5=1;
	var timex6=1;
	var lightx3=document.getElementById("yellow3");
	var lightImgx3=["images/greenrjt.jpg","images/yellow.jpg","images/redljt.jpg"];
	
	var shangZred1=(zuoLgreen+zuoLyellow+xiaZgreen+xiaZyellow)//上边直行红灯1
	var shangZtime=(shangZred1+shangZgreen+shangZyellow)//上边直行周期
	
	function fx3(){
		
 		setTimeout(function(){
 			lightx3.style.backgroundImage="url("+lightImgx3[0]+")"
 			
 		setTimeout(function(){
 			lightx3.style.backgroundImage="url("+lightImgx3[1]+")"
 			
 		setTimeout(function(){
 			lightx3.style.backgroundImage="url("+lightImgx3[2]+")"
 			timex5++
 			},shangZyellow)//上边黄灯直行
 		},shangZgreen)//上边绿灯直行
 	  },shangZred1)//上边直行红灯
		
	}

	function ffx3(){
		var intervalss = setInterval(function(){
			fx3();
			setTimeout(function(){
				timex6++;
			},0)
				sx3++;
			if(sx3 == timex6){
				clearInterval(intervalss)
				}
		}, 0000);
		}//与f2()同时触发
	
	ffx3();//函数
	
	for(var lo3=0;lo3<3;lo3++){
		setInterval(function(){
			if((sx3+1) == timex5){
				ffx3();
			}
		},lo3*shangZtime)//上边直行周期 
		}

	/**
	 * light3Div2右转红绿灯	上
	 */
	var so4=0;
	var timeo7=1;
	var timeo8=1;
	var lighto4=document.getElementById("green3");
	var lightImgo4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function fo4(){
		setTimeout(function(){
			lighto4.style.backgroundImage="url("+lightImgo4[0]+")"
			 
		setTimeout(function(){
			lighto4.style.backgroundImage="url("+lightImgo4[1]+")"
					
		setTimeout(function(){
			lighto4.style.backgroundImage="url("+lightImgo4[2]+")"
			  //当其自增以后才再次调用该方法
			timeo7++
			 		},shangZyellow)//上边黄灯直行
 		},shangZgreen)//上边绿灯直行
 	  },shangZred1)//上边直行红灯
		     
	}//function f() END
	
	//判断time1是否已经自增
	function ffo4(){
		var intervalss = setInterval(function(){
			
			fo4();//函数
			
			setTimeout(function(){
				timeo8++;
			},0)
			
				so4++;
			
			if(so4 == timeo8){
				clearInterval(intervalss)
				}
			
		}, 0000);//与f()同时触发
	}
	
	//执行函数
	ffo4();
	
	 //循环function ff()
	for(var lo4=0;lo4<3;lo4++){
		setInterval(function(){
			if((so4+1) == timeo7){
				ffo4();
			}
		},lo4*shangZtime)//上边直行周期
	}	
	
	/**
	 * 隐藏div
	 */
	$("#changeRoad").hide();
	$("#des").hide();
	$("#change").click(function(){
		
		$("#detail").hide();
		$("#changeRoad").show();
		
	})	
	
	/**
	 *
	 *交汇路口类型
	 *
	 */
	 $("input[type='radio']").each(function(){
	 	if($(this).is(":checked")){
	 		$(".shuang").hide();
	 		$(".dan").hide();
	 		$(".shuang input").attr("disabled",true);
	 		$(".dan input").attr("disabled",true);
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
    
    <div class="title2">丁字路口</div>
    
     <div class="cross_div">
     	 
   		 <div class="light" id="light">
   		 	<div id="red" class="red"></div>
   		 	<div id="yellow" class="yellow"></div>
   		 </div>
   		 <div class="light2">
   		 	<div id="yellow2" class="yellow2"></div>
   		 	<div id="green2" class="green2"></div>
   		 </div>
   		 <div class="light3">
   		 	<div id="yellow3" class="yellow3"></div>
   		 	<div id="green3" class="green3"></div>
   		 </div>
   		 
     </div><!-- cross_div End -->
     
     <!-- 路口详细信息 -->
     <div id="detail" class="detail">
     
     <c:forEach items="${roadDetail}" var="det">
    		<p class="p1">交汇路口名称 : ${det.crossRoadName }</p>
    		<p class="p1" style="font-size:20px;">西</p>
    		<p class="p1">左转&右转绿灯 : <span style="color:#4ADACB">${det.zuoLgreen }</span>ms</p>
    		<p class="p1">左转&右转黄灯 : <span style="color:#EDCF46">${det.zuoLyellow }</span>ms</p>
    		<p class="p1" style="font-size:20px;">南</p>
    		<p class="p1">直行&左转绿灯 : <span style="color:#4ADACB">${det.xiaZgreen }</span>ms</p>
    		<p class="p1">直行&左转黄灯 : <span style="color:#EDCF46">${det.xiaZyellow }</span>ms</p>
    		<p class="p1" style="font-size:20px;">北</p>
    		<p class="p1">直行&右转绿灯 : <span style="color:#4ADACB">${det.shangZgreen }</span>ms</p>
    		<p class="p1">直行&右转黄灯 : <span style="color:#EDCF46">${det.shangZyellow }</span>ms</p>
    		<p class="p2">信号灯描述 : ${det.crossDesc }</p>
   	 
   	 <button id="change" class="change">修改</button>
     
     <a class="delete" href="deleteLight.do?deleteId=${det.crossId }" onclick="javascript:if(confirm('确定要删除此路口？'))
     {return true;}return false;">删除</a>
   	 </c:forEach>
   	 
     </div>     
     
     <!-- 修改路口详细信息 -->
     <div id="changeRoad" class="detail">
     	<p class="roadTitle">修改路口信息</p>
     	<c:forEach items="${roadDetail}" var="det">
     	<form name="form1" action="changeLight.do?cId=${det.crossId }&cImage=${det.crossImage}" method="post" enctype="multipart/form-data">
     	<p class="p1">交互路口图片 : </p>
     	<img id="img" src="img/${det.crossImage }" style="width:150px; height:100px;">
     	<input name="file" style="cursor: pointer;border:1px solid #D4D0C8;padding:2px;" 
     	id="file" class="file" type="file" accept="image/jpg,imge/png" onchange="changeFile()" />
     	<p class="p1">交汇路口名称 : 
     	<input name="cName" value="${det.crossRoadName }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.crossRoadName }';}" type="text"/> </p>
     	<p class="p1">交汇路口类型 : 
     	<input name="cType" value="light.do" id="shuang" type="radio"/> <label for="shuang" style="font-weight: inherit;"> 双向对行</label>
     	<input name="cType" value="light2.do" id="dan" type="radio"/> <label for="dan" style="font-weight: inherit;"> 单路口通行</label>
     	<input name="cType" value="light3.do" id="san" type="radio" <c:if test="${det.crossType == 'light3.do'}">checked="checked"</c:if> /> <label for="san" style="font-weight: inherit;"> 丁字路口</label>
     	</p>
     	<div class="san">
     	<p class="p1">西 : </p>
     	左转&右转绿灯 : <input name="zuoLgreen" style="width:70px;color:#4ADACB" value="${det.zuoLgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.zuoLgreen }';}" type="text"/>
     	左转&右转黄灯 : <input name="zuoLyellow" style="width:70px;color:#EDCF46" value="${det.zuoLyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.zuoLyellow }';}" type="text"/><br/>
     	<p class="p1" style="padding-top:10px">南: </p>
     	直行&左转绿灯 : <input name="xiaZgreen" style="width:70px;color:#4ADACB" value="${det.xiaZgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.xiaZgreen }';}" type="text"/>
     	直行&左转黄灯 : <input name="xiaZyellow" style="width:70px;color:#EDCF46" value="${det.xiaZyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.xiaZyellow }';}" type="text"/><br/>
     	<p class="p1" style="padding-top:10px">北 : </p>
     	直行&右转绿灯 : <input name="shangZgreen" style="width:70px;color:#4ADACB" value="${det.shangZgreen }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.shangZgreen }';}" type="text"/>
     	直行&右转黄灯 : <input name="shangZyellow" style="width:70px;color:#EDCF46" value="${det.shangZyellow }" onfocus="this.value = ''" 
     	onblur="if (this.value == '') {this.value = '${det.shangZyellow }';}" type="text"/><br/>
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
     	
     	<p class="p1" style="padding-top:10px;">信号灯描述 :  </p>
     	<textarea name="cDesc" rows="10" cols="35">${det.crossDesc }</textarea><br>
     	<button class="btn" type="submit">提交</button>
    	</form>
    	</c:forEach>
     </div>     
    </div>
    
  </body>
</html>
