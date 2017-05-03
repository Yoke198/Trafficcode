package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;
import com.lovis.service.DrivingService;

/**
 * �ϴ�֤��
 * @author Administrator
 *
 */
@Service
public class DrivingServiceImpl implements DrivingService {

	@Resource
	private InformationMapper informationMapper;
	
	public void uploadDriving(DrivingModel icm) {
		informationMapper.uploadDriving(icm);
	}
	
	public void uploadDriLicense(DriLicenseModel dlm) {
		informationMapper.uploadDriLicense(dlm);
	}

}
