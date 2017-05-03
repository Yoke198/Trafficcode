package com.lovis.model;

import org.springframework.stereotype.Component;

/**
 * 
 * @author Administrator
 *
 */
@Component
public class DrivingModel {

	private int id;
	private String gender;
	private String issued_by;
	private String issue_date;
	private String license_number;
	private String birthday;
	private String version;
	private String address;
	private String nationality;
	private String valid_date;
	private String valid_for;
	private String name;
	private int uid;
	
	public String getValid_for() {
		return valid_for;
	}
	public void setValid_for(String validFor) {
		valid_for = validFor;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIssued_by() {
		return issued_by;
	}
	public void setIssued_by(String issuedBy) {
		issued_by = issuedBy;
	}
	public String getIssue_date() {
		return issue_date;
	}
	public void setIssue_date(String issueDate) {
		issue_date = issueDate;
	}
	public String getLicense_number() {
		return license_number;
	}
	public void setLicense_number(String licenseNumber) {
		license_number = licenseNumber;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getValid_date() {
		return valid_date;
	}
	public void setValid_date(String validDate) {
		valid_date = validDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "DrivingModel [address=" + address + ", birthday=" + birthday
				+ ", gender=" + gender + ", issue_date=" + issue_date
				+ ", issued_by=" + issued_by + ", license_number="
				+ license_number + ", name=" + name + ", nationality="
				+ nationality + ", valid_date=" + valid_date + ", version="
				+ version + "]";
	}

}
