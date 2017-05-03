package com.lovis.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface DetailService {

	public void getRoadDetail(HttpServletRequest request,Model model);
	
}
