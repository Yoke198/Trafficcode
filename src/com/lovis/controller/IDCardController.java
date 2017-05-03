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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MaxUploadSizeExceededException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lovis.model.CardModel;
import com.lovis.service.CardService;

@Controller
public class IDCardController {
	
@RequestMapping(value="toIDCard.do")
public String toFace(){
	
	return "idcard";
}

@ExceptionHandler
public ModelAndView doException(Exception e){
	
	Map<String, Object> error = new HashMap<String, Object>();
	
	if(e instanceof MaxUploadSizeExceededException){
		long maxUploadSize = ((MaxUploadSizeExceededException) e).getMaxUploadSize();
		error.put("error", "上传文件太大，不能超过"+(maxUploadSize/1048576)+"M");
	}else if(e instanceof IOException){
		error.put("error", "请选择图片");
	}
	
	return new ModelAndView("idcard",error);
}

@Resource(name="cardServiceImpl")
private CardService cardService;

@RequestMapping(value="idcard.do")
public String face(MultipartFile file ,HttpServletRequest request, CardModel card , Model model) throws IllegalStateException, IOException{
	
    Object attribute = request.getSession().getAttribute("uid");//获取用户id
    
    if(attribute == null){//没有登录
    	model.addAttribute("check","请登录再进行操作");
    	return "idcard";
    }
	
	//获取地址
	String realPath = request.getSession().getServletContext().getRealPath("img");
	//获取原名
	String originalFilename = file.getOriginalFilename();
	
	String iType="jpg,jpeg,png";
	String[] type = iType.split(",");
	int beginIndex = originalFilename.lastIndexOf(".");
	//获取文件后缀
	String fType = originalFilename.substring(beginIndex+1).toLowerCase();
	
	 if(!originalFilename.isEmpty()){
		if(!fType.equals(type[0])&&!fType.equals(type[1])&&!fType.equals(type[2])){
			model.addAttribute("error","图片格式错误");
			return "idcard";
		}
		}else{
			model.addAttribute("error","请选择文件");
			return "idcard";
		}
	
	File tarFile = new File(realPath+"\\"+originalFilename);
	
	if(!tarFile.exists()){
		tarFile.mkdirs();
	}
	file.transferTo(tarFile);
	model.addAttribute("img", originalFilename);
	
	//获取地址
    File f = new File(tarFile.toString());
	byte[] buff = getBytesFromFile(f);
	String url = "https://api-cn.faceplusplus.com/cardpp/v1/ocridcard";
    HashMap<String, String> map = new HashMap<String, String>();
    HashMap<String, byte[]> byteMap = new HashMap<String, byte[]>();
    map.put("api_key", "Jf_YFbfNxgVgwSbI-975eHkOiBmgNXGZ");
    map.put("api_secret", "H9XPbPDcDXGFEfzFV-dYhk2NpUDi7qKx");
    byteMap.put("image_file", buff);
    try{
        byte[] bacd = post(url, map, byteMap);
        String str = new String(bacd);
        
        if(str.length()==47){
        	model.addAttribute("error", "并发数超过限制,请稍后重试");
        	return "idcard";
        }
        //转json
        JSONObject fromObject = JSONObject.fromObject(str);
        //System.out.println(fromObject);
        
        JSONArray jsonArray = fromObject.getJSONArray("cards");
        if(jsonArray.isEmpty()){
        	model.addAttribute("check", "未检测到身份证");
        	return "idcard";
        }
        JSONObject jsonObject = jsonArray.getJSONObject(0);
        //迭代
        Iterator keyIter = jsonObject.keys();
        Map<String, Object> maps = new HashMap<String , Object>();
        String key;
        String value;
        
        while(keyIter.hasNext()){
        	key = (String) keyIter.next();
        	value = jsonObject.getString(key);
        	maps.put(key, value);
        }
        //将人脸识别信息传给前台
        model.addAllAttributes(maps);
        
        if(attribute != null){
            int uid = Integer.parseInt(attribute.toString());
	        String side = maps.get("side").toString();
	        if(side.equals("front")){//如果身份证是正面
        	
            //传数据库
            String name = maps.get("name").toString();
            String gender = maps.get("gender").toString();
            String idCardNumber = maps.get("id_card_number").toString();
            String birthday = maps.get("birthday").toString();
            String race = maps.get("race").toString();
            String address = maps.get("address").toString();
            
            card.setUid(uid);
            card.setName(name);
            card.setGender(gender);
            card.setIdCardNumber(idCardNumber);
            card.setBirthday(birthday);
            card.setRace(race);
            card.setAddress(address);
            
            cardService.uploadCard(card);       	
        	
        }else if(side.equals("back")){//反面
        	
        	String name = maps.get("issued_by").toString();//签发机关
        	String valid_date = maps.get("valid_date").toString();//有效期限
        	
        }

        }
    }catch (Exception e) {
    	e.printStackTrace();
	}
	
	return "idcard";
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
