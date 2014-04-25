package com.qianyan.dao;

import java.util.List;

import com.qianyan.model.InClass;
import com.qianyan.utils.PageModel;

public interface InClassDao extends BaseDao<InClass, Integer>{
	
	public PageModel searchInClass(int currentPage, int pageSize);
	
	public List<InClass> serchInClass(int professionalId);
	
	public PageModel findByCName(String className, int currentPage, int pageSize);
	
	public List<InClass> listId(int professionalId);
	
	public List<InClass> searchInClass();
	
	public PageModel listPageModelPId(int professionalId, int currentPage, int pageSize);
	
}
