package com.qianyan.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Component;

import com.qianyan.dao.UserInfoDao;
import com.qianyan.model.UserInfo;
import com.qianyan.utils.PageModel;

@Component("userInfoDao")
public class UserInfoDaoImpl extends BaseDaoImpl<UserInfo, Integer> implements UserInfoDao{

	@Override
	public PageModel searchUserInfo(int currentPage, int pageSize) {
		String hql = "from UserInfo user order by id";
		return searchPaginated(hql, currentPage, pageSize);
	}

	@Override
	public UserInfo verificate(String username, String password) {
		Query query = getSession().createQuery("from UserInfo u where u.username = ? and u.password = ?")
				.setString(0, username)
				.setString(1, password);
		UserInfo u = (UserInfo)query.uniqueResult();
		return u;
	}

	@Override
	public PageModel searchUserInfo(int inClassId, int currentPage, int pageSize) {
		String hql1 = "from UserInfo u where u.inClass = " + inClassId + "order by id";
		return searchPaginated(hql1, currentPage, pageSize);
	}

	@Override
	public PageModel searchUserInfoByPId(int professionalId, int currentPage, int pageSize) {
		String hql2 = "from UserInfo u where u.inClass.professional = " + professionalId + "order by id";
		return searchPaginated(hql2, currentPage, pageSize);
	}

	@Override
	public PageModel searchUserInfoByUName(String username, int currentPage, int pageSize) {
		String hql3 = "from UserInfo u where u.username like '%"+username+"%' order by id";
		return searchPaginated(hql3, currentPage, pageSize);
	}

	@Override
	public PageModel searchUserInfoBySName(String studentName, int currentPage, int pageSize) {
		String hql4 = "from UserInfo u where u.studentName like '%"+studentName+"%' order by id";
		return searchPaginated(hql4, currentPage, pageSize);
	}

	@Override
	public List<UserInfo> listId(int inClassId) {
		String hql5 = "select id from UserInfo where inClass = " + inClassId;
		return search(hql5);
	}

	@Override
	public boolean checkExist(String username) {
		String hql6 = "select count(*) from UserInfo where username = ?";
		return checkExist(username, hql6);
	}

	@Override
	public void batchDel(String idStr) {
		String hql7 = "delete from UserInfo where id in(" + idStr + ")";
		this.delete(hql7);
	}

}
