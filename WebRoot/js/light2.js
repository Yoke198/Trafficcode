$(function(){
	
	/**
	 * lightDivֱ�к��̵�	��
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
 			  
 			},43000)//���ֱ��ʱ��
 		},2000)//�Ƶ�ֱ��ʱ��
 	  },3000)//�̵�ֱ��ʱ�� 
		
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
		}//��f2()ͬʱ����
	
	ff2();//����
	
	for(var l2=0;l2<3;l2++){
		setInterval(function(){
			if((ss2+1) == time3){
				ff2();
			}
		},l2*48000)
		}
	
	/**
	 * lightDiv2��ת���̵�		��
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
			  //���������Ժ���ٴε��ø÷���
			  time1++
						},36000)//��ͬ�ȴ�ʱ��	 
			 		},2000) //�Ƶ�ʱ��Ϊ3s
			 	},5000);//�̵�ʱ��Ϊ5s
		     },5000)//���ʱ��Ϊ11s,���Ʊ��̵�
		     
	}//function f() END
	
	//�ж�time1�Ƿ��Ѿ�����
	function ff(){
		var intervalss = setInterval(function(){
			
			f();//����
			
			setTimeout(function(){
				time2++;
			},0)
			
				ss++;
			
			if(ss == time2){
				clearInterval(intervalss)
				}
			
		}, 0000);//��f()ͬʱ����
	}
	
	//ִ�к���
	ff();
	
	 //ѭ��function ff()
	for(var l=0;l<3;l++){
		setInterval(function(){
			if((ss+1) == time1){
				ff();
			}
		},l*48000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
	}	
	
	/**
	 * light2Divֱ�к��̵�	��
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
 			},2000)//���ֱ��ʱ��
 		},3000)//�Ƶ�ֱ��ʱ��
 	  },24000)//�̵�ֱ��ʱ�� 
		
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
		}//��f2()ͬʱ����
	
	ff3();//����
	
	for(var l3=0;l3<3;l3++){
		setInterval(function(){
			if((ss3+1) == time5){
				ff3();
			}
		},l3*48000) 
		}

	/**
	 * light2Div2��ת���̵�	��
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
			  //���������Ժ���ٴε��ø÷���
			  time7++
						},12000)//��ͬ�ȴ�ʱ��	 
			 		},2000) //�Ƶ�ʱ��Ϊ3s
			 	},5000);//�̵�ʱ��Ϊ5s
		     },29000)//���ʱ��Ϊ8s,���Ʊ��̵�
		     
	}//function f() END
	
	//�ж�time1�Ƿ��Ѿ�����
	function ff4(){
		var intervalss = setInterval(function(){
			
			f4();//����
			
			setTimeout(function(){
				time8++;
			},0)
			
				ss4++;
			
			if(ss4 == time8){
				clearInterval(intervalss)
				}
			
		}, 0000);//��f()ͬʱ����
	}
	
	//ִ�к���
	ff4();
	
	 //ѭ��function ff()
	for(var l4=0;l4<3;l4++){
		setInterval(function(){
			if((ss4+1) == time7){
				ff4();
			}
		},l4*48000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
	}	
	
	/**
	 * TlightDivֱ�к��̵�  ��
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
 			},2000)//�Ƶ�ֱ��ʱ��
 		},3000)//�̵�ֱ��ʱ��
 	  },12000)//���ֱ��ʱ�� 
		
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
		}//��f2()ͬʱ����
	
	ff5();//����
	
	for(var lr3=0;lr3<3;lr3++){
		setInterval(function(){
			if((sy3+1) == timer5){
				ff5();
			}
		},lr3*48000)
		}

	/**
	 * TlightDiv2��ת���̵�	��
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
			  //���������Ժ���ٴε��ø÷���
				timer7++
						},24000)//��ͬ�ȴ�ʱ��	 
			 		},2000) //�Ƶ�ʱ��Ϊ3s
			 	},5000);//�̵�ʱ��Ϊ5s
		     },17000)//���ʱ��Ϊ8s,���Ʊ��̵�
		     
	}//function f() END
	
	//�ж�time1�Ƿ��Ѿ�����
	function ff6(){
		var intervalss = setInterval(function(){
			
			f6();//����
			
			setTimeout(function(){
				timer8++;
			},0)
			
				sy4++;
			
			if(sy4 == timer8){
				clearInterval(intervalss)
				}
			
		}, 0000);//��f()ͬʱ����
	}
	
	//ִ�к���
	ff6();
	
	 //ѭ��function ff()
	for(var lr4=0;lr4<3;lr4++){
		setInterval(function(){
			if((sy4+1) == timer7){
				ff6();
			}
		},lr4*48000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
	}	
	
	/**
	 * Tlight2Divֱ�к��̵�  ��
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
 			},2000)//�Ƶ�ֱ��ʱ��
 		},3000)//�̵�ֱ��ʱ��
 	  },36000)//���ֱ��ʱ�� 
		
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
		}//��f2()ͬʱ����
	
	ffl5();//����
	
	for(var ll3=0;ll3<3;ll3++){
		setInterval(function(){
			if((sl3+1) == timel5){
				ffl5();
			}
		},ll3*48000)
		}

	/**
	 * Tlight2Div2��ת���̵�	��
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
			  //���������Ժ���ٴε��ø÷���
			timez7++
						})//��ͬ�ȴ�ʱ��	 
			 		},2000) //�Ƶ�ʱ��Ϊ3s
			 	},5000);//�̵�ʱ��Ϊ5s
		     },41000)//���ʱ��Ϊ8s,���Ʊ��̵�
		     
	}//function f() END
	
	//�ж�time1�Ƿ��Ѿ�����
	function ffz6(){
		var intervalss = setInterval(function(){
			
			fz6();//����
			
			setTimeout(function(){
				timez8++;
			},0)
			
				sr4++;
			
			if(sr4 == timez8){
				clearInterval(intervalss)
				}
			
		}, 0000);//��f()ͬʱ����
	}
	
	//ִ�к���
	ffz6();
	
	 //ѭ��function ff()
	for(var lr4=0;lr4<3;lr4++){
		setInterval(function(){
			if((sr4+1) == timez7){
				ffz6();
			}
		},lr4*48000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
	}
	
	/**
	 * ����div
	 */
	$("#changeRoad").hide();
	$("#change").click(function(){
		
		$("#detail").hide();
		$("#changeRoad").show();
		
	})	
		
})