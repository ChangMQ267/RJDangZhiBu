package com.qianyan.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.qianyan.dao.NewsDao;
import com.qianyan.model.News;
import com.qianyan.utils.PageModel;

@Component("newsDao")
public class NewsDaoImpl extends BaseDaoImpl<News, Integer> implements NewsDao {

	@Override
	public PageModel searchNews(int currentPage, int pageSize) {
		String hql = "from News n order by id desc";
		return this.searchPaginated(hql, currentPage, pageSize);
	}

	@Override
	public PageModel searchExceptContent(int catelogId, int currentPage, int pageSize) {
		String hql1 = "from News n where n.catelog = " +catelogId + " order by id desc";
		return this.searchPaginated(hql1, currentPage, pageSize);
	}

	@Override
	public PageModel findByTitle(String title, int currentPage, int pageSize) {
		String hql2 = "from News n where n.title like '%" + title + "%' order by id desc";
		return this.searchPaginated(hql2, currentPage, pageSize);
	}

	@Override
	public List<News> searchId(int catelogId) {
		String hql3 = "select id from News where catelog = " + catelogId;
		return this.search(hql3);
	}

	@Override
	public List<News> searchIdTitle(int catelogId, int size) {
		String hql4 = "select new News(id,title,releaseTime) from News where catelog = " + catelogId + "order by id desc";
		return this.searchMaxResult(hql4, size);
	}

	@Override
	public PageModel searchIdTitle(int catelogId, int currentPage, int pageSize) {
		String hql5 = "select new News(id,title,releaseTime) from News where catelog = " + catelogId + "order by id desc";
		return this.searchPaginated(hql5, currentPage, pageSize);
	}

	@Override
	public void batchDel(String idStr) {
		String hql6 = "delete from News where id in(" + idStr + ")";
		this.delete(hql6);
	}

}
