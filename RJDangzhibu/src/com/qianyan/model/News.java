package com.qianyan.model;

import java.util.Date;


public class News {
	
	private int id;   			//新闻ID
	private String title;		//新闻题目
	private String content;		//新闻内容
	private Date releaseTime;	//发布时时间
	private Catelog catelog;	//所属分类
	private int visitTotal;		//总点击量
	private Admin admin;		//发布新闻的管理员
	
	
	/**
	 * 空的构造函数
	 * @return
	 */
	public News() {
		
	}
	/**
	 * 带参数的构造函数
	 * @return
	 */
	public News(int id,String title,Date releaseTime) {
		this.id = id;
		this.title = title;
		this.releaseTime = releaseTime;
	}
	
	public News(int id, String title, Date releaseTime, Catelog catelog,int visitTotal, Admin admin) {
		this.id = id;
		this.title = title;
		this.releaseTime = releaseTime;
		this.catelog = catelog;
		this.visitTotal = visitTotal;
		this.admin = admin;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getVisitTotal() {
		return visitTotal;
	}
	public void setVisitTotal(int visitTotal) {
		this.visitTotal = visitTotal;
	}
	public Catelog getCatelog() {
		return catelog;
	}
	public void setCatelog(Catelog catelog) {
		this.catelog = catelog;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Date getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

	
}
