package com.lovis.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.CardModel;
import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;
import com.lovis.service.MyCardService;

@Service
public class MyCardServiceImpl implements MyCardService {

	@Resource
	private InformationMapper infromationMapper;
	
	public List<CardModel> getCard(int i) {
		
		return infromationMapper.getCard(i);
	}
	
	public List<DrivingModel> getDriving(int i) {
		
		return infromationMapper.getDriving(i);
	}

	public List<DriLicenseModel> getDriLicense(int i) {
		
		return infromationMapper.getDriLicense(i);
	}

	public int deleteCard(int id) {
		
		return infromationMapper.deleteCard(id);
	}

	
	public int deleteDriving(int did) {
		
		return infromationMapper.deleteDriving(did);
	}
	public int deleteDriLicense(int dlid) {
		
		return infromationMapper.deleteDriLicense(dlid);
	}

}
