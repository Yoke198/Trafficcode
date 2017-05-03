package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.UserModel;
import com.lovis.service.RegisterService;

@Transactional
@Service
public class RegisterServiceImpl implements RegisterService {

	@Resource(name="informationMapper")
	private InformationMapper informationMapper;
	
	//◊¢≤·
	public int getResult(UserModel user) {
		
		return informationMapper.getResult(user);
	}

	//◊¢≤·” œ‰Œ®“ª—È÷§
	public UserModel getEmail(String email) {
		
		return informationMapper.getEmail(email);
	}

}
