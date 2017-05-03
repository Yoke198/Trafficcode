package com.lovis.service;

import com.lovis.model.UserModel;

public interface RegisterService {

	//×¢²á
	public int getResult(UserModel user);
	
	//×¢²áÓÊÏäÎ¨Ò»ÑéÖ¤
	public UserModel getEmail(String email);
	
}
