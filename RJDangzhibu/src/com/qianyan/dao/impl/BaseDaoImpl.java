package com.qianyan.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;
import javax.transaction.SystemException;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qianyan.dao.BaseDao;
import com.qianyan.utils.PageModel;

public class BaseDaoImpl<T,ID extends Serializable> extends HibernateDaoSupport implements BaseDao<T,ID>{
	
	@Resource(name = "hibernateTemplate")
	public void setSuperHibernateTemplate(HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
	}

	@Override
	public void save(T entity) {
		this.getHibernateTemplate().save(entity);
	}

	@Override
	public void delete(T entity) {
		this.getHibernateTemplate().delete(entity);
	}

	@Override
	public void deleteById(Class<T> entityClass, ID id) {
		getHibernateTemplate().delete(this.findById(entityClass, id));
	}

	@Override
	public void update(T entity) {
		this.getHibernateTemplate().update(entity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T findById(Class<T> entityClass, ID id) {
		return (T)this.getHibernateTemplate().get(entityClass, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> search(String hql) {
		Query query = getSession().createQuery(hql);
		return (List<T>)query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> searchMaxResult(String hql, int size) {
		Query query = getSession().createQuery(hql).setMaxResults(size);
		return (List<T>)query.list();
	}

	/**
	 * 分页
	 * 
	 */
	@SuppressWarnings("unchecked")
	public PageModel searchPaginated(String hql,int currentPage,int pageSize){
		/**
		 * 获取记录总数
		 */
		String countHql = getCountQuery(hql);
		Query query = getSession().createQuery(countHql);
		int total = ((Long)query.uniqueResult()).intValue();
		/**
		 * 获取记录对象数组
		 */
		query = getSession().createQuery(hql);
		query.setFirstResult((currentPage - 1) * pageSize);
		query.setMaxResults(pageSize);
		List<T> list = query.list();
		/**
		 * 返回一个PageModel
		 */
		PageModel pm = new PageModel();
		pm.setCurrentPage(currentPage);
		pm.setList(list);
		pm.setTotalRecords(total);
		pm.setPageSize(pageSize);
		return pm;
	}

	/**
	 * 拼接一个查询记录条数的hql语句
	 * @param hql
	 * @return
	 * @throws SystemException 
	 */
	private String getCountQuery(String hql) {
		String temp = null;
		int index = hql.indexOf("from");
		if(index != -1) {
			temp = "select count(*) " + hql.substring(index); 
		}
		return temp;
	}
	/**
	 * 通过指定的username判断数据库是否存在
	 */
	public boolean checkExist(String username,String hql) {
		Query query = getSession().createQuery(hql).setString(0, username);
		int count = ((Long)query.uniqueResult()).intValue();
		if(0 == count) 
			return true;
		else 
			return false;
	}

	@Override
	public void delete(String hql) {
		Query query = getSession().createQuery(hql);
		query.executeUpdate();
	}
}
