package com.qianyan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qianyan.dao.ProfessionalDao;
import com.qianyan.model.Professional;
import com.qianyan.utils.PageModel;

@Component
public class ProfessionalService {

	private ProfessionalDao professionalDao;

	public ProfessionalDao getProfessionalDao() {
		return professionalDao;
	}

	@Resource
	public void setProfessionalDao(ProfessionalDao professionalDao) {
		this.professionalDao = professionalDao;
	}
	
	/**
	 * ���רҵ
	 */
	public void add(Professional Professional) {
		professionalDao.save(Professional);
	}
	
	/**
	 * ͨ��Idɾ��רҵ
	 */
	public void deleteById(int ProfessionalId) {
		professionalDao.deleteById(Professional.class, ProfessionalId);
	}
	
	/**
	 * ͨ��Professional����ֱ��ɾ��
	 */
	public void delete(Professional Professional) {
		professionalDao.delete(Professional);
	}
	
	/**
	 * ����רҵ��Ϣ
	 */
	public void update(Professional Professional) {
		professionalDao.update(Professional);
	}
	
	/**
	 * ͨ��Id�õ�רҵ����
	 */
	public Professional findById(int id) {
		return professionalDao.findById(Professional.class, id);
	}
	
	/**
	 * ��ȡ����רҵ����
	 */
	public List<Professional> listProfessional() {
		return professionalDao.searchProfessionl();
	}

	public List<Professional> findByPName(String proName) {
		return professionalDao.findByPName(proName);
	}

	public PageModel listPageModle(int currentPage, int pageSize) {
		return professionalDao.searchPageModel(currentPage, pageSize);
	}

	public PageModel findPageModelByPName(String proName, int currentPage, int pageSize) {
		return professionalDao.searchPageModelByPName(proName, currentPage, pageSize);
	}
}
