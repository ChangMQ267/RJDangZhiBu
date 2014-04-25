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
	 * 管理员激活状态检测
	 */
	public String isActivated() {
		currentAdmin = this.currentAdmin();
		if(null == currentAdmin) {
			return "非法进入";
		}
		if(currentAdmin.getState() == 2) {
			return "";
		} else {
			return "权限未激活";
		}
	}
	/**
	 * 判断当前用户是否是超级管理员
	 */
	public String isSuperAdmin() {
		currentAdmin = this.currentAdmin();
		if(null == currentAdmin) {
			return "非法进入";
		}
		if(currentAdmin.getGrade() == 2 && currentAdmin.getState() == 2) {
			return "";
		} else {
			return "权限不足";
		}
	}
	
	/**
	 * 密码重置及修改信息权限判断
	 */
	public String isSuperAdmin(int adminId) {
		currentAdmin = this.currentAdmin();
		if(currentAdmin == null) {
			return "非法进入";
		}
		if(currentAdmin.getGrade() == 2 && currentAdmin.getState() == 2 || currentAdmin.getId() == adminId) {
			return "";
		} else {
			return "权限不足";
		}
	}
	/**
	 * 得到当前session中的登录用户对象
	 */
	protected UserInfo currentUserInfo() {
		return (UserInfo)request.getSession().getAttribute("userLogin");
	}
	
	/**
	 *得到当前session中的管理员用户对象 
	 */
	protected Admin currentAdmin() {
		return (Admin)request.getSession().getAttribute("login");
	}
	/**
	 * 复写ServletRequestAware方法
	 */
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	/**
	 * 复写ServletResponseAware方法
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
