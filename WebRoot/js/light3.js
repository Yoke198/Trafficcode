$(function(){
	
	/**
	 * lightDiv��ת���̵�	��
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
 			  
 			},25000)//�����תʱ��
 		},3000)//�Ƶ���תʱ��
 	  },5000)//�̵���תʱ�� 
		
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
		},l2*33000)
		}
	
	/**
	 * lightDiv2��ת���̵�		��
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
			  //���������Ժ���ٴε��ø÷���
			  time1++
			 		},22000) //���
			 	},3000);//�Ƶ�
		     },8000)//�̵�
		     
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
		},l*33000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
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
 				},14000)	
 			},3000)//�Ƶ�ֱ��ʱ��
 		},5000)//�̵�ֱ��ʱ��
 	  },11000)//��Ƶȴ�ֱ��ʱ�� 
		
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
		},l3*33000) 
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
						},11000)	 
			 		},3000) //�Ƶ�ʱ��Ϊ3s
			 	},8000);//�̵�ʱ��Ϊ5s
		     },11000)//���ʱ��,���Ʊ��̵�
		     
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
		},l4*33000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
	}
	
	/**
	 * light3Divֱ�к��̵�	��
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
 			},3000)//�Ƶ�ֱ��ʱ��
 		},5000)//�̵�ֱ��ʱ��
 	  },22000)//���ֱ��ʱ�� 
		
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
		}//��f2()ͬʱ����
	
	ffx3();//����
	
	for(var lo3=0;lo3<3;lo3++){
		setInterval(function(){
			if((so3+1) == timex5){
				ffx3();
			}
		},lo3*33000) 
		}

	/**
	 * light3Div2��ת���̵�	��
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
			  //���������Ժ���ٴε��ø÷���
			timeo7++
						})	 
			 		},3000) //�Ƶ�ʱ��Ϊ3s
			 	},8000);//�̵�ʱ��Ϊ5s
		     },22000)//���ʱ��Ϊ8s,���Ʊ��̵�
		     
	}//function f() END
	
	//�ж�time1�Ƿ��Ѿ�����
	function ffo4(){
		var intervalss = setInterval(function(){
			
			fo4();//����
			
			setTimeout(function(){
				timeo8++;
			},0)
			
				so4++;
			
			if(so4 == timeo8){
				clearInterval(intervalss)
				}
			
		}, 0000);//��f()ͬʱ����
	}
	
	//ִ�к���
	ffo4();
	
	 //ѭ��function ff()
	for(var lo4=0;lo4<3;lo4++){
		setInterval(function(){
			if((so4+1) == timeo7){
				ffo4();
			}
		},lo4*33000)//�ظ�����ʱ��=���+�̵�+�ƵƵȴ�ʱ��֮��
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