package com.lovis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
	

	@RequestMapping(value="/")
	public String index(){
		
		return "index";
	}
	
	@RequestMapping(value="index.do")
	public String home(@ModelAttribute("userEL") String user,Model model){
		if(user.equals("")){
			user = null;
		}
		model.addAttribute("userEL",user);
		return "index";
	}
	@RequestMapping(value="clogin.do")
	public String log(){
		return "login";
	}
	@RequestMapping(value="cregister.do")
	public String reg(){
		return "register";
	}
	
	@RequestMapping(value="myftl.do")
	public String ftl(Model model){
		
		return "myftl";
	}
	@RequestMapping(value="ss.do")
	public String ss(String user){
		return "myftl";
	}
	@RequestMapping(value="addRoadView.do")
	public String addRoadView(){
		
		return "addRoad";
	}
	@RequestMapping(value="toupload.do")
	public String upload(){
		
		return "upload";
	}
	
	
	/**
	 * 文件上传
	 * @param file
	 * @param cm
	 * @param model
	 * @return
	@RequestMapping(value="fileUpload.do")
	public String fileUpload(@RequestParam("file") CommonsMultipartFile file, ChangeModel cm, Model model) {
		
		byte [] image_byte = file.getBytes();
		
		cm.setcImage(image_byte);
		
		
		try {
		String originalFilename = file.getOriginalFilename();//原文件名(加后缀)
        InputStream is = file.getInputStream();
			OutputStream os = new FileOutputStream("C:/"+originalFilename);
	        int temp;
	        
	        while((temp=is.read())!=(-1)){
	        	os.write(temp);
	        }
	        os.flush();
	        os.close();
	        is.close();
	        
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        
		return "light";
	}
	 */
}








