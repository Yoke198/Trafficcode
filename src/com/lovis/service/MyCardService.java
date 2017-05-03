package com.lovis.service;

import java.util.List;

import com.lovis.model.CardModel;
import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;

public interface MyCardService {

	public List<CardModel> getCard(int i);//获取身份证信息
	
	public List<DrivingModel> getDriving(int i);//驾照信息
	
	public List<DriLicenseModel> getDriLicense(int i);//行驶证
	
	public int deleteCard(int id);
	
	public int deleteDriving(int did);
	
	public int deleteDriLicense(int dlid);
	
}
