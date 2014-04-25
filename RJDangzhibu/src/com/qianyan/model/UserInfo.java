package com.qianyan.model;

public class UserInfo{

	private int id;				//�û�ID�Զ�����
	private String username;	//���˺ţ���ѧ��ѧ�ţ�
	private String password;	//�û�����
	private String studentName;	//�û���ʵ����
	private InClass inClass;	//�û����ڰ༶
	private String state;		//�û���ǰ�뵳����
	private String applyParty;	//�û��ݽ��뵳������ʱ��
	private String departGradu;	//�û�ϵ���ν�ҵʱ��
	private String activist;	//�û���Ϊ�뵳��������ʱ��
	private String ready;		//�û�תԤ����Աʱ��
	private String positive;	//�û�ת��ʽ��Աʱ��
	private String relationIn;	//�û���֯��ϵת��ʱ��
	private String relationOut;	//�û���֯��ϵת��ʱ��
	private String flow;		//�û�������Աʱ��
	
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
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public InClass getInClass() {
		return inClass;
	}
	public void setInClass(InClass inClass) {
		this.inClass = inClass;
	}
	
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", username=" + username
				+ ", studentName=" + studentName + ", password=" + password
				+ ", inClass=" + inClass + ", state=" + state + ", applyParty="
				+ applyParty + ", departGradu=" + departGradu + ", activist="
				+ activist + ", ready=" + ready + ", positive=" + positive
				+ ", relationIn=" + relationIn + ", relationOut=" + relationOut
				+ ", flow=" + flow + "]";
	}
	
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getApplyParty() {
		return applyParty;
	}
	public void setApplyParty(String applyParty) {
		this.applyParty = applyParty;
	}
	public String getDepartGradu() {
		return departGradu;
	}
	public void setDepartGradu(String departGradu) {
		this.departGradu = departGradu;
	}
	public String getActivist() {
		return activist;
	}
	public void setActivist(String activist) {
		this.activist = activist;
	}
	public String getReady() {
		return ready;
	}
	public void setReady(String ready) {
		this.ready = ready;
	}
	public String getPositive() {
		return positive;
	}
	public void setPositive(String positive) {
		this.positive = positive;
	}
	public String getRelationIn() {
		return relationIn;
	}
	public void setRelationIn(String relationIn) {
		this.relationIn = relationIn;
	}
	public String getRelationOut() {
		return relationOut;
	}
	public void setRelationOut(String relationOut) {
		this.relationOut = relationOut;
	}
	public String getFlow() {
		return flow;
	}
	public void setFlow(String flow) {
		this.flow = flow;
	}
	
}
