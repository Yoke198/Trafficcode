package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.UserModel;
import com.lovis.service.LoginService;

@Transactional
@Service
public class LoginServiceImpl implements LoginService {

	@Resource
	private InformationMapper informationMapper;
	
	//µÇÂ¼
	public UserModel getUser(String user) {
		
		return informationMapper.getUser(user);
	}



}













