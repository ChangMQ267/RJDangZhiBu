package com.qianyan.action;

import javax.annotation.Resource;

import com.qianyan.model.Admin;
import com.qianyan.model.UserInfo;
import com.qianyan.service.AdminService;
import com.qianyan.service.UserInfoService;
import com.qianyan.utils.MD5;
import com.qianyan.utils.Validate;

public class LoginAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private UserInfo userInfo;
	private Admin admin;
	private AdminService adminService;
	private UserInfoService userInfoService;
	private Validate validate;
	private String error = "";
	
	
	/**
	 * 管理员登录验证
	 * @return
	 */
	public String adminVerificate() {
		
		if(validate.isNull(username, password)) {
			
			admin = adminService.verificate(username, MD5.MD5Encode(password));
			if(admin == null) {
				error = "用户名或密码不正确";
				return "adminLogin";
			}
		
		}else {
			error = "用户名或密码不能为空";
			return "adminLogin";
		}
		
		//如果错误信息不为空，清空错误提示信息
		error = "";
		request.getSession().setAttribute("login", admin);
		return "adminSuccess";
	}
	
	/**
	 * 普通用户登录验证
	 * @return
	 */
	public String userInfoVerificate() {
		
		if(validate.isNull(username, password)) {
			
			userInfo = userInfoService.verificate(username, MD5.MD5Encode(password));
			
			if(userInfo == null) {
				error = "用户名或密码不正确";
				request.getSession().setAttribute("error", error);
				return "userInfoLogin";
			}
		
		}else {
			error = "用户名或密码不能为空";
			request.getSession().setAttribute("error", error);
			return "userInfoLogin";
		}
		
		if(null != request.getSession().getAttribute("error")) {
			request.getSession().removeAttribute("error");
		}
		
		request.getSession().setAttribute("userLogin", userInfo);
		return "userInfoLogin";
	}
	
	
/**
 * ===================================================================
 * 						setXXX(),getXXX()方法
 * ===================================================================
 */
	
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
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	@Resource
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	@Resource
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	public Validate getValidate() {
		return validate;
	}
	@Resource
	public void setValidate(Validate validate) {
		this.validate = validate;
	}
	public String getError() {
		return error;
	}
	public void setError(String error) {
		this.error = error;
	}
}
