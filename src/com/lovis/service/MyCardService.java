package com.lovis.service;

import java.util.List;

import com.lovis.model.CardModel;
import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;

public interface MyCardService {

	public List<CardModel> getCard(int i);//��ȡ���֤��Ϣ
	
	public List<DrivingModel> getDriving(int i);//������Ϣ
	
	public List<DriLicenseModel> getDriLicense(int i);//��ʻ֤
	
	public int deleteCard(int id);
	
	public int deleteDriving(int did);
	
	public int deleteDriLicense(int dlid);
	
}
