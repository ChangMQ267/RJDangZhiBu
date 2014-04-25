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
	 * ��Ӱ༶
	 */
	public void add(InClass InClass) {
		inClassDao.save(InClass);
	}
	
	/**
	 * ͨ��Idɾ���༶
	 */
	public void deleteById(int InClassId) {
		inClassDao.deleteById(InClass.class, InClassId);
	}
	
	/**
	 * ͨ��InClass����ֱ��ɾ��
	 */
	public void delete(InClass InClass) {
		inClassDao.delete(InClass);
	}
	
	/**
	 * ���°༶��Ϣ
	 */
	public void update(InClass InClass) {
		inClassDao.update(InClass);
	}
	
	/**
	 * ͨ��Id�õ��༶����
	 */
	public InClass findById(int id) {
		return inClassDao.findById(InClass.class, id);
	}
	
	/**
	 * ��ȡ���а༶��pagemodel
	 */
	public PageModel listInClass(int currentPage, int pageSize) {
		return inClassDao.searchInClass(currentPage, pageSize);
	}
	/**
	 * ��ȡ���а༶
	 */
	public List<InClass> listInClass() {
		return inClassDao.searchInClass();
	}
	
	/**
	 * ��ȡָ���༶������ѧ��
	 */
	public PageModel listUserInfo(int inClassId, int currentPage, int pageSize) {
		return userInfoService.listUserInfo(inClassId, currentPage, pageSize);
	}
	
	/**
	 * ��ȡָ��רҵ�İ༶
	 */
	public List<InClass> listInClass(int professionalId) {
		return inClassDao.serchInClass(professionalId);
	}
	
	/**
	 * ����һ��pagemodel����
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
