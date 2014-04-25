package com.qianyan.model;

public class Admin {
	
	private int id;				//id
	private String username;	//���˻�
	private String adminName;	//�û�����
	private String password;	//�û�����
	private int state;			//�û�״̬���Ƿ񱻳�������Ա����Ȩ�ޣ�
	private int grade;			//�û��ȼ�
	
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
	 * ��дtoString��������
	 */
	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + username + ", adminName="
				+ adminName + ", password=" + password + ", state=" + state
				+ ", grade=" + grade + "]";
	}
	
	/*
	 * �ж����������ǲ���ͬһ������
	 */
	public boolean isequals(Admin admin) {
		return this.getUsername().equals(admin.getUsername());
	}
	
	
}
