package com.qianyan.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileUploadAction extends ActionSupport {

	private File doc;
	private String fileName;
	private String contentType;
	private String savePath;

	public void setDoc(File file) {
		this.doc = file;
	}

	public void setDocFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setDocContentType(String contentType) {
		this.contentType = contentType;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String execute() throws Exception {

		if (doc != null) {
			File target = new File(ServletActionContext.getServletContext()
					.getRealPath(savePath), genarateFileName(fileName));
			FileUtils.copyFile(doc, target);
			return SUCCESS;
		} else {
			this.addActionError("");
			return INPUT;
		}
	}

	public String genarateFileName(String fileName) {

		Date date = new Date();
		SimpleDateFormat sdf;
		String prefix = "";
		try {
			sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			prefix = sdf.format(date);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return prefix + fileName;
	}
}
