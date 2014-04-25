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
	 * �������
	 */
	public void add(News News) {
		newsDao.save(News);
	}
	
	/**
	 * ͨ��Idɾ������
	 */
	public void delete(int NewsId) {
		newsDao.deleteById(News.class, NewsId);
	}
	
	/**
	 * ͨ��News����ֱ��ɾ��
	 */
	public void delete(News News) {
		newsDao.delete(News);
	}
	/**
	 * ����ɾ��
	 */
	public void batchDel(String idStr) {
		newsDao.batchDel(idStr);
	}
	/**
	 * ����������Ϣ
	 */
	public void update(News News) {
		newsDao.update(News);
	}
	
	/**
	 * ͨ��Id�õ����Ŷ���
	 */
	public News findById(int id) {
		return newsDao.findById(News.class, id);
	}
	
	/**
	 * ������ȡ���Ŷ���
	 */
	public PageModel listNews(int currentPage, int pageSize) {
		return newsDao.searchNews(currentPage, pageSize);
	}
	
	/**
	 * ������ȡָ��Ŀ¼��������ź�̨��
	 */
	public PageModel listNews(int catelogId, int currentPage, int pageSize) {
		return newsDao.searchExceptContent(catelogId, currentPage, pageSize);
	}
	
	/**
	 * ͨ�������������
	 * @param title
	 * @return
	 */
	public PageModel findByTitle(String title, int currentPage, int pageSize) {
		return newsDao.findByTitle(title, currentPage, pageSize);
	}
	
	/**
	 * ͨ������id��������id
	 * @param catelogId
	 * @return
	 */
	public List<News> searchId(int catelogId) {
		return newsDao.searchId(catelogId);
	}
	
	/**
	 * ͨ��ָ���ķ���Ŀ¼��������id��title��releaseTime
	 */
	public List<News> searchIdTitle(int catelogId, int size) {
		return newsDao.searchIdTitle(catelogId, size);
	}
	
	/**
	 * ��ȡָ���������������ǰ̨��
	 */
	public PageModel searchIdTitle(int catelogId, int currentPage, int pageSize) {
		return newsDao.searchIdTitle(catelogId, currentPage, pageSize);
	}

	
}
