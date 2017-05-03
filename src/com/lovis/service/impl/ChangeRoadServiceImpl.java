package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.ChangeModel;
import com.lovis.service.ChangeRoadService;

@Transactional
@Service
public class ChangeRoadServiceImpl implements ChangeRoadService{

	@Resource
	private InformationMapper informationMapper;
	
	public void changeRoad(Model model, ChangeModel changeModel) {
		
		informationMapper.ChangeRoadDetail(changeModel);
		
	}

}
