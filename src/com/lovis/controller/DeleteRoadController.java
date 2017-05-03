package com.lovis.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lovis.service.impl.DeleteRoadServiceImpl;

@Controller
public class DeleteRoadController {

	@Resource(name="deleteRoadServiceImpl")
	private DeleteRoadServiceImpl deleteRoadService;
	
	@RequestMapping(value="deleteLight.do")
	public String deleteRoad(HttpServletRequest request){

		deleteRoadService.deleteRoad(request);
		
		return "redirect:/show.do";
	}	
	
}
