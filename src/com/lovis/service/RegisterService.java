package com.lovis.service;

import com.lovis.model.UserModel;

public interface RegisterService {

	//ע��
	public int getResult(UserModel user);
	
	//ע������Ψһ��֤
	public UserModel getEmail(String email);
	
}
