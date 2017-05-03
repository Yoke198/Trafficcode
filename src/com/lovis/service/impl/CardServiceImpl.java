package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.CardModel;
import com.lovis.service.CardService;



@Service
public class CardServiceImpl implements CardService {

	@Resource
	private InformationMapper informationMapper;
	
	public void uploadCard(CardModel cm) {
		informationMapper.uploadCard(cm);
	}

}
