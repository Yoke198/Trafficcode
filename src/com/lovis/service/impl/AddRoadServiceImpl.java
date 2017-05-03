package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.ChangeModel;
import com.lovis.service.AddRoadService;

@Transactional
@Service
public class AddRoadServiceImpl implements AddRoadService {

	@Resource
	private InformationMapper informationMapper;
	
	public void addRoad(ChangeModel cm, Model model) {
		
		informationMapper.addRoad(cm);
		//model.addAttribute("cm", cm);
		
	}

}
