package com.qianyan.utils;

import java.util.List;

public class PageModel {

	private int currentPage;		//当前页
	private int pageSize;			//每页条数
	private int totalRecords;		//总共记录数
	private List<?> list;			//装载对象的list
	
	/**
	 * 得到总页数
	 */
	public int getTotalPage() {
		return (totalRecords + pageSize -1)/pageSize;
	}
	
	/**
	 * 得到首页
	 */
	public int getFirstPage() {
		return 1;
	}
	
	/**
	 * 得到尾页
	 */
	public int getLastPage() {
		return this.getTotalPage() <= 0 ? 1 : getTotalPage();
	}
	
	/**
	 * 前一页
	 */
	public int getPreviousPage() {
		return currentPage <= 1 ? 1 : currentPage - 1;
	}
	
	/**
	 * 后一页
	 */
	public int getNextPage() {
		if(currentPage >= getTotalPage()) {
			return getLastPage();
		}
		return currentPage + 1;
	}
	
	
/**
 * ==========================================================
 * 					setXXX(),getXXX()方法
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
