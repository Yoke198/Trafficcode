package com.lovis.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.SearchModel;
import com.lovis.service.SearchService;
import com.lovis.web.Page;
import com.lovis.web.PageSearch;

@Transactional
@Service
public class SearchServiceImpl implements SearchService {
	
	@Resource
	private InformationMapper informationMapper;
	
	public void showSearchedProductsByPage(HttpServletRequest request,
			Model model, String condition) {
			
			String pageNow = request.getParameter("pageNow");  
		    PageSearch pageSearch = null;  
		    
		  
		    List<SearchModel> search = new ArrayList<SearchModel>();  
		  
		    int totalCount = (int) informationMapper.getTotalSearchCount(condition);
		  
		    if (pageNow != null) {  
		    	pageSearch = new PageSearch(totalCount, Integer.parseInt(pageNow));  
		        search = this.informationMapper.showSearchedProductsByPage(pageSearch.getStartPos(), pageSearch.getPageSize(), condition);  
		    } else {  
		    	pageSearch = new PageSearch(totalCount, 1);  
		        search = this.informationMapper.showSearchedProductsByPage(pageSearch.getStartPos(), pageSearch.getPageSize(), condition); 
		    }  
		  
		    model.addAttribute("search", search);  
		    model.addAttribute("page", pageSearch); 
			
		}

	}


