package com.qianyan.action;

import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.Admin;
import com.qianyan.service.AdminService;
import com.qianyan.utils.MD5;
import com.qianyan.utils.PageModel;
import com.qianyan.utils.Validate;

public class AdminAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int adminId;
	private String password;
	private AdminService adminService;
	private Admin admin;
	private List<Admin> admins;
	private PageModel pm;
	private int currentPage = 1;
	private int pageSize;
	private String error = "";
	private Validate validate;
	
	/**
	 * ��������û�
	 */
	public String addInput() {
		return "Admin";
	}
	
	/**
	 * ����û�
	 */
	public String add() {
		
		error = isSuperAdmin();
		
		if(error.equals("")) {
			
			if(validate.isNull(admin.getUsername(), admin.getPassword())) {
				
				if(adminService.checkExist(admin.getUsername())) {
					
					admin.setPassword(MD5.MD5Encode(admin.getPassword()));
					adminService.add(admin);
					
				}else {
					error = "���û��Ѵ��ڣ�";
				}
			}else {
				error = "�û������벻��Ϊ��";
			}
		}
		return "Admin";
	}
	
	/**
	 * ɾ������Ա
	 */
	public String delete() {
		
		error = isSuperAdmin();
		
		if(error.equals("")) {
			adminService.delete(adminId);
		}
		
		return "Admin";
	}
	
	/**
	 * ����ɾ������Ա
	 */
	public String batchDel() {
		
		error = isSuperAdmin();
		
		if(error.equals("")) {
			
			String[] ids = request.getParameterValues("id");
			String idStr = "";
			
			for (int i = 0; i < ids.length; i++) {
				idStr += ids[i] + ",";
			}
			
			if(idStr.length() > 0) {
				
				idStr = idStr.substring(0, idStr.length() - 1);
				adminService.batchDel(idStr);
			}else {
				error = "�����ڲ�����";
			}
		}
		return "Admin";
	}
	
	/**
	 * �����޸Ĺ���Ա��Ϣ
	 */
	public String modifyInput() {
		
		admin = adminService.findById(adminId);
		return "Admin";
	}
	
	/**
	 * �޸Ĺ���Ա��Ϣ
	 */
	public String modify() {
		
		validate = new Validate();
		error = isSuperAdmin(adminId);
		
		if(error.equals("")) {
			
			if(validate.isNull(admin.getUsername())) {
				
				admin.setId(adminId);
				adminService.update(admin);
				
			}else {
				error = "�û������벻��Ϊ��";
			}
		}
		return "Admin";
	}
	
	/**
	 * ��������  ����������
	 */
	public String resetPasswordInput() {
		return "Admin";
	}
	
	/**
	 * �ɹ�����������
	 */
	public String resetPassword() {
		
		error = isSuperAdmin(adminId);
		
		if(error.equals("")) {
			
			if(!password.equals("") && null != password) {
				
				admin = adminService.findById(adminId);
				admin.setPassword(MD5.MD5Encode(password));
				adminService.update(admin);
				
			}else {
				error = "���벻��Ϊ��";
			}
		}
		return "Admin";
	}
	
	/**
	 * ��ʾ��������Ա��Ϣ
	 */
	public String load() {
		admin = adminService.findById(adminId);
		return "Admin";
	}
	
	/**
	 * ��ʾ���й���Ա��Ϣ
	 */
	public String list() {
		pageSize = 20;
		pm = adminService.findAdminList(currentPage,pageSize);
		return "Admin";
	}
	
	
/**
 * ==================================================================
 * 						setXXX(),getXXX()����
 * ==================================================================
 */
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public AdminService getAdminService() {
		return adminService;
	}
	@Resource
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public List<Admin> getAdmins() {
		return admins;
	}
	public void setAdmins(List<Admin> admins) {
		this.admins = admins;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
