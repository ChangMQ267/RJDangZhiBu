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
	 * ��¼��֤
	 */
	public Admin verificate(String username, String password) {
		return adminDao.verificate(username, password);
	}
	
	/**
	 * ��ӹ���Ա
	 */
	public void add(Admin admin) {
		adminDao.save(admin);
	}
	
	/**
	 * ͨ��Idɾ���û�
	 */
	public void delete(int adminId) {
		adminDao.deleteById(Admin.class, adminId);
	}
	
	/**
	 * ͨ��Admin����ֱ��ɾ��
	 */
	public void delete(Admin admin) {
		adminDao.delete(admin);
	}
	/**
	 * ����ɾ��
	 */
	public void batchDel(String idStr) {
		adminDao.batchDel(idStr);
	}
	
	/**
	 * ���¹���Ա��Ϣ
	 */
	public void update(Admin admin) {
		adminDao.update(admin);
	}
	
	/**
	 * ͨ��Id�õ�����Ա����
	 */
	public Admin findById(int id) {
		return adminDao.findById(Admin.class, id);
	}
	
	/**
	 * ��ʾ���й���Ա��Ϣ
	 */
	public PageModel findAdminList(int currentPage, int pageSize) {
		return adminDao.serachAdmins(currentPage, pageSize);
	}
	/**
	 * ������Ա�Ƿ����
	 */
	public  boolean checkExist(String username) {
		return adminDao.checkExist(username);
	}
}
