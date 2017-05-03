package com.lovis.service.impl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovis.mapper.InformationMapper;
import com.lovis.service.DeleteRoadService;

@Transactional
@Service
public class DeleteRoadServiceImpl implements DeleteRoadService {

	@Resource
	private InformationMapper InformationMapper;
	
	public void deleteRoad(HttpServletRequest request) {
		String id = request.getParameter("deleteId");
		InformationMapper.delectRoad(Integer.parseInt(id));
		
	}

}
