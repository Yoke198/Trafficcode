package com.lovis.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.lovis.model.SearchModel;

public interface SearchService {

    public void showSearchedProductsByPage(HttpServletRequest request,Model model, String condition);
	
}
