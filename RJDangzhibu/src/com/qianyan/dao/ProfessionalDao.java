package com.qianyan.dao;

import java.util.List;

import com.qianyan.model.Professional;
import com.qianyan.utils.PageModel;

public interface ProfessionalDao extends BaseDao<Professional, Integer>{

	public List<Professional> searchProfessionl();

	public List<Professional> findByPName(String proName);

	public PageModel searchPageModel(int currentPage, int pageSize);

	public PageModel searchPageModelByPName(String proName, int currentPage, int pageSize);
}
