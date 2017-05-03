package com.lovis.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lovis.model.UserModel;
import com.lovis.service.LoginService;

@Controller
public class LoginController {
	
	@Resource(name="loginServiceImpl" )
	private LoginService loginService;

	@RequestMapping(value="login.do")
	public String login(HttpServletRequest request,UserModel userModel,Model model,RedirectAttributes r){
		if(userModel.getUser() == null){
			return "redirect:/clogin.do";
		}
		String user = userModel.getUser().replaceAll(" ", "");//��ȡǰ̨�û���
		String password = userModel.getPassword().replaceAll(" ", "");//����
		
		//ͨ����ѯ�û�����ȡ����
		UserModel userInformation = loginService.getUser(user);
		
		//�ж��û��������Ƿ����Ҫ��
		if(user.length() >=0 && user.length() < 3){
			model.addAttribute("userError", "�û������Ȳ���С��3λ��");
			return "login";
			
		}else if(null==userInformation){
			model.addAttribute("userError", "�û�������");
			return "login";
			
		}else if(password.length() >=0 && password.length() < 5){
			model.addAttribute("passwordError", "���볤�Ȳ���С��5λ��");
			return "login";
			
		}else{
			String ipassword = userInformation.getPassword();//��ȡ����
			if(!ipassword.equals(password)){
				model.addAttribute("passwordError", "�������");
				return "login";
			}
			int uid = userInformation.getUid();
			request.getSession().setAttribute("userEL", user);
			request.getSession().setAttribute("uid", uid);
			return "redirect:/index.do";
		}
		
	}
	
	@RequestMapping(value="offlogin.do")
	public String offLogin(HttpServletRequest request){
		request.getSession().removeAttribute("userEL");
		request.getSession().removeAttribute("uid");
		return "redirect:/index.do";
	}
		
}
