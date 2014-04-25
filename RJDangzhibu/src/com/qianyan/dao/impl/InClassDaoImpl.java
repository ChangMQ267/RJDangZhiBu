package com.qianyan.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.qianyan.dao.InClassDao;
import com.qianyan.model.InClass;
import com.qianyan.utils.PageModel;

@Component("inClassDao")
public class InClassDaoImpl extends BaseDaoImpl<InClass, Integer> implements InClassDao {

	@Override
	public PageModel searchInClass(int currentPage, int pageSize) {
		String hql = "from InClass inClass order by id";
		return searchPaginated(hql, currentPage, pageSize);
	}
	
	@Override
	public List<InClass> serchInClass(int professionalId) {
		String hql2 = "from InClass inClass where inClass.professional.id = " + professionalId;
		return search(hql2);
	}
	
	@Override
	public PageModel findByCName(String className, int currentPage, int pageSize) {
		String hql3 = "from InClass inClass where inClass.className like '%" + className + "%' order by id";
		return searchPaginated(hql3, currentPage, pageSize);
	}
	
	@Override
	public List<InClass> listId(int professionalId) {
		String hql4 = "select id from InClass where professional = " + professionalId;
		return search(hql4);
	}
	
	@Override
	public List<InClass> searchInClass() {
		String hql5 = "from InClass inClass";
		return search(hql5);
	}
	
	@Override
	public PageModel listPageModelPId(int professionalId, int currentPage,
			int pageSize) {
		String hql6 = "from InClass inClass where inClass.professional.id = " + professionalId + "order by id";
		return searchPaginated(hql6, currentPage, pageSize);
	}

}
