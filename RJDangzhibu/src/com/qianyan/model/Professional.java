package com.qianyan.model;

public class Professional {
	
	private int id;				//专业ID
	private String proName;		//专业名字
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	
	@Override
	public String toString() {
		return "Professional [id=" + id + ", proName=" + proName + "]";
	}
	
	
}
