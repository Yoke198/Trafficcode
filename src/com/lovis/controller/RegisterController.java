package com.lovis.controller;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.net.ssl.SSLException;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lovis.model.UserModel;
import com.lovis.service.RegisterService;

@Controller
public class RegisterController {
	
	@ExceptionHandler
	public ModelAndView doException(Exception e){
		
		Map<String, Object> maps = new HashMap<String, Object>();
		if(e instanceof IOException){
			maps.put("error", "��ѡ��ͼƬ");
		}else if(e instanceof MaxUploadSizeExceededException){
			long maxUploadSize = ((MaxUploadSizeExceededException) e).getMaxUploadSize();
			maps.put("error", "ͼƬ̫�󣬲��ܳ���"+(maxUploadSize/1048576)+"M");
		}else{
			maps.put("error", "�ϴ�ʧ��");
		}
		
		return new ModelAndView("register", maps);
	}	
	
	@Resource(name="registerServiceImpl")
	private RegisterService registerService;
	
	@RequestMapping(value="register.do")
	public String register(MultipartFile file, HttpServletRequest request, UserModel userModel,String confirm,HttpServletRequest s,String code,Model model) throws IllegalStateException, IOException{
		
		if(userModel.getUser() == null){
			return "redirect:/cregister.do";
		}
		
		//��ȡ�ļ�ԭ��
		String originalFilename = file.getOriginalFilename();
		//��ȡ��ַ
		String contextPath = request.getSession().getServletContext().getRealPath("img");
		
		String iType="jpg,jpeg,png";
		String[] type = iType.split(",");
		int beginIndex = originalFilename.lastIndexOf(".");
		//��ȡ�ļ���׺
		String fType = originalFilename.substring(beginIndex+1).toLowerCase();
		
		 if(!originalFilename.isEmpty()){
			if(!fType.equals(type[0])&&!fType.equals(type[1])&&!fType.equals(type[2])){
				model.addAttribute("error","ͼƬ��ʽ����");
				return "imglogin";
			}
			}
		//ƴ�������ļ�·��
		File targetFile = new File(contextPath+"\\"+originalFilename);
		//�ж�·���Ƿ����
		if(!targetFile.exists()){
			targetFile.mkdirs();
		}
		//��fileд�뱾�ش���
		file.transferTo(targetFile);
		//��ȡ��ַ
	    File f = new File(targetFile.toString());
		byte[] buff = getBytesFromFile(f);
		String url = "https://api-cn.faceplusplus.com/facepp/v3/detect";
	    HashMap<String, String> map = new HashMap<String, String>();
	    HashMap<String, byte[]> byteMap = new HashMap<String, byte[]>();
	    map.put("api_key", "Jf_YFbfNxgVgwSbI-975eHkOiBmgNXGZ");
	    map.put("api_secret", "H9XPbPDcDXGFEfzFV-dYhk2NpUDi7qKx");
	    byteMap.put("image_file", buff);
	    try{
	    	byte[] bacd = post(url, map, byteMap);
            String str = new String(bacd);
            if(str.length()==47){
            	model.addAttribute("error","��������������");
            	return "register";
            }
            //json�ַ���תΪJSONObejct
            JSONObject fromObject = JSONObject.fromObject(str);
            //System.out.println(fromObject);
            //��ȡͼƬid
            String imageId = fromObject.getString("image_id");
            //��ͼƬid����
            userModel.setImg(imageId);
            
        //��ѯ
		String user = userModel.getUser().replaceAll(" ", "");//��ȡǰ̨�û���
		String password = userModel.getPassword().replaceAll(" ", "");//����
		String email = userModel.getEmail();//����
		String format = "^([a-zA-Z0-9]+[-|\\.]?)+[a-zA-Z0-9]@([a-zA-Z0-9]+(-[a-zA-Z0-9]+)?\\.)+[a-zA-Z]{2,3}$";//��֤����������ʽ
		String attribute = (String) s.getSession().getAttribute("randCheckCode");//session�е���֤��
		
		//��֤����Ψһ
		UserModel exist = registerService.getEmail(email);
		
		//�ж��û��������Ƿ����Ҫ��
		if(user.length() >=0 && user.length() < 3){
			model.addAttribute("userError", "�û������Ȳ���С��3λ��");
			return "register";
			
		}else if(password.length() >=0 && password.length() < 5){
			model.addAttribute("passwordError", "���볤�Ȳ���С��5λ��");
			return "register";
			
		}else if(!password.equals(confirm)){
			model.addAttribute("confirmError", "�������벻һ��");
			return "register";
			
		}else if(!email.matches(format)){
			model.addAttribute("emailError", "�����ʽ����");
			return "register";
			
		}else if(code.equals("") || code==null){
			model.addAttribute("codeError", "��������֤��");
			return "register";
			
		}else if(!code.equalsIgnoreCase(attribute)){
			model.addAttribute("codeError", "��֤�벻��ȷ������������");
			return "register";
			
		}else{
			if(exist == null){//����Ψһ
				registerService.getResult(userModel);
				return "redirect:/login.do";
			}else{
				
			String iemail = exist.getEmail();//��ȡ���ݿ�����
			
			if(email.equals(iemail)){
				model.addAttribute("emailError", "�����ѱ�ע��");
				return "register";
			}
			
			}//exist End
			return "redirect:/index.do";
		}
	    }catch (Exception e) {
        	e.printStackTrace();
		}
	    return "redirect:/index.do";
		
	}
	

	private final static int CONNECT_TIME_OUT = 30000;
	private final static int READ_OUT_TIME = 50000;
	private static String boundaryString = getBoundary();
	protected static byte[] post(String url, HashMap<String, String> map, HashMap<String, byte[]> fileMap) throws Exception {
	    HttpURLConnection conne;
	    URL url1 = new URL(url);
	    conne = (HttpURLConnection) url1.openConnection();
	    conne.setDoOutput(true);
	    conne.setUseCaches(false);
	    conne.setRequestMethod("POST");
	    conne.setConnectTimeout(CONNECT_TIME_OUT);
	    conne.setReadTimeout(READ_OUT_TIME);
	    conne.setRequestProperty("accept", "*/*");
	    conne.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundaryString);
	    conne.setRequestProperty("connection", "Keep-Alive");
	    conne.setRequestProperty("user-agent", "Mozilla/4.0 (compatible;MSIE 6.0;Windows NT 5.1;SV1)");
	    DataOutputStream obos = new DataOutputStream(conne.getOutputStream());
	    Iterator iter = map.entrySet().iterator();
	    while(iter.hasNext()){
	        Map.Entry<String, String> entry = (Map.Entry) iter.next();
	        String key = entry.getKey();
	        String value = entry.getValue();
	        obos.writeBytes("--" + boundaryString + "\r\n");
	        obos.writeBytes("Content-Disposition: form-data; name=\"" + key
	                + "\"\r\n");
	        obos.writeBytes("\r\n");
	        obos.writeBytes(value + "\r\n");
	    }
	    if(fileMap != null && fileMap.size() > 0){
	        Iterator fileIter = fileMap.entrySet().iterator();
	        while(fileIter.hasNext()){
	            Map.Entry<String, byte[]> fileEntry = (Map.Entry<String, byte[]>) fileIter.next();
	            obos.writeBytes("--" + boundaryString + "\r\n");
	            obos.writeBytes("Content-Disposition: form-data; name=\"" + fileEntry.getKey()
	                    + "\"; filename=\"" + encode(" ") + "\"\r\n");
	            obos.writeBytes("\r\n");
	            obos.write(fileEntry.getValue());
	            obos.writeBytes("\r\n");
	        }
	    }
	    obos.writeBytes("--" + boundaryString + "--" + "\r\n");
	    obos.writeBytes("\r\n");
	    obos.flush();
	    obos.close();
	    InputStream ins = null;
	    int code = conne.getResponseCode();
	    try{
	        if(code == 200){
	            ins = conne.getInputStream();
	        }else{
	            ins = conne.getErrorStream();
	        }
	    }catch (SSLException e){
	        e.printStackTrace();
	        return new byte[0];
	    }
	    ByteArrayOutputStream baos = new ByteArrayOutputStream();
	    byte[] buff = new byte[4096];
	    int len;
	    while((len = ins.read(buff)) != -1){
	        baos.write(buff, 0, len);
	    }
	    byte[] bytes = baos.toByteArray();
	    ins.close();
	    return bytes;
	}
	private static String getBoundary() {
	    StringBuilder sb = new StringBuilder();
	    Random random = new Random();
	    for(int i = 0; i < 32; ++i) {
	        sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-".charAt(random.nextInt("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_".length())));
	    }
	    return sb.toString();
	}
	private static String encode(String value) throws Exception{
	    return URLEncoder.encode(value, "UTF-8");
	    }
	    
	    public static byte[] getBytesFromFile(File f) {
	        if (f == null) {
	            return null;
	        }
	        try {
	            FileInputStream stream = new FileInputStream(f);
	            ByteArrayOutputStream out = new ByteArrayOutputStream(1000);
	            byte[] b = new byte[1000];
	            int n;
	            while ((n = stream.read(b)) != -1)
	                out.write(b, 0, n);
	            stream.close();
	            out.close();
	            return out.toByteArray();
	        } catch (IOException e) {
	        }
	        return null;
	    }	
	
}
