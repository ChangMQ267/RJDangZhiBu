package com.qianyan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qianyan.dao.UserInfoDao;
import com.qianyan.model.UserInfo;
import com.qianyan.utils.PageModel;

@Component
public class UserInfoService {

	private UserInfoDao userInfoDao;
	
	/**
	 * ��¼��֤ 
	 */
	public UserInfo verificate(String username,String password) {
		return userInfoDao.verificate(username, password);
	}
	/**
	 * ���һ���û�
	 */
	public void add(UserInfo userInfo) {
		userInfoDao.save(userInfo);
	}
	
	/**
	 * ͨ��Idɾ��UserInfo����
	 */
	public void deleteById(int id) {
		userInfoDao.deleteById(UserInfo.class, id);
	}
	
	/**
	 * ͨ��UsefInfo����ɾ��
	 */
	public void delete(UserInfo userInfo) {
		userInfoDao.delete(userInfo);
	}
	/**
	 * ����ɾ��
	 */
	public void batchDel(String idStr) {
		userInfoDao.batchDel(idStr);
	}
	/**
	 * ����UserInfo����
	 */
	public void update(UserInfo userInfo) {
		userInfoDao.update(userInfo);
	}
	
	/**
	 * ͨ��Id�õ�һ��UserInfo����
	 */
	public UserInfo findById(int id) {
		return userInfoDao.findById(UserInfo.class, id);
	}
	/**
	 * ͨ���û��˻���ѧ�ţ�����;ģ����ѯ
	 */
	public PageModel findByUName(String username, int currentPage, int pageSize) {
		return userInfoDao.searchUserInfoByUName(username, currentPage, pageSize);
	}
	/**
	 * ͨ���û��������ң�ģ����ѯ
	 */
	public PageModel findBySName(String studentName, int currentPage, int pageSize){
		return userInfoDao.searchUserInfoBySName(studentName, currentPage, pageSize);
	}
	/**
	 * ͨ���༶id�����ð༶��ȫ��ѧ��
	 */
	public PageModel listUserInfo(int inClassId, int currentPage, int pageSize) {
		return userInfoDao.searchUserInfo(inClassId, currentPage, pageSize);
	}
	/**
	 * ͨ��רҵid������רҵ����ѧ��
	 */
	public PageModel listUserInfoByPId(int professionalId, int currentPage, int pageSize){
		return userInfoDao.searchUserInfoByPId(professionalId, currentPage, pageSize);
	}
	/**
	 * ��������ѧ����Ϣ
	 * @return
	 */
	public PageModel listUserInfo(int currentPage,int pageSize) {
		return userInfoDao.searchUserInfo(currentPage,pageSize);
	}
	
	public List<UserInfo> listId(int inClassId) {
		return userInfoDao.listId(inClassId);
	}
	/**
	 * �жϸ��û��Ƿ����
	 * @param username
	 * @return
	 */
	public boolean checkExist(String username) {
		return userInfoDao.checkExist(username);
	}
	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}
	
	@Resource
	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}
	

}
