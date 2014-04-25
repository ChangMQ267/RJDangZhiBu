package com.qianyan.model;


public class InClass{
	
	private int id;						//班级ID
	private String className;			//班级名字
	private Professional professional;	//所属专业
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Professional getProfessional() {
		return professional;
	}
	public void setProfessional(Professional professional) {
		this.professional = professional;
	}
	
	
}
