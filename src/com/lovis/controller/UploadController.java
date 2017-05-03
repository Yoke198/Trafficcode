package com.lovis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UploadController {

	@RequestMapping(value = "upload.do", method = RequestMethod.POST)
    public String upload(HttpServletRequest request, HttpServletResponse response,  ModelMap model) {
		String s1 = request.getParameter("i1");
		String s2 = request.getParameter("i2");
		String s3 = request.getParameter("i3");
		String s4 = request.getParameter("i4");
        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s3);
        System.out.println(s4);
        return "upload";
    }	
}
