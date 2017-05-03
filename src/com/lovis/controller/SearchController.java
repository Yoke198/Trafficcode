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
  
        //���ж�SESSION�е�condition�Ƿ�Ϊ��  
        if (condition == null) {  
            condition = new String();  
            session.setAttribute("condition", condition);  
            //���Session�е�conditionΪ�գ����жϴ���Ĳ����Ƿ�Ϊ�գ����Ϊ�վ���ת���������ҳ��  
            if (param == null || "".equals(param)) {  
                return "search";  
            }  
        }  
        //���SESSION��Ϊ�գ��Ҵ������������param��Ϊ�գ���ô��param��ֵ��condition  
        if (param != null && !("".equals(param))) {  
            condition = param;  
            
            session.setAttribute("condition", condition);  
        }  
        //ʹ��session�е�condition����ֵ����Ϊ��ѯ����  
        this.searchService.showSearchedProductsByPage(request, model, condition);
  
        return "search";  
    }	
	
}
