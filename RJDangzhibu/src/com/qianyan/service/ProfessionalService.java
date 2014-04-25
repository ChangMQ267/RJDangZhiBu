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
	 * 添加专业
	 */
	public void add(Professional Professional) {
		professionalDao.save(Professional);
	}
	
	/**
	 * 通过Id删除专业
	 */
	public void deleteById(int ProfessionalId) {
		professionalDao.deleteById(Professional.class, ProfessionalId);
	}
	
	/**
	 * 通过Professional对象直接删除
	 */
	public void delete(Professional Professional) {
		professionalDao.delete(Professional);
	}
	
	/**
	 * 更新专业信息
	 */
	public void update(Professional Professional) {
		professionalDao.update(Professional);
	}
	
	/**
	 * 通过Id得到专业对象
	 */
	public Professional findById(int id) {
		return professionalDao.findById(Professional.class, id);
	}
	
	/**
	 * 读取所有专业对象
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
