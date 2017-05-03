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
		String user = userModel.getUser().replaceAll(" ", "");//获取前台用户名
		String password = userModel.getPassword().replaceAll(" ", "");//密码
		
		//通过查询用户名获取密码
		UserModel userInformation = loginService.getUser(user);
		
		//判断用户名密码是否符合要求
		if(user.length() >=0 && user.length() < 3){
			model.addAttribute("userError", "用户名长度不能小于3位数");
			return "login";
			
		}else if(null==userInformation){
			model.addAttribute("userError", "用户不存在");
			return "login";
			
		}else if(password.length() >=0 && password.length() < 5){
			model.addAttribute("passwordError", "密码长度不能小于5位数");
			return "login";
			
		}else{
			String ipassword = userInformation.getPassword();//获取密码
			if(!ipassword.equals(password)){
				model.addAttribute("passwordError", "密码错误");
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
