package com.lovis.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lovis.service.DetailService;

@Controller
public class DetailController {

	@Resource(name="detailServiceImpl")
	private DetailService detailService;
	
    @RequestMapping(value = "light.do")  
    public String roadDetail(HttpServletRequest request, Model model) {  	

    	detailService.getRoadDetail(request, model);
    	
    	return "light";
    }
    
    @RequestMapping(value = "light2.do")  
    public String roadDetail2(HttpServletRequest request, Model model) {  	
    
    	detailService.getRoadDetail(request, model);
    	
    	return "light2";
    }
    
    @RequestMapping(value = "light3.do")  
    public String roadDetail3(HttpServletRequest request, Model model) {  	
    
    	detailService.getRoadDetail(request, model);
    	
    	return "light3";
    }
}
