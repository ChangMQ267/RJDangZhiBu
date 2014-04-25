package com.qianyan.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qianyan.dao.AdminDao;
import com.qianyan.model.Admin;
import com.qianyan.utils.PageModel;

@Component
public class AdminService {

	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}
	
	@Resource
	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	/**
	 * 登录验证
	 */
	public Admin verificate(String username, String password) {
		return adminDao.verificate(username, password);
	}
	
	/**
	 * 添加管理员
	 */
	public void add(Admin admin) {
		adminDao.save(admin);
	}
	
	/**
	 * 通过Id删除用户
	 */
	public void delete(int adminId) {
		adminDao.deleteById(Admin.class, adminId);
	}
	
	/**
	 * 通过Admin对象直接删除
	 */
	public void delete(Admin admin) {
		adminDao.delete(admin);
	}
	/**
	 * 批量删除
	 */
	public void batchDel(String idStr) {
		adminDao.batchDel(idStr);
	}
	
	/**
	 * 更新管理员信息
	 */
	public void update(Admin admin) {
		adminDao.update(admin);
	}
	
	/**
	 * 通过Id得到管理员对象
	 */
	public Admin findById(int id) {
		return adminDao.findById(Admin.class, id);
	}
	
	/**
	 * 显示所有管理员信息
	 */
	public PageModel findAdminList(int currentPage, int pageSize) {
		return adminDao.serachAdmins(currentPage, pageSize);
	}
	/**
	 * 检测管理员是否存在
	 */
	public  boolean checkExist(String username) {
		return adminDao.checkExist(username);
	}
}
