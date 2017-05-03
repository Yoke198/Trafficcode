package com.lovis.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lovis.mapper.InformationMapper;
import com.lovis.model.UserModel;
import com.lovis.service.ImgLoginService;

/**
 * ͼƬ��½
 * @author Administrator
 *
 */
@Service
public class ImgLoginServiceImpl implements ImgLoginService {

	@Resource
	private InformationMapper informationMapper;
	
	//��ѯimg
	public UserModel selectUserByImg(String img) {
		
		return informationMapper.selectUserByImg(img);
	}

}
