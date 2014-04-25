package com.qianyan.dao;

import java.util.List;

import com.qianyan.model.News;
import com.qianyan.utils.PageModel;

public interface NewsDao extends BaseDao<News, Integer>{
	
	public PageModel searchNews(int currentPage, int pageSize);
	
	public PageModel searchExceptContent(int catelogId, int currentPage, int pageSize);
	
	public PageModel findByTitle(String title, int currentPage, int pageSize);
	
	public List<News> searchId(int catelogId);
	
	public List<News> searchIdTitle(int catelogId, int size);
	
	public PageModel searchIdTitle(int catelogId, int currentPage, int pageSize);
	
	public void batchDel(String idStr);

}
