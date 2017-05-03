package com.lovis.model;

import org.springframework.stereotype.Component;

@Component
public class ChangeModel {

	private int cId;
	private String cName;//ÐÞ¸ÄµÄ½»»ãÃû
	private String cType;//ÀàÐÍ
	private String cGreen;//ÂÌµÆÊ±¼ä
	private String cImage;//Í¼Æ¬
	private String cDesc;//ÃèÊö
	private int shangZgreen;//ÉÏ±ßÖ±ÐÐÂÌµÆ
	private int shangZyellow;//ÉÏ±ßÖ±ÐÐ»ÆµÆ
	private int shangLgreen;//ÉÏ±ß×ó×ªÂÌµÆ
	private int shangLyellow;//ÉÏ±ß×ó×ª»ÆµÆ
	private int zuoZgreen;//×ó±ßÖ±ÐÐÂÌµÆ
	private int zuoZyellow;//×ó±ßÖ±ÐÐ»ÆµÆ
	private int zuoLgreen;//×ó±ß×ó×ªÂÌµÆ
	private int zuoLyellow;//×ó±ß×ó×ª»ÆµÆ	
	private int xiaZgreen;//ÏÂ±ßÖ±ÐÐÂÌµÆ
	private int xiaZyellow;//ÏÂ±ßÖ±ÐÐ»ÆµÆ
	private int xiaLgreen;//ÏÂ±ß×ó×ªÂÌµÆ
	private int xiaLyellow;//ÏÂ±ß×ó×ª»ÆµÆ
	private int youZgreen;//ÓÒ±ßÖ±ÐÐÂÌµÆ
	private int youZyellow;//ÓÒ±ßÖ±ÐÐ»ÆµÆ
	private int youLgreen;//ÓÒ±ß×ó×ªÂÌµÆ
	private int youLyellow;//ÓÒ±ß×ó×ª»ÆµÆ	
	
	public int getXiaZgreen() {
		return xiaZgreen;
	}
	public void setXiaZgreen(int xiaZgreen) {
		this.xiaZgreen = xiaZgreen;
	}
	public int getXiaZyellow() {
		return xiaZyellow;
	}
	public void setXiaZyellow(int xiaZyellow) {
		this.xiaZyellow = xiaZyellow;
	}
	public int getXiaLgreen() {
		return xiaLgreen;
	}
	public void setXiaLgreen(int xiaLgreen) {
		this.xiaLgreen = xiaLgreen;
	}
	public int getXiaLyellow() {
		return xiaLyellow;
	}
	public void setXiaLyellow(int xiaLyellow) {
		this.xiaLyellow = xiaLyellow;
	}
	public int getYouZgreen() {
		return youZgreen;
	}
	public void setYouZgreen(int youZgreen) {
		this.youZgreen = youZgreen;
	}
	public int getYouZyellow() {
		return youZyellow;
	}
	public void setYouZyellow(int youZyellow) {
		this.youZyellow = youZyellow;
	}
	public int getYouLgreen() {
		return youLgreen;
	}
	public void setYouLgreen(int youLgreen) {
		this.youLgreen = youLgreen;
	}
	public int getYouLyellow() {
		return youLyellow;
	}
	public void setYouLyellow(int youLyellow) {
		this.youLyellow = youLyellow;
	}
	public String getcDesc() {
		return cDesc;
	}
	public void setcDesc(String cDesc) {
		this.cDesc = cDesc;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcType() {
		return cType;
	}
	public void setcType(String cType) {
		this.cType = cType;
	}
	public String getcGreen() {
		return cGreen;
	}
	public void setcGreen(String cGreen) {
		this.cGreen = cGreen;
	}
	public String getcImage() {
		return cImage;
	}
	public void setcImage(String cImage) {
		this.cImage = cImage;
	}
	public int getShangZgreen() {
		return shangZgreen;
	}
	public void setShangZgreen(int shangZgreen) {
		this.shangZgreen = shangZgreen;
	}
	public int getShangZyellow() {
		return shangZyellow;
	}
	public void setShangZyellow(int shangZyellow) {
		this.shangZyellow = shangZyellow;
	}
	public int getShangLgreen() {
		return shangLgreen;
	}
	public void setShangLgreen(int shangLgreen) {
		this.shangLgreen = shangLgreen;
	}
	public int getShangLyellow() {
		return shangLyellow;
	}
	public void setShangLyellow(int shangLyellow) {
		this.shangLyellow = shangLyellow;
	}
	public int getZuoZgreen() {
		return zuoZgreen;
	}
	public void setZuoZgreen(int zuoZgreen) {
		this.zuoZgreen = zuoZgreen;
	}
	public int getZuoZyellow() {
		return zuoZyellow;
	}
	public void setZuoZyellow(int zuoZyellow) {
		this.zuoZyellow = zuoZyellow;
	}
	public int getZuoLgreen() {
		return zuoLgreen;
	}
	public void setZuoLgreen(int zuoLgreen) {
		this.zuoLgreen = zuoLgreen;
	}
	public int getZuoLyellow() {
		return zuoLyellow;
	}
	public void setZuoLyellow(int zuoLyellow) {
		this.zuoLyellow = zuoLyellow;
	}
	@Override
	public String toString() {
		return "ChangeModel [cDesc=" + cDesc + ", cGreen=" + cGreen + ", cId="
				+ cId + ", cImage=" + cImage + ", cName=" + cName + ", cType="
				+ cType + ", shangLgreen=" + shangLgreen + ", shangLyellow="
				+ shangLyellow + ", shangZgreen=" + shangZgreen
				+ ", shangZyellow=" + shangZyellow + ", xiaLgreen=" + xiaLgreen
				+ ", xiaLyellow=" + xiaLyellow + ", xiaZgreen=" + xiaZgreen
				+ ", xiaZyellow=" + xiaZyellow + ", youLgreen=" + youLgreen
				+ ", youLyellow=" + youLyellow + ", youZgreen=" + youZgreen
				+ ", youZyellow=" + youZyellow + ", zuoLgreen=" + zuoLgreen
				+ ", zuoLyellow=" + zuoLyellow + ", zuoZgreen=" + zuoZgreen
				+ ", zuoZyellow=" + zuoZyellow + "]";
	}

	
}
