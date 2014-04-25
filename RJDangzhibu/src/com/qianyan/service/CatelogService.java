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
	 * ���Ŀ¼
	 */
	public void add(Catelog catelog) {
		catelogDao.save(catelog);
	}
	
	/**
	 * ɾ��Ŀ¼
	 */
	public void delete(Catelog catelog) {
		catelogDao.delete(catelog);
	}
	
	/**
	 * ͨ��IDɾ��Ŀ¼
	 */
	public void deleteById(int id) {
		catelogDao.deleteById(Catelog.class, id);
	}
	
	/**
	 * �޸ĸ���Ŀ¼
	 */
	public void update(Catelog catelog) {
		catelogDao.update(catelog);
	}
	
	/**
	 * ͨ��Id����Ŀ¼
	 */
	public Catelog findById(int id) {
		return catelogDao.findById(Catelog.class, id);
	}
	/**
	 * ������ȡĿ¼����
	 */
	public List<Catelog> listCatlog() {
		return catelogDao.searchCatelogs();
	}

	/**
	 * ������ȡָ�����������id
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
