package com.lovis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lovis.model.CardModel;
import com.lovis.model.ChangeModel;
import com.lovis.model.CrossRoadModel;
import com.lovis.model.DetailModel;
import com.lovis.model.DriLicenseModel;
import com.lovis.model.DrivingModel;
import com.lovis.model.SearchModel;
import com.lovis.model.UserModel;

public interface InformationMapper {

	//��¼
	public UserModel getUser(String user);
	
	//ע��
	public int getResult(UserModel user);
	
	//ע������Ψһ��֤
	public UserModel getEmail(String email);
	
	//·����ϸ��Ϣ
	public List<CrossRoadModel> getCrossRoad(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);
	
	//��ȡ��¼����
	public long getTotalCrossRoadCount();
	
	
	//·��������Ϣ
	public List<SearchModel> selectSearchCrossRoad(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);
	
	//��ȡ����·��
	public List<SearchModel> showSearchedProductsByPage(@Param(value="startPos") Integer startPos,
			@Param(value="pageSize") Integer pageSize, @Param(value="search") String search);
	
	//��ȡ������¼����
	public long getTotalSearchCount(@Param(value="search") String search);
	
	//��ȡ����ҳ����Ϣ
	public List<DetailModel> getRoadDetail(@Param(value="crossId") Integer crossId);
	
	//�޸�����ҳ����Ϣ
	public int ChangeRoadDetail(ChangeModel cm);
	
	//ɾ��ҳ��
	public int delectRoad(@Param(value="cId") Integer cId);
	
	//���·��
	public int addRoad(ChangeModel cm);
	
	//ͼƬ��½
	public UserModel selectUserByImg(@Param(value="img")String img);
	
	//���֤
	public int uploadCard(CardModel cm);
	
	//�����ϴ�
	public int uploadDriving(DrivingModel icm);
	
	//��ʻ֤�ϴ�
	public int uploadDriLicense(DriLicenseModel dlm);
	
	//�鿴���֤
	public List<CardModel> getCard(@Param(value="uid") Integer uid);
	
	//�鿴����
	public List<DrivingModel> getDriving(@Param(value="uid") Integer uid);
	
	//�鿴��ʻ֤
	public List<DriLicenseModel> getDriLicense(@Param(value="uid") Integer uid);
	
	//ɾ�����֤
	public int deleteCard(@Param(value="id")Integer id);
	
	//ɾ������
	public int deleteDriving(@Param(value="did")Integer did);
	
	//ɾ����ʻ֤
	public int deleteDriLicense(@Param(value="dlid")Integer dlid);
	
}











