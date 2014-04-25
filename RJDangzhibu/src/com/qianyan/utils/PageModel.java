package com.qianyan.utils;

import java.util.List;

public class PageModel {

	private int currentPage;		//��ǰҳ
	private int pageSize;			//ÿҳ����
	private int totalRecords;		//�ܹ���¼��
	private List<?> list;			//װ�ض����list
	
	/**
	 * �õ���ҳ��
	 */
	public int getTotalPage() {
		return (totalRecords + pageSize -1)/pageSize;
	}
	
	/**
	 * �õ���ҳ
	 */
	public int getFirstPage() {
		return 1;
	}
	
	/**
	 * �õ�βҳ
	 */
	public int getLastPage() {
		return this.getTotalPage() <= 0 ? 1 : getTotalPage();
	}
	
	/**
	 * ǰһҳ
	 */
	public int getPreviousPage() {
		return currentPage <= 1 ? 1 : currentPage - 1;
	}
	
	/**
	 * ��һҳ
	 */
	public int getNextPage() {
		if(currentPage >= getTotalPage()) {
			return getLastPage();
		}
		return currentPage + 1;
	}
	
	
/**
 * ==========================================================
 * 					setXXX(),getXXX()����
 * ==========================================================
 */
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	public List<?> getList() {
		return list;
	}
	public void setList(List<?> list) {
		this.list = list;
	}
	
	@Override
	public String toString() {
		return "PageModel [currentPage=" + currentPage + ", pageSize="
				+ pageSize + ", totalRecords=" + totalRecords + "]";
	}
	
	
}
