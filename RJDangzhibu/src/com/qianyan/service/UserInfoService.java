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
	 * 登录验证 
	 */
	public UserInfo verificate(String username,String password) {
		return userInfoDao.verificate(username, password);
	}
	/**
	 * 添加一个用户
	 */
	public void add(UserInfo userInfo) {
		userInfoDao.save(userInfo);
	}
	
	/**
	 * 通过Id删除UserInfo对象
	 */
	public void deleteById(int id) {
		userInfoDao.deleteById(UserInfo.class, id);
	}
	
	/**
	 * 通过UsefInfo对象删除
	 */
	public void delete(UserInfo userInfo) {
		userInfoDao.delete(userInfo);
	}
	/**
	 * 批量删除
	 */
	public void batchDel(String idStr) {
		userInfoDao.batchDel(idStr);
	}
	/**
	 * 更新UserInfo对象
	 */
	public void update(UserInfo userInfo) {
		userInfoDao.update(userInfo);
	}
	
	/**
	 * 通过Id得到一个UserInfo对象
	 */
	public UserInfo findById(int id) {
		return userInfoDao.findById(UserInfo.class, id);
	}
	/**
	 * 通过用户账户（学号）查找;模糊查询
	 */
	public PageModel findByUName(String username, int currentPage, int pageSize) {
		return userInfoDao.searchUserInfoByUName(username, currentPage, pageSize);
	}
	/**
	 * 通过用户姓名查找；模糊查询
	 */
	public PageModel findBySName(String studentName, int currentPage, int pageSize){
		return userInfoDao.searchUserInfoBySName(studentName, currentPage, pageSize);
	}
	/**
	 * 通过班级id读出该班级的全部学生
	 */
	public PageModel listUserInfo(int inClassId, int currentPage, int pageSize) {
		return userInfoDao.searchUserInfo(inClassId, currentPage, pageSize);
	}
	/**
	 * 通过专业id读出该专业所有学生
	 */
	public PageModel listUserInfoByPId(int professionalId, int currentPage, int pageSize){
		return userInfoDao.searchUserInfoByPId(professionalId, currentPage, pageSize);
	}
	/**
	 * 读出所有学生信息
	 * @return
	 */
	public PageModel listUserInfo(int currentPage,int pageSize) {
		return userInfoDao.searchUserInfo(currentPage,pageSize);
	}
	
	public List<UserInfo> listId(int inClassId) {
		return userInfoDao.listId(inClassId);
	}
	/**
	 * 判断该用户是否存在
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
