package com.qianyan.action;

import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.InClass;
import com.qianyan.model.Professional;
import com.qianyan.service.InClassService;
import com.qianyan.service.ProfessionalService;
import com.qianyan.utils.PageModel;
import com.qianyan.utils.Validate;

public class ProfessionalAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ProfessionalService professionalService;
	private int professionalId;
	private String proName;
	private Professional professional;
	private InClassService inClassService;
	private List<InClass> inClasss;
	private List<Professional> professionals;
	private PageModel pm;
	private int currentPage = 1;
	private int pageSize;
	private String error = "";
	private Validate validate;
	
	/**
	 * 请求添加专业
	 * @return
	 */
	public String addInput() {
		return "Professional";
	}
	
	/**
	 * 添加专业
	 * @return
	 */
	public String add() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(professional.getProName())) {
				professionalService.add(professional);
			} else {
				error = "专业名成不能为空";
			}
		}
		return "Professional";
	}
	
	/**
	 * 删除专业
	 * @return
	 */
	public String delete() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			inClasss = inClassService.listId(professionalId);
			
			if(inClasss.size() == 0) {
				professionalService.deleteById(professionalId);
			} else {
				error = "该专业下有班级，无法删除";
			}
		}
		return "InClass";
	}
	
	/**
	 * 请求修改专业名称
	 */
	public String modifyInput() {
		professional = professionalService.findById(professionalId);
		return "Professional";
	}
	
	/**
	 * 修改专业名称
	 * @return
	 */
	public String modify() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(professional.getProName())) {
				professional.setId(professionalId);
				professionalService.update(professional);
			} else {
				error = "专业名称不能为空";
			}
		}
		return "Professional";
	}
	
	/**
	 * 读取所有专业
	 */
	public String list() {
		pageSize = 20;
		pm = professionalService.listPageModle(currentPage,pageSize);
		return "Professional";
	}
	
	/**
	 * 读取指定专业的所有班级
	 */
	public String listInClass() {
		pageSize = 20;
		pm = inClassService.listPageModelByPId(professionalId,currentPage,pageSize);
		return "Professional";
	}
	
	
	/**
	 * 请求查询
	 */
	public String findByPNameInput() {
		return "Professional";
	}
	
	/**
	 * 通过专业名称查找专业
	 */
	public String findByPName() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(!validate.checkSpecialCharacter(proName)) {
				pageSize = 20;
				pm = professionalService.findPageModelByPName(proName,currentPage,pageSize);
			} else {
				error = "含有非法字符";
			}
		}
		return "Professional";
	}
	
	
	
/**
 * =================================================================
 * 		                           以下为spring注入，以及setXXX（），getXXX（）方法
 * =================================================================
 */
	
	public ProfessionalService getProfessionalService() {
		return professionalService;
	}
	@Resource
	public void setProfessionalService(ProfessionalService professionalService) {
		this.professionalService = professionalService;
	}
	public int getProfessionalId() {
		return professionalId;
	}
	public void setProfessionalId(int professionalId) {
		this.professionalId = professionalId;
	}
	public Professional getProfessional() {
		return professional;
	}
	public void setProfessional(Professional professional) {
		this.professional = professional;
	}
	public InClassService getInClassService() {
		return inClassService;
	}
	@Resource
	public void setInClassService(InClassService inClassService) {
		this.inClassService = inClassService;
	}
	public List<InClass> getInClasss() {
		return inClasss;
	}
	public void setInClasss(List<InClass> inClasss) {
		this.inClasss = inClasss;
	}
	public List<Professional> getProfessionals() {
		return professionals;
	}
	public void setProfessionals(List<Professional> professionals) {
		this.professionals = professionals;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
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
