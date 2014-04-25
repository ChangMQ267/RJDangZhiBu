package com.qianyan.dao;

import com.qianyan.model.Admin;
import com.qianyan.utils.PageModel;

public interface AdminDao extends BaseDao<Admin,Integer> {
	
	/**
	 * �û���֤
	 */
	public Admin verificate(String username, String password);
	
	/**
	 * ����Ա�б�
	 */
	public PageModel serachAdmins(int currentPage, int pageSize);
	/**
	 * �ж�Ҫ��ӵ��û��Ƿ����
	 */
	public boolean checkExist(String username);
	/**
	 * ����ɾ��
	 * @param idStr
	 */
	public void batchDel(String idStr);
	
}
