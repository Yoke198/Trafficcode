$(function(){
	
	/**
	 * lightDiv直行红绿灯	上
	 */
	var ss2=0;
	var time3=1;
	var time4=1;
	var light2=document.getElementById("yellow");
	var lightImg2=["images/yellow.jpg","images/redleftjt.jpg","images/greenjt.jpg"];
	
	function f2(){
		
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[0]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[1]+")"
 			
 		setTimeout(function(){
 			light2.style.backgroundImage="url("+lightImg2[2]+")"
 			  time3++
 			  
 			},43000)//红灯直行时间
 		},2000)//黄灯直行时间
 	  },3000)//绿灯直行时间 
		
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
		},l2*48000)
		}
	
	/**
	 * lightDiv2左转红绿灯		上
	 */
	var ss=0;
	var time1=1;
	var time2=1;
	var light=document.getElementById("red");
	var lightImg=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function f(){
		setTimeout(function(){
			 light.style.backgroundImage="url("+lightImg[0]+")"
			 
		setTimeout(function(){
			 light.style.backgroundImage="url("+lightImg[1]+")"
					
		setTimeout(function(){
			 light.style.backgroundImage="url("+lightImg[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			  time1++
						},36000)//共同等待时间	 
			 		},2000) //黄灯时间为3s
			 	},5000);//绿灯时间为5s
		     },5000)//红灯时间为11s,后红灯变绿灯
		     
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
		},l*48000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
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
 				},19000)	
 			},2000)//红灯直行时间
 		},3000)//黄灯直行时间
 	  },24000)//绿灯直行时间 
		
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
		},l3*48000) 
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
						},12000)//共同等待时间	 
			 		},2000) //黄灯时间为3s
			 	},5000);//绿灯时间为5s
		     },29000)//红灯时间为8s,后红灯变绿灯
		     
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
		},l4*48000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
	}	
	
	/**
	 * TlightDiv直行红绿灯  左
	 */
	var sy3=0;
	var timer5=1;
	var timer6=1;
	var lightr3=document.getElementById("yellow4");
	var lightImgr3=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function f5(){
		
 		setTimeout(function(){
 			lightr3.style.backgroundImage="url("+lightImgr3[0]+")"
 			
 		setTimeout(function(){
 			lightr3.style.backgroundImage="url("+lightImgr3[1]+")"
 			
 		setTimeout(function(){
 			lightr3.style.backgroundImage="url("+lightImgr3[2]+")"
 			
 		setTimeout(function(){
 			
 			timer5++
 				},31000)	
 			},2000)//黄灯直行时间
 		},3000)//绿灯直行时间
 	  },12000)//红灯直行时间 
		
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
		},lr3*48000)
		}

	/**
	 * TlightDiv2左转红绿灯	左
	 */
	var sy4=0;
	var timer7=1;
	var timer8=1;
	var lightr4=document.getElementById("red4");
	var lightImgr4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function f6(){
		setTimeout(function(){
			lightr4.style.backgroundImage="url("+lightImgr4[0]+")"
			 
		setTimeout(function(){
			lightr4.style.backgroundImage="url("+lightImgr4[1]+")"
					
		setTimeout(function(){
			lightr4.style.backgroundImage="url("+lightImgr4[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
				timer7++
						},24000)//共同等待时间	 
			 		},2000) //黄灯时间为3s
			 	},5000);//绿灯时间为5s
		     },17000)//红灯时间为8s,后红灯变绿灯
		     
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
		},lr4*48000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
	}	
	
	/**
	 * Tlight2Div直行红绿灯  右
	 */
	var sl3=0;
	var timel5=1;
	var timel6=1;
	var lightl3=document.getElementById("yellow3");
	var lightImgl3=["images/greenleftjt.jpg","images/yellow.jpg","images/redjt.jpg"];
	
	function fl5(){
		
 		setTimeout(function(){
 			lightl3.style.backgroundImage="url("+lightImgl3[0]+")"
 			
 		setTimeout(function(){
 			lightl3.style.backgroundImage="url("+lightImgl3[1]+")"
 			
 		setTimeout(function(){
 			lightl3.style.backgroundImage="url("+lightImgl3[2]+")"
 			
 		setTimeout(function(){
 			
 			timel5++
 				},7000)	
 			},2000)//黄灯直行时间
 		},3000)//绿灯直行时间
 	  },36000)//红灯直行时间 
		
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
		},ll3*48000)
		}

	/**
	 * Tlight2Div2左转红绿灯	右
	 */
	var sr4=0;
	var timez7=1;
	var timez8=1;
	var lightz4=document.getElementById("green3");
	var lightImgz4=["images/greenjt.jpg","images/yellow.jpg","images/redleftjt.jpg"];
	
	function fz6(){
		setTimeout(function(){
			lightz4.style.backgroundImage="url("+lightImgz4[0]+")"
			 
		setTimeout(function(){
			lightz4.style.backgroundImage="url("+lightImgz4[1]+")"
					
		setTimeout(function(){
			lightz4.style.backgroundImage="url("+lightImgz4[2]+")"
		setTimeout(function(){
			  //当其自增以后才再次调用该方法
			timez7++
						})//共同等待时间	 
			 		},2000) //黄灯时间为3s
			 	},5000);//绿灯时间为5s
		     },41000)//红灯时间为8s,后红灯变绿灯
		     
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
		},lr4*48000)//重复触发时间=红灯+绿灯+黄灯等待时间之和
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