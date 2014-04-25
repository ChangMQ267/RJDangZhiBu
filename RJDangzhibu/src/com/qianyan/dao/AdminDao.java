package com.qianyan.dao;

import com.qianyan.model.Admin;
import com.qianyan.utils.PageModel;

public interface AdminDao extends BaseDao<Admin,Integer> {
	
	/**
	 * 用户验证
	 */
	public Admin verificate(String username, String password);
	
	/**
	 * 管理员列表
	 */
	public PageModel serachAdmins(int currentPage, int pageSize);
	/**
	 * 判断要添加的用户是否存在
	 */
	public boolean checkExist(String username);
	/**
	 * 批量删除
	 * @param idStr
	 */
	public void batchDel(String idStr);
	
}
