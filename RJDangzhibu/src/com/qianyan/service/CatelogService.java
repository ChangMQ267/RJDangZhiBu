package com.qianyan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qianyan.dao.CatelogDao;
import com.qianyan.model.Catelog;
import com.qianyan.model.News;

@Component
public class CatelogService {

	private CatelogDao catelogDao;
	private NewsService newsService;
	
	/**
	 * 添加目录
	 */
	public void add(Catelog catelog) {
		catelogDao.save(catelog);
	}
	
	/**
	 * 删除目录
	 */
	public void delete(Catelog catelog) {
		catelogDao.delete(catelog);
	}
	
	/**
	 * 通过ID删除目录
	 */
	public void deleteById(int id) {
		catelogDao.deleteById(Catelog.class, id);
	}
	
	/**
	 * 修改更新目录
	 */
	public void update(Catelog catelog) {
		catelogDao.update(catelog);
	}
	
	/**
	 * 通过Id查找目录
	 */
	public Catelog findById(int id) {
		return catelogDao.findById(Catelog.class, id);
	}
	/**
	 * 批量读取目录分类
	 */
	public List<Catelog> listCatlog() {
		return catelogDao.searchCatelogs();
	}

	/**
	 * 批量读取指定分类的新闻id
	 */
	public List<News> listId(int catelogId) {
		return newsService.searchId(catelogId);
	}
	
	public NewsService getNewsService() {
		return newsService;
	}
	@Resource
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	public CatelogDao getCatelogDao() {
		return catelogDao;
	}
	
	@Resource
	public void setCatelogDao(CatelogDao catelogDao) {
		this.catelogDao = catelogDao;
	}
	
	
}
