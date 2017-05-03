package com.lovis.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public interface CrossRoadService {
	
    public void showProductsByPage(HttpServletRequest request,Model model);
    
}
