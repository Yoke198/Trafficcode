package com.lovis.model;

public class DriLicenseModel {

	private int id;
	private String issue_date;
    private String vehicle_type;
    private String issued_by;
    private String vin;
    private String plate_no;
    private String use_character;
    private String address;
    private String owner;
    private String models;
    private String engine_no;
    private String register_date;
    private int uid;
    
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
	public String getIssue_date() {
		return issue_date;
	}
	public void setIssue_date(String issueDate) {
		issue_date = issueDate;
	}
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicleType) {
		vehicle_type = vehicleType;
	}
	public String getIssued_by() {
		return issued_by;
	}
	public void setIssued_by(String issuedBy) {
		issued_by = issuedBy;
	}
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getPlate_no() {
		return plate_no;
	}
	public void setPlate_no(String plateNo) {
		plate_no = plateNo;
	}
	public String getUse_character() {
		return use_character;
	}
	public void setUse_character(String useCharacter) {
		use_character = useCharacter;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getModels() {
		return models;
	}
	public void setModels(String models) {
		this.models = models;
	}
	public String getEngine_no() {
		return engine_no;
	}
	public void setEngine_no(String engineNo) {
		engine_no = engineNo;
	}
	
	
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String registerDate) {
		register_date = registerDate;
	}
	@Override
	public String toString() {
		return "DriLicenseModel [address=" + address + ", engine_no="
				+ engine_no + ", issue_date=" + issue_date + ", issued_by="
				+ issued_by + ", models=" + models + ", owner=" + owner
				+ ", plate_no=" + plate_no + ", use_character=" + use_character
				+ ", vehicle_type=" + vehicle_type + ", vin=" + vin + "]";
	}
    
    
}
