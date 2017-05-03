package com.lovis.model;

import org.springframework.stereotype.Component;

/**
 * 路口详情
 * @author Administrator
 *
 */
@Component
public class DetailModel {

	private int crossId;
	private String crossName;//交叉路口名称
	private int crossNumber;//交汇数量
	private String crossRoadName;//交叉道路名
	private String crossGreen;//路口绿灯时间
	private String crossType;//路口类型
	private String crossImage;//图片
	private String crossHref;//链接	
	private String crossDesc;//描述
	private int shangZgreen;//上边直行绿灯
	private int shangZyellow;//上边直行黄灯
	private int shangLgreen;//上边左转绿灯
	private int shangLyellow;//上边左转黄灯
	private int zuoZgreen;//左边直行绿灯
	private int zuoZyellow;//左边直行黄灯
	private int zuoLgreen;//左边左转绿灯
	private int zuoLyellow;//左边左转黄灯	
	private int xiaZgreen;//下边直行绿灯
	private int xiaZyellow;//下边直行黄灯
	private int xiaLgreen;//下边左转绿灯
	private int xiaLyellow;//下边左转黄灯
	private int youZgreen;//右边直行绿灯
	private int youZyellow;//右边直行黄灯
	private int youLgreen;//右边左转绿灯
	private int youLyellow;//右边左转黄灯		
	
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
	public int getCrossId() {
		return crossId;
	}
	public void setCrossId(int crossId) {
		this.crossId = crossId;
	}
	public String getCrossName() {
		return crossName;
	}
	public void setCrossName(String crossName) {
		this.crossName = crossName;
	}
	public int getCrossNumber() {
		return crossNumber;
	}
	public void setCrossNumber(int crossNumber) {
		this.crossNumber = crossNumber;
	}
	public String getCrossRoadName() {
		return crossRoadName;
	}
	public void setCrossRoadName(String crossRoadName) {
		this.crossRoadName = crossRoadName;
	}

	public String getCrossGreen() {
		return crossGreen;
	}
	public void setCrossGreen(String crossGreen) {
		this.crossGreen = crossGreen;
	}
	public String getCrossType() {
		return crossType;
	}
	public void setCrossType(String crossType) {
		this.crossType = crossType;
	}
	public String getCrossImage() {
		return crossImage;
	}
	public void setCrossImage(String crossImage) {
		this.crossImage = crossImage;
	}
	public String getCrossHref() {
		return crossHref;
	}
	public void setCrossHref(String crossHref) {
		this.crossHref = crossHref;
	}
	public String getCrossDesc() {
		return crossDesc;
	}
	public void setCrossDesc(String crossDesc) {
		this.crossDesc = crossDesc;
	}	
	
	
}















