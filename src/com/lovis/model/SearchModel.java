package com.lovis.model;

import org.springframework.stereotype.Component;

/**
 * ����
 * @author Administrator
 *
 */
@Component
public class SearchModel {

	private int crossId;
	private String crossName;//����·������
	private int crossNumber;//��������
	private String crossRoadName;//�����·��
	private static String crossGreen;//·���̵�ʱ��
	private String crossType;//·������
	private String crossImage;//ͼƬ
	private String crossHref;//����
	
	private int startPos = 1;//��ʼλ��
	private int pagesize = 2;//��ǰҳ��¼��
	
	private long totalSearchCount;//�ܼ�¼��(·������)
	
	private String search;//����ֵ
	
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
	public long getTotalSearchCount() {
		return totalSearchCount;
	}
	public void setTotalSearchCount(long totalSearchCount) {
		this.totalSearchCount = totalSearchCount;
	}
	public String getCrossImage() {
		return crossImage;
	}
	public void setCrossImage(String crossImage) {
		this.crossImage = crossImage;
	}
	public int getStartPos() {
		return startPos;
	}
	public void setStartPos(int startPos) {
		this.startPos = startPos;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public String getCrossHref() {
		return crossHref;
	}
	public void setCrossHref(String crossHref) {
		this.crossHref = crossHref;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
 

	
	
}
