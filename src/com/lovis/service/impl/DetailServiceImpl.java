package com.lovis.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.DetailModel;
import com.lovis.service.DetailService;

@Transactional
@Service
public class DetailServiceImpl implements DetailService {
	@Resource
	private InformationMapper informationMapper;
	
	public void getRoadDetail(HttpServletRequest request, Model model) {
	    
    	String lightId = request.getParameter("lightId");
		
		List<DetailModel> roadDetail = informationMapper.getRoadDetail(Integer.parseInt(lightId));
		
		model.addAttribute("roadDetail", roadDetail);

	}

}
