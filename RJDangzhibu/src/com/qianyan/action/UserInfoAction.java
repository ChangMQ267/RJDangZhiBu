package com.qianyan.action;

import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.InClass;
import com.qianyan.model.Professional;
import com.qianyan.model.UserInfo;
import com.qianyan.service.InClassService;
import com.qianyan.service.ProfessionalService;
import com.qianyan.service.UserInfoService;
import com.qianyan.utils.MD5;
import com.qianyan.utils.PageModel;
import com.qianyan.utils.Validate;

public class UserInfoAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserInfoService userInfoService;
	private int userInfoId;
	private int inClassId;
	private int professionalId;
	private String password;
	private List<UserInfo> userInfos;
	private UserInfo userInfo;
	private List<InClass> inClasss;
	private InClassService inClassService;
	private InClass inClass;
	private List<Professional> professionals;
	private ProfessionalService professionalService;
	private String username;
	private String studentName;
	private PageModel pm;
	private int currentPage = 1;
	private int pageSize;
	private String error = "";
	private Validate validate;
	
	
	/**
	 * ��������û�
	 */
	public String addInput() {
		inClasss = inClassService.listInClass();
		return "UserInfo";
	}
	
	/**
	 * ����û�
	 */
	public String add() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(userInfo.getUsername(), userInfo.getPassword())) {
				
				if(userInfoService.checkExist(userInfo.getUsername())) {
					
					userInfo.setPassword(MD5.MD5Encode(userInfo.getPassword()));
					inClass = inClassService.findById(inClassId);
					userInfo.setInClass(inClass);
					userInfoService.add(userInfo);
				}else {
					error = "���û��Ѵ���";
				}
			}else {
				error = "�û������벻��Ϊ��";
			}
		}
		return "UserInfo";
	}
	
	/**
	 * ɾ���û�ͨ��idɾ��
	 */
	public String delete() {
		error = isActivated();
		if(error.equals("")) {
			userInfoService.deleteById(userInfoId);
		}
		return "UserInfo";
	}
	
	/**
	 * ����ɾ���û�
	 */
	public String batchDel() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			String[] ids = request.getParameterValues("id");
			String idStr = "";
			
			for (int i = 0; i < ids.length; i++) {
				idStr += ids[i] + ",";
			}
			
			if(idStr.length() > 0) {
				idStr = idStr.substring(0, idStr.length() - 1);
				userInfoService.batchDel(idStr);
			}else {
				error = "�ڲ�����";
			}
		}
		return "UserInfo";
	}
	
	/**
	 * �����޸��û���Ϣ
	 */
	public String modifyInput() {
		userInfo = userInfoService.findById(userInfoId);
		return "UserInfo";
	}
	
	/**
	 * �޸��û���Ϣ
	 */
	public String modify() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(userInfo.getUsername())) {
			
				userInfo.setId(userInfoId);
				inClass = inClassService.findById(inClassId);
				userInfo.setInClass(inClass);
				userInfoService.update(userInfo);
			}else {
				error = "�û������벻��Ϊ��";
			}
		}
		return "UserInfo";
	}
	
	/**
	 * �����ѯ
	 * @return
	 */
	public String findByUNameInput() {
		return "UserInfo";
	}
	
	/**
	 * ���˺ţ�ѧ�ţ�����
	 */
	public String findByUName() {
		error = isActivated();
		if(error.equals("")) {
			if(!validate.checkSpecialCharacter(username)) {
				pageSize = 20;
				pm = userInfoService.findByUName(username,currentPage,pageSize);
			}else {
				error = "���зǷ��ַ�";
			}
		}
		return "UserInfo";
	}
	
	/**
	 * �����ѯ
	 * @return
	 */
	public String findBySNameInput() {
		return "UserInfo";
	}
	
	/**
	 * ����������
	 */
	public String findBySName() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(!validate.checkSpecialCharacter(studentName)) {
				pageSize = 30;
				pm = userInfoService.findBySName(studentName,currentPage,pageSize);
			}else {
				error = "���зǷ��ַ�";
			}
		}
		return "UserInfo";
	}
	
	/**
	 * �����޸�����
	 */
	public String resetPasswordInput() {
		return "UserInfo";
	}
	
	/**
	 * �ɹ�����������
	 */
	public String resetPassword() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(password)) {
			
				userInfo = userInfoService.findById(userInfoId);
				userInfo.setPassword(MD5.MD5Encode(password));
				userInfoService.update(userInfo);
			}else {
				error = "���벻��Ϊ��";
			}
		}
		return "UserInfo";
	}
	
	/**
	 * ��ʾ�����û���Ϣ
	 */
	public String load() {
		userInfo = userInfoService.findById(userInfoId);
		return "UserInfo";
	}
	
	/**
	 * ��ʾ�����û���Ϣ
	 */
	public String list() {
		pageSize = 20;
		pm = userInfoService.listUserInfo(currentPage, pageSize);
		return "UserInfo";
	}
	
	/**
	 * ѡ��༶
	 */
	public String listByIIdInput() {
		inClasss = inClassService.listInClass();
		return "UserInfo";
	}
	
	/**
	 * ���༶��ʾ�û���Ϣ
	 */
	public String listByIId(){
		pageSize = 20;
		pm = inClassService.listUserInfo(inClassId, currentPage, pageSize);
		return "UserInfo";
	}
	
	/**
	 * ѡ��רҵ
	 */
	public String listByPIdInput(){
		professionals = professionalService.listProfessional();
		return "UserInfo";
	}
	
	/**
	 * ��רҵ��ʾ�û���Ϣ
	 */
	public String listByPId(){
		pageSize = 20;
		pm = userInfoService.listUserInfoByPId(professionalId, currentPage, pageSize);
		return "UserInfo";
	}
	
	
	
/**
 * =====================================================================
 * 				    ����ΪSpringע�룬setXXX(),getXXX()����
 * =====================================================================
 */
	
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	@Resource
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	public int getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(int userInfoId) {
		this.userInfoId = userInfoId;
	}
	public List<UserInfo> getUserInfos() {
		return userInfos;
	}
	public void setUserInfos(List<UserInfo> userInfos) {
		this.userInfos = userInfos;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public int getInClassId() {
		return inClassId;
	}
	public void setInClassId(int inClassId) {
		this.inClassId = inClassId;
	}
	public List<InClass> getInClasss() {
		return inClasss;
	}
	public void setInClasss(List<InClass> inClasss) {
		this.inClasss = inClasss;
	}
	public InClassService getInClassService() {
		return inClassService;
	}
	@Resource
	public void setInClassService(InClassService inClassService) {
		this.inClassService = inClassService;
	}
	public InClass getInClass() {
		return inClass;
	}
	public void setInClass(InClass inClass) {
		this.inClass = inClass;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getProfessionalId() {
		return professionalId;
	}
	public void setProfessionalId(int professionalId) {
		this.professionalId = professionalId;
	}
	public List<Professional> getProfessionals() {
		return professionals;
	}
	public void setProfessionals(List<Professional> professionals) {
		this.professionals = professionals;
	}
	public ProfessionalService getProfessionalService() {
		return professionalService;
	}
	@Resource
	public void setProfessionalService(ProfessionalService professionalService) {
		this.professionalService = professionalService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public PageModel getPm() {
		return pm;
	}
	public void setPm(PageModel pm) {
		this.pm = pm;
	}
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
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
	public Validate getValidate() {
		return validate;
	}
	public void setValidate(Validate validate) {
		this.validate = validate;
	}
	
}
