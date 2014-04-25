package com.qianyan.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T,ID extends Serializable> {
	
	/**
	 * 添加
	 */
	public void save(T entity);
	
	/**
	 * 删除
	 */
	public void delete(T entity);
	
	/**
	 * 按id删除
	 */
	public void deleteById(Class<T> entityClass,ID id);
	
	/**
	 * 按id批量删除
	 */
	public void delete(String hql);
	
	/**
	 * 修改
	 */
	public void update(T entity);
	
	/**
	 * 按id查找
	 */
	public T findById(Class<T> entityClass,ID id);
	
	/**
	 * 查找指定的hql语句返回的list对象,返回整个对象
	 */
	public List<T> search(String hql);
	
	/**
	 * 返回指定记录条数的list对象
	 */
	public List<T> searchMaxResult(String hql,int size);
}