package com.qianyan.action;

import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.InClass;
import com.qianyan.model.Professional;
import com.qianyan.model.UserInfo;
import com.qianyan.service.InClassService;
import com.qianyan.service.ProfessionalService;
import com.qianyan.service.UserInfoService;
import com.qianyan.utils.PageModel;
import com.qianyan.utils.Validate;

public class InClassAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private InClassService inClassService;
	private UserInfoService userInfoService;
	private int inClassId;
	private String className;
	private InClass inClass;
	private int proId;
	private List<UserInfo> userInfos;
	private List<Professional> professionals;
	private ProfessionalService professionalService;
	private Professional professional;
	private PageModel pm;
	private int currentPage = 1;
	private int pageSize;
	private String error = "";
	private Validate validate;
	
	
	/**
	 * 请求添加班级
	 * @return
	 */
	public String addInput() {
		professionals = professionalService.listProfessional();
		return "InClass";
	}
	
	/**
	 * 添加班级
	 * @return
	 */
	public String add() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(inClass.getClassName())) {
				
				professional = professionalService.findById(proId);
				inClass.setProfessional(professional);
				inClassService.add(inClass);
			}else {
				error = "班级名称不能为空";
			}
		}
		return "InClass";
	}
	
	/**
	 * 删除班级
	 * @return
	 */
	public String delete() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			userInfos = userInfoService.listId(inClassId);
			
			if(userInfos.size() == 0) {
				inClassService.deleteById(inClassId);
			} else {
				error = "该班级下有学生，不能被删除";
			}
		}
		return "InClass";
	}
	
	/**
	 * 请求修改班级
	 */
	public String modifyInput() {
		professionals = professionalService.listProfessional();
		inClass = inClassService.findById(inClassId);
		return "InClass";
	}
	
	/**
	 * 修改班级信息
	 * @return
	 */
	public String modify() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(className)) {
				
				professional = professionalService.findById(proId);
				inClass = inClassService.findById(inClassId);
				inClass.setClassName(className);
				inClass.setProfessional(professional);
				inClassService.update(inClass);
			}else {
				error = "班级名称不能为空";
			}
		}
		return "InClass";
	}
	
	/**
	 * 请求查询
	 */
	public String findByCNameInput() {
		return "InClass";
	}
	
	/***
	 * 
	 * @return
	 */
	public String findByCName() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(!validate.checkSpecialCharacter(className)) {
				pageSize = 20;
				pm = inClassService.findByCName(className,currentPage,pageSize);
			}else {
				error = "含有非法字符";
			}
		}
		return "InClass";
	}
	
	/**
	 * 读取所有班级
	 */
	public String list() {
		pageSize = 20;
		pm = inClassService.listInClass(currentPage,pageSize);
		return "InClass";
	}

/**
 * ================================================================
 * 						setXXX(),getXXX()方法
 * ================================================================
 */
	
	public InClassService getInClassService() {
		return inClassService;
	}
	@Resource
	public void setInClassService(InClassService inClassService) {
		this.inClassService = inClassService;
	}
	public int getInClassId() {
		return inClassId;
	}
	public void setInClassId(int inClassId) {
		this.inClassId = inClassId;
	}
	public InClass getInClass() {
		return inClass;
	}
	public void setInClass(InClass inClass) {
		this.inClass = inClass;
	}
	public List<UserInfo> getUserInfos() {
		return userInfos;
	}
	public void setUserInfos(List<UserInfo> userInfos) {
		this.userInfos = userInfos;
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
	public Professional getProfessional() {
		return professional;
	}
	public void setProfessional(Professional professional) {
		this.professional = professional;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	@Resource
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
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
	@Resource
	public void setValidate(Validate validate) {
		this.validate = validate;
	}
	
}
