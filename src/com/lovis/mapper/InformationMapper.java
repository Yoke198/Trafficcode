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

	//登录
	public UserModel getUser(String user);
	
	//注册
	public int getResult(UserModel user);
	
	//注册邮箱唯一验证
	public UserModel getEmail(String email);
	
	//路口详细信息
	public List<CrossRoadModel> getCrossRoad(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);
	
	//获取记录总数
	public long getTotalCrossRoadCount();
	
	
	//路口搜索信息
	public List<SearchModel> selectSearchCrossRoad(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);
	
	//获取搜索路口
	public List<SearchModel> showSearchedProductsByPage(@Param(value="startPos") Integer startPos,
			@Param(value="pageSize") Integer pageSize, @Param(value="search") String search);
	
	//获取搜索记录总数
	public long getTotalSearchCount(@Param(value="search") String search);
	
	//获取详情页面信息
	public List<DetailModel> getRoadDetail(@Param(value="crossId") Integer crossId);
	
	//修改详情页面信息
	public int ChangeRoadDetail(ChangeModel cm);
	
	//删除页面
	public int delectRoad(@Param(value="cId") Integer cId);
	
	//添加路口
	public int addRoad(ChangeModel cm);
	
	//图片登陆
	public UserModel selectUserByImg(@Param(value="img")String img);
	
	//身份证
	public int uploadCard(CardModel cm);
	
	//驾照上传
	public int uploadDriving(DrivingModel icm);
	
	//行驶证上传
	public int uploadDriLicense(DriLicenseModel dlm);
	
	//查看身份证
	public List<CardModel> getCard(@Param(value="uid") Integer uid);
	
	//查看驾照
	public List<DrivingModel> getDriving(@Param(value="uid") Integer uid);
	
	//查看行驶证
	public List<DriLicenseModel> getDriLicense(@Param(value="uid") Integer uid);
	
	//删除身份证
	public int deleteCard(@Param(value="id")Integer id);
	
	//删除驾照
	public int deleteDriving(@Param(value="did")Integer did);
	
	//删除行驶证
	public int deleteDriLicense(@Param(value="dlid")Integer dlid);
	
}











