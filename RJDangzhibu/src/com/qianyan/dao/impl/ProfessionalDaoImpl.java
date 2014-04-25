package com.qianyan.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.qianyan.dao.ProfessionalDao;
import com.qianyan.model.Professional;
import com.qianyan.utils.PageModel;

@Component("professionalDao")
public class ProfessionalDaoImpl extends BaseDaoImpl<Professional, Integer> implements ProfessionalDao {

	@Override
	public List<Professional> searchProfessionl() {
		String hql = "from Professional p";
		return search(hql);
	}

	@Override
	public List<Professional> findByPName(String proName) {
		String hql1 = "from Professional p where p.proName like '%" + proName + "%'";
		return search(hql1);
	}

	@Override
	public PageModel searchPageModel(int currentPage, int pageSize) {
		String hql2 = "from Professional p order by id";
		return searchPaginated(hql2, currentPage, pageSize);
	}

	@Override
	public PageModel searchPageModelByPName(String proName, int currentPage, int pageSize) {
		String hql1 = "from Professional p where p.proName like '%" + proName + "%' order by id";
		return searchPaginated(hql1, currentPage, pageSize);
	}

	
	
}