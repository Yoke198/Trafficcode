package com.lovis.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.CrossRoadModel;
import com.lovis.service.CrossRoadService;
import com.lovis.web.Page;

@Transactional
@Service
public class CrossRoadServiceImpl implements CrossRoadService{
	
	@Resource
	private InformationMapper informationMapper;

	public void showProductsByPage(HttpServletRequest request, Model model) {
	    String pageNow = request.getParameter("pageNow");  
	    
	    Page page = null;  
	  
	    List<CrossRoadModel> products = new ArrayList<CrossRoadModel>();  
	  
	    int totalCount = (int) informationMapper.getTotalCrossRoadCount();
	  
	    if (pageNow != null) {  
	        page = new Page(totalCount, Integer.parseInt(pageNow));  
	        products = this.informationMapper.getCrossRoad(page.getStartPos(), page.getPageSize());  
	    } else {  
	        page = new Page(totalCount, 1);  
	        products = this.informationMapper.getCrossRoad(page.getStartPos(), page.getPageSize());  
	    }  
	  
	    model.addAttribute("products", products);  
	    model.addAttribute("page", page);  
	}


}
