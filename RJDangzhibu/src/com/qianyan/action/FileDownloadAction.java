package com.qianyan.action;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileDownloadAction extends ActionSupport {

	String fileName;
	String contentType;
	String savePath;

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getFileName() throws Exception  {
		return new String(fileName.getBytes(),"iso-8859-1").substring(14);
	}

	public void setFileName(String fileName)
			throws UnsupportedEncodingException {
		this.fileName = new String(fileName.getBytes("iso-8859-1"), "UTF-8");
	}

	public String getContentType() {
		String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
		if ("xls".equals(suffix))
			contentType = "application/kset";
		if ("doc".equals(suffix) || "docx".equals(suffix))
			contentType = "application/kswps";
		return contentType;
	}

	public InputStream getInputStream() throws Exception {
		
		return ServletActionContext.getServletContext().getResourceAsStream(
				savePath + "\\" + fileName);
	}


	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

}
