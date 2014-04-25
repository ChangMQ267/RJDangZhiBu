package com.qianyan.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao<T,ID extends Serializable> {
	
	/**
	 * ���
	 */
	public void save(T entity);
	
	/**
	 * ɾ��
	 */
	public void delete(T entity);
	
	/**
	 * ��idɾ��
	 */
	public void deleteById(Class<T> entityClass,ID id);
	
	/**
	 * ��id����ɾ��
	 */
	public void delete(String hql);
	
	/**
	 * �޸�
	 */
	public void update(T entity);
	
	/**
	 * ��id����
	 */
	public T findById(Class<T> entityClass,ID id);
	
	/**
	 * ����ָ����hql��䷵�ص�list����,������������
	 */
	public List<T> search(String hql);
	
	/**
	 * ����ָ����¼������list����
	 */
	public List<T> searchMaxResult(String hql,int size);
}