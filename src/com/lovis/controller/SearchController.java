package com.lovis.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lovis.model.SearchModel;
import com.lovis.service.SearchService;

@Controller
public class SearchController {

	@Resource(name="searchServiceImpl")
	private SearchService searchService;
	
    @RequestMapping(value = "search.do")  
    public String searchForProducts(HttpServletRequest request, Model model) {  
    	
        HttpSession session = request.getSession();  
  
        String param = request.getParameter("search");  
  
        String condition = (String) session.getAttribute("condition");  
  
        //先判断SESSION中的condition是否为空  
        if (condition == null) {  
            condition = new String();  
            session.setAttribute("condition", condition);  
            //如果Session中的condition为空，再判断传入的参数是否为空，如果为空就跳转到搜索结果页面  
            if (param == null || "".equals(param)) {  
                return "search";  
            }  
        }  
        //如果SESSION不为空，且传入的搜索条件param不为空，那么将param赋值给condition  
        if (param != null && !("".equals(param))) {  
            condition = param;  
            
            session.setAttribute("condition", condition);  
        }  
        //使用session中的condition属性值来作为查询条件  
        this.searchService.showSearchedProductsByPage(request, model, condition);
  
        return "search";  
    }	
	
}
