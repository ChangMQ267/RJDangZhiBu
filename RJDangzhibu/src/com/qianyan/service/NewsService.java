package com.qianyan.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qianyan.dao.NewsDao;
import com.qianyan.model.News;
import com.qianyan.utils.PageModel;

@Component
public class NewsService {

	private NewsDao newsDao;

	public NewsDao getNewsDao() {
		return newsDao;
	}

	@Resource
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
	
	/**
	 * 添加新闻
	 */
	public void add(News News) {
		newsDao.save(News);
	}
	
	/**
	 * 通过Id删除新闻
	 */
	public void delete(int NewsId) {
		newsDao.deleteById(News.class, NewsId);
	}
	
	/**
	 * 通过News对象直接删除
	 */
	public void delete(News News) {
		newsDao.delete(News);
	}
	/**
	 * 批量删除
	 */
	public void batchDel(String idStr) {
		newsDao.batchDel(idStr);
	}
	/**
	 * 更新新闻信息
	 */
	public void update(News News) {
		newsDao.update(News);
	}
	
	/**
	 * 通过Id得到新闻对象
	 */
	public News findById(int id) {
		return newsDao.findById(News.class, id);
	}
	
	/**
	 * 批量读取新闻对象
	 */
	public PageModel listNews(int currentPage, int pageSize) {
		return newsDao.searchNews(currentPage, pageSize);
	}
	
	/**
	 * 批量读取指定目录分类的新闻后台用
	 */
	public PageModel listNews(int catelogId, int currentPage, int pageSize) {
		return newsDao.searchExceptContent(catelogId, currentPage, pageSize);
	}
	
	/**
	 * 通过标题查找新闻
	 * @param title
	 * @return
	 */
	public PageModel findByTitle(String title, int currentPage, int pageSize) {
		return newsDao.findByTitle(title, currentPage, pageSize);
	}
	
	/**
	 * 通过分类id查找新闻id
	 * @param catelogId
	 * @return
	 */
	public List<News> searchId(int catelogId) {
		return newsDao.searchId(catelogId);
	}
	
	/**
	 * 通过指定的分类目录查找新闻id，title和releaseTime
	 */
	public List<News> searchIdTitle(int catelogId, int size) {
		return newsDao.searchIdTitle(catelogId, size);
	}
	
	/**
	 * 读取指定分类的所有新闻前台用
	 */
	public PageModel searchIdTitle(int catelogId, int currentPage, int pageSize) {
		return newsDao.searchIdTitle(catelogId, currentPage, pageSize);
	}

	
}
