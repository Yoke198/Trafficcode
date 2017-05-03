package com.lovis.service;

import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;

/**
 * 上传证件
 * @author Administrator
 *
 */
public interface DrivingService {

	public void uploadDriving(DrivingModel icm);
	
	public void uploadDriLicense(DriLicenseModel dlm);
	
}
