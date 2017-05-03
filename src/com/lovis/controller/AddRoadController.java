package com.lovis.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lovis.model.ChangeModel;
import com.lovis.service.AddRoadService;
//http://ask.csdn.net/questions/179143 
//http://blog.csdn.net/u012570652/article/details/53928686 
//http://blog.csdn.net/acmman/article/details/47656831
@Controller
public class AddRoadController {

	@Resource(name="addRoadServiceImpl")
	private AddRoadService addRoadservice;
	
	@RequestMapping(value="addRoad.do")
	public String addRoad(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, 
			ChangeModel changeModel, Model model){
		
		String cName = changeModel.getcName();
		
		if(cName.equals("")){
			model.addAttribute("nameNull","����������");
			return "addRoad";
		}
		//��ȡԭ�ļ�
		String originalFilename = file.getOriginalFilename();
		    	
		    	String path = request.getSession().getServletContext().getRealPath("img");
		    	
		    	int beginIndex = originalFilename.lastIndexOf(".");
		    	
		    	//�µ�ͼƬ����
		    	String newFileName = UUID.randomUUID()+originalFilename.substring(beginIndex);
		    	
		    	//�ж�ͼƬ
		    	String ftype="jpg,png";
		    	String suff=originalFilename.substring(beginIndex+1);
		    	String[] split = ftype.split(",");
		    	if(!split[0].equals(suff.toLowerCase())&&!split[1].equals(suff.toLowerCase())){
	    			model.addAttribute("error", "ͼƬ��ʽ����");
	    			return "addRoad";
	    		}
				String cType = changeModel.getcType();
				if(cType == null){
					model.addAttribute("typeNull","����������");
					return "addRoad";
				}
		    	File newFile = new File(path+"\\"+newFileName);
		    	if(!newFile.exists()){
		    		newFile.mkdirs();
		    	}
		    	
		    	try {
					file.transferTo(newFile);
					
					changeModel.setcImage(newFileName);
					
					addRoadservice.addRoad(changeModel, model);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
		
		return "redirect:/show.do";
	}
	
	@ExceptionHandler
	public ModelAndView doException(Exception e, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		if(e instanceof MaxUploadSizeExceededException){
			long maxUploadSize = ((MaxUploadSizeExceededException) e).getMaxUploadSize();
			map.put("error", "�ϴ��ļ�̫�󣬲��ܳ���"+(maxUploadSize/1048576)+"M");
		}else if(e instanceof RuntimeException){
			map.put("error", "δѡ���ļ�");
		}
		return new ModelAndView("addRoad",map);
	}
	
}
