package com.qianyan.model;

public class UserInfo{

	private int id;				//用户ID自动生成
	private String username;	//用账号（既学生学号）
	private String password;	//用户密码
	private String studentName;	//用户真实姓名
	private InClass inClass;	//用户所在班级
	private String state;		//用户当前入党进度
	private String applyParty;	//用户递交入党申请书时间
	private String departGradu;	//用户系党课结业时间
	private String activist;	//用户成为入党积极分子时间
	private String ready;		//用户转预备党员时间
	private String positive;	//用户转正式党员时间
	private String relationIn;	//用户组织关系转入时间
	private String relationOut;	//用户组织关系转出时间
	private String flow;		//用户流动党员时间
	
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
