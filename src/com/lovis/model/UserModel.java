package com.lovis.model;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 * 储存用户信息
 * 
 * user:用户名
 * password:密码
 * email:邮箱
 * img : 图片URl
 * @author lovis
 *
 */
@Component
public class UserModel {

	private int uid;
	private String user;
	private String password;
	private String email;
	private String img;

	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
