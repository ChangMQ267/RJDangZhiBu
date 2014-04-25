package com.qianyan.dao.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Component;

import com.qianyan.dao.AdminDao;
import com.qianyan.model.Admin;
import com.qianyan.utils.PageModel;

@Component("adminDao")
public class AdminDaoImpl extends BaseDaoImpl<Admin,Integer> implements AdminDao{

	/*
	 * 管理员登陆验证
	 */
	@Override
	public Admin verificate(String username, String password) {
		Query query = this.getSession().createQuery("from Admin a where a.username = ? and a.password = ?")
				.setString(0, username).setString(1, password);
		Admin admin = (Admin)query.uniqueResult();
		return admin;
	}

	@Override
	public PageModel serachAdmins(int currentPage, int pageSize) {
		String hql = "from Admin a";
		return searchPaginated(hql, currentPage, pageSize);
	}

	@Override
	public boolean checkExist(String username) {
		String hql = "select count(*) from Admin where username = ?";
		return checkExist(username, hql);
	}

	@Override
	public void batchDel(String idStr) {
		String hql = "delete from Admin where id in(" + idStr + ")";
		this.delete(hql);
	}

}
