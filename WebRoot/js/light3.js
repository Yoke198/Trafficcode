$(function(){
	
	/**
	 * lightDiv右转红绿灯	左
	 */
	var ss2=0;
	var time3=1;
	var time4=1;
	var light2=document.getElementById("red");
	var lightImg2=["images/yellow.jpg","images/redleftjt.jpg","images/greenjt.jpg"];
	
	function f2(){
		
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[0]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[1]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[2]+")"
 			  time3++
 			  
 			},25000)//红灯右转时间
 		},3000)//黄灯右转时间
 	  },5000)//绿灯右转时间 
		
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
		},l2*33000)
		}
	
	/**
	 * lightDiv2左转红绿灯		左
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
			 		},22000) //红灯
			 	},3000);//黄灯
		     },8000)//绿灯
		     
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
		},l*33000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
	}	
	
	/**
	 * light2Div直行红绿灯	下
	 */
	var ss3=0;
	var time5=1;
	var time6=1;
	var light3=document.getElementById("yellow2");
	var lightImg3=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function f3(){
		
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[0]+")"
 			
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[1]+")"
 			
 		setTimeout(function(){
 			light3.style.backgroundImage="url("+lightImg3[2]+")"
 			
 		setTimeout(function(){
 			time5++
 				},14000)	
 			},3000)//黄灯直行时间
 		},5000)//绿灯直行时间
 	  },11000)//红灯等待直行时间 
		
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
		},l3*33000) 
		}

	/**
	 * light2Div2左转红绿灯	下
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
						},11000)	 
			 		},3000) //黄灯时间为3s
			 	},8000);//绿灯时间为5s
		     },11000)//红灯时间,后红灯变绿灯
		     
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
		},l4*33000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
	}
	
	/**
	 * light3Div直行红绿灯	上
	 */
	var sx3=0;
	var timex5=1;
	var timex6=1;
	var lightx3=document.getElementById("yellow3");
	var lightImgx3=["images/greenrjt.jpg","images/yellow.jpg","images/redljt.jpg"];
	
	function fx3(){
		
 		setTimeout(function(){
 			lightx3.style.backgroundImage="url("+lightImgx3[0]+")"
 			
 		setTimeout(function(){
 			lightx3.style.backgroundImage="url("+lightImgx3[1]+")"
 			
 		setTimeout(function(){
 			lightx3.style.backgroundImage="url("+lightImgx3[2]+")"
 			
 		setTimeout(function(){
 			timex5++
 				},3000)	
 			},3000)//黄灯直行时间
 		},5000)//绿灯直行时间
 	  },22000)//红灯直行时间 
		
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
			if((so3+1) == timex5){
				ffx3();
			}
		},lo3*33000) 
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
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			timeo7++
						})	 
			 		},3000) //黄灯时间为3s
			 	},8000);//绿灯时间为5s
		     },22000)//红灯时间为8s,后红灯变绿灯
		     
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
		},lo4*33000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
	}	
	
	/**
	 * 隐藏div
	 */
	$("#changeRoad").hide();
	$("#change").click(function(){
		
		$("#detail").hide();
		$("#changeRoad").show();
		
	})	
		
})