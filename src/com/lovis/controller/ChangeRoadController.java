package com.lovis.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lovis.model.ChangeModel;
import com.lovis.service.ChangeRoadService;

@Controller
public class ChangeRoadController{

	@Resource(name="changeRoadServiceImpl")
	private ChangeRoadService changeRoadService;
	
	@RequestMapping(value="changeLight.do")
	public String changeRoad(@RequestParam("file")CommonsMultipartFile file, 
			HttpServletRequest request, Model model,ChangeModel changeModel) throws IOException{

		if(file.isEmpty()){//如果file为空
			String parameter = request.getParameter("cImage");
			changeModel.setcImage(parameter);
			changeRoadService.changeRoad(model, changeModel);
			return "redirect:/show.do";
		}
		
	    String originalFilename = file.getOriginalFilename();
	    
	   // if(file!=null&&originalFilename == null&&originalFilename.length()>0){
	    	//存储图片的物理路径
	    	//String img_path = "D:\\apple\\fileload\\temp\\";
	    	
	    	String path = request.getSession().getServletContext().getRealPath("img");
	    	
	    	int beginIndex = originalFilename.lastIndexOf(".");
	    	
	    	//新的图片名称
	    	String newFileName = UUID.randomUUID()+originalFilename.substring(beginIndex);
	    	
	    	File newFile = new File(path+"\\"+newFileName);
	    	if(!newFile.exists()){
	    		newFile.mkdirs();
	    	}
	    	
	    	try {
				file.transferTo(newFile);
				
				changeModel.setcImage(newFileName);
				
				changeRoadService.changeRoad(model, changeModel);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	    	
	   // }
		
		
		return "redirect:/show.do";
	}
	
}
