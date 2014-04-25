package com.qianyan.dao;

import java.util.List;

import com.qianyan.model.UserInfo;
import com.qianyan.utils.PageModel;

public interface UserInfoDao extends BaseDao<UserInfo, Integer>{

	public PageModel searchUserInfo(int currentPage, int pageSize);
	
	public PageModel searchUserInfo(int inClassId,int currentPage, int pageSize);
	
	public PageModel searchUserInfoByPId(int professionalId, int currentPage, int pageSize);
	
	public PageModel searchUserInfoByUName(String username, int currentPage, int pageSize);
	
	public PageModel searchUserInfoBySName(String studentName, int currentPage, int pageSize);
	
	public List<UserInfo> listId(int inClassId);
	
	/*
	 * 用户验证
	 */
	public UserInfo verificate(String username, String password);
	
	public boolean checkExist(String username);
	
	public void batchDel(String idStr);
}
