package com.lovis.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lovis.model.CardModel;
import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;
import com.lovis.service.MyCardService;

@Controller
public class MyCardController {

	@Resource(name="myCardServiceImpl")
	private MyCardService myCardService;
	
	@RequestMapping(value="mycard.do")
	public String getCard(HttpServletRequest request, Model model){
		Object attribute = request.getSession().getAttribute("uid");//��ȡ�û�id
		if(attribute != null){
			int uid = Integer.parseInt(attribute.toString());
			List<CardModel> card = myCardService.getCard(uid);//���֤
			List<DrivingModel> driving = myCardService.getDriving(uid);//����
			List<DriLicenseModel> driLicense = myCardService.getDriLicense(uid);//��ʻ֤
			if(card.isEmpty()){
				model.addAttribute("cardnull", "δ�ϴ����֤");
			}
			if(driving.isEmpty()){
				model.addAttribute("dnull","δ�ϴ�����");
			}
			if(driLicense.isEmpty()){
				model.addAttribute("dlnull","δ�ϴ���ʻ֤");
			}
			
			model.addAttribute("idcard",card);
			model.addAttribute("driving",driving);
			model.addAttribute("driLicense",driLicense);
		}else{
			
		}
		return "mycard";
	}
	
	@RequestMapping(value="delete.do")
	public String deleteCard(HttpServletRequest request, Model model){
		String cardid = request.getParameter("cardid");
		String drivingid = request.getParameter("drivingid");
		String drilicenseid = request.getParameter("drilicenseid");
		if(cardid != null){
			myCardService.deleteCard(Integer.parseInt(cardid));
		}else if(drivingid != null){
			myCardService.deleteDriving(Integer.parseInt(drivingid));
		}else if(drilicenseid != null){
			myCardService.deleteDriLicense(Integer.parseInt(drilicenseid));
		}
		
		return "redirect:/mycard.do";
	}
	
}
