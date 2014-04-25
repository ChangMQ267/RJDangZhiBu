package com.qianyan.action;

import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.Catelog;
import com.qianyan.model.News;
import com.qianyan.service.CatelogService;
import com.qianyan.utils.Validate;

public class CatelogAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Catelog catelog;
	private CatelogService catelogService;
	private int catelogId;
	private List<Catelog> catelogs;
	private List<News> newss;
	private String error = "";
	private Validate validate;
	
	/**
	 * ��ӷ���Ŀ¼
	 * @return
	 */
	public String addInput() {
		return "Catelog";
	}
	
	public String add() {
		
		error = isSuperAdmin();
		
		if(error.equals("")) {
			
			if(validate.isNull(catelog.getName())) {
				catelogService.add(catelog);
			}else {
				error = "����������Ϊ��";
			}
		}
		return "Catelog";
	}
	/**
	 * ɾ��Ŀ¼
	 * @return
	 */
	public String delete() {
		
		error = isSuperAdmin();
		
		if(error.equals("")) {
			
			newss = catelogService.listId(catelogId);
			
			if(newss.size() == 0) {
				catelogService.deleteById(catelogId);
			}else {
				error = "�÷����������ţ�����Ϊɾ��";
			}
		}
		return "Catelog";
	}
	
	/**
	 * �����޸�Ŀ¼
	 */
	public String modifyInput() {
		catelog = catelogService.findById(catelogId);
		return "Catelog";
	}
	
	/**
	 * �޸�Ŀ¼
	 * @return
	 */
	public String modify() {
		
		error = isSuperAdmin();
		
		if(error.equals("")) {
			
			if(validate.isNull(catelog.getName())) {
				catelog.setId(catelogId);
				catelogService.update(catelog);
			}else {
				error = "����������Ϊ��";
			}
		}
		return "Catelog";
	}
	
	/**
	 * ��ȡ����Ŀ¼����
	 */
	public String list() {
		catelogs = catelogService.listCatlog();
		return "Catelog";
	}
	

/**
 * ==========================================================
 * 					setXXX(),getXXX()����
 * ==========================================================
 */
	public Catelog getCatelog() {
		return catelog;
	}
	public void setCatelog(Catelog catelog) {
		this.catelog = catelog;
	}
	public CatelogService getCatelogService() {
		return catelogService;
	}
	@Resource
	public void setCatelogService(CatelogService catelogService) {
		this.catelogService = catelogService;
	}
	public int getCatelogId() {
		return catelogId;
	}
	public void setCatelogId(int catelogId) {
		this.catelogId = catelogId;
	}
	public List<Catelog> getCatelogs() {
		return catelogs;
	}
	public void setCatelogs(List<Catelog> catelogs) {
		this.catelogs = catelogs;
	}
	public List<News> getNewss() {
		return newss;
	}
	public void setNewss(List<News> news) {
		this.newss = news;
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
