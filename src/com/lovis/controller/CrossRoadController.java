package com.lovis.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lovis.service.CrossRoadService;

@Controller
public class CrossRoadController {

	@Resource(name="crossRoadServiceImpl")
	private CrossRoadService crossRoadService;
	
	@RequestMapping(value="show.do", method = RequestMethod.GET)
	public String showMyProduct(HttpServletRequest request, Model model) {  
	    this.crossRoadService.showProductsByPage(request, model);  
	  
	    return "show";  
	} 
	
}
