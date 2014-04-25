package com.qianyan.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.qianyan.dao.InClassDao;
import com.qianyan.model.InClass;
import com.qianyan.utils.PageModel;

@Component
public class InClassService {

	private InClassDao inClassDao;
	private UserInfoService userInfoService;
	
	
	/**
	 * 添加班级
	 */
	public void add(InClass InClass) {
		inClassDao.save(InClass);
	}
	
	/**
	 * 通过Id删除班级
	 */
	public void deleteById(int InClassId) {
		inClassDao.deleteById(InClass.class, InClassId);
	}
	
	/**
	 * 通过InClass对象直接删除
	 */
	public void delete(InClass InClass) {
		inClassDao.delete(InClass);
	}
	
	/**
	 * 更新班级信息
	 */
	public void update(InClass InClass) {
		inClassDao.update(InClass);
	}
	
	/**
	 * 通过Id得到班级对象
	 */
	public InClass findById(int id) {
		return inClassDao.findById(InClass.class, id);
	}
	
	/**
	 * 读取所有班级到pagemodel
	 */
	public PageModel listInClass(int currentPage, int pageSize) {
		return inClassDao.searchInClass(currentPage, pageSize);
	}
	/**
	 * 读取所有班级
	 */
	public List<InClass> listInClass() {
		return inClassDao.searchInClass();
	}
	
	/**
	 * 读取指定班级的所有学生
	 */
	public PageModel listUserInfo(int inClassId, int currentPage, int pageSize) {
		return userInfoService.listUserInfo(inClassId, currentPage, pageSize);
	}
	
	/**
	 * 读取指定专业的班级
	 */
	public List<InClass> listInClass(int professionalId) {
		return inClassDao.serchInClass(professionalId);
	}
	
	/**
	 * 返回一个pagemodel对象
	 * @param className
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public PageModel findByCName(String className, int currentPage, int pageSize) {
		return inClassDao.findByCName(className, currentPage, pageSize);
	}

	public List<InClass> listId(int professionalId) {
		return inClassDao.listId(professionalId);
	}

	public PageModel listPageModelByPId(int professionalId, int currentPage, int pageSize) {
		return inClassDao.listPageModelPId(professionalId, currentPage, pageSize);
	}

	@Resource
	public void setInClassDao(InClassDao inClassDao) {
		this.inClassDao = inClassDao;
	}

	public InClassDao getInClassDao() {
		return inClassDao;
	}
	
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}

	@Resource
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}

}
