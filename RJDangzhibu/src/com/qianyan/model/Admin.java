package com.qianyan.model;

public class Admin {
	
	private int id;				//id
	private String username;	//用账户
	private String adminName;	//用户姓名
	private String password;	//用户密码
	private int state;			//用户状态（是否被超级管理员授予权限）
	private int grade;			//用户等级
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	
	/*
	 * (non-Javadoc)
	 * @see java.lang.Object#toString()
	 * 重写toString（）方法
	 */
	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", adminName="
				+ adminName + ", password=" + password + ", state=" + state
				+ ", grade=" + grade + "]";
	}
	
	/*
	 * 判断两个对象是不是同一个对象
	 */
	public boolean isequals(Admin admin) {
		return this.getUsername().equals(admin.getUsername());
	}
	
	
}
