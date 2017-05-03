package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.UserModel;
import com.lovis.service.ImgLoginService;

/**
 * Í¼Æ¬µÇÂ½
 * @author Administrator
 *
 */
@Service
public class ImgLoginServiceImpl implements ImgLoginService {

	@Resource
	private InformationMapper informationMapper;
	
	//²éÑ¯img
	public UserModel selectUserByImg(String img) {
		
		return informationMapper.selectUserByImg(img);
	}

}
