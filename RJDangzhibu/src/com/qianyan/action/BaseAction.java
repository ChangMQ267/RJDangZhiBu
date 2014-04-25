package com.qianyan.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.qianyan.model.Admin;
import com.qianyan.model.UserInfo;

public class BaseAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	private Admin currentAdmin = null;
	
	/**
	 * ����Ա����״̬���
	 */
	public String isActivated() {
		currentAdmin = this.currentAdmin();
		if(null == currentAdmin) {
			return "�Ƿ�����";
		}
		if(currentAdmin.getState() == 2) {
			return "";
		} else {
			return "Ȩ��δ����";
		}
	}
	/**
	 * �жϵ�ǰ�û��Ƿ��ǳ�������Ա
	 */
	public String isSuperAdmin() {
		currentAdmin = this.currentAdmin();
		if(null == currentAdmin) {
			return "�Ƿ�����";
		}
		if(currentAdmin.getGrade() == 2 && currentAdmin.getState() == 2) {
			return "";
		} else {
			return "Ȩ�޲���";
		}
	}
	
	/**
	 * �������ü��޸���ϢȨ���ж�
	 */
	public String isSuperAdmin(int adminId) {
		currentAdmin = this.currentAdmin();
		if(currentAdmin == null) {
			return "�Ƿ�����";
		}
		if(currentAdmin.getGrade() == 2 && currentAdmin.getState() == 2 || currentAdmin.getId() == adminId) {
			return "";
		} else {
			return "Ȩ�޲���";
		}
	}
	/**
	 * �õ���ǰsession�еĵ�¼�û�����
	 */
	protected UserInfo currentUserInfo() {
		return (UserInfo)request.getSession().getAttribute("userLogin");
	}
	
	/**
	 *�õ���ǰsession�еĹ���Ա�û����� 
	 */
	protected Admin currentAdmin() {
		return (Admin)request.getSession().getAttribute("login");
	}
	/**
	 * ��дServletRequestAware����
	 */
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	/**
	 * ��дServletResponseAware����
	 */
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

}
