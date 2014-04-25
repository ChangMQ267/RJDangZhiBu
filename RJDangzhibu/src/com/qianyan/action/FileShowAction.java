package com.qianyan.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FileShowAction extends ActionSupport {

	String savePath;
    List docList=new ArrayList();
    
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	
	public List getDocList() {
		return docList;
	}


	public void setDocList(List docList) {
		this.docList = docList;
	}


	@Override
	public String execute() throws Exception {

		
			String realPath = ServletActionContext.getServletContext()
					.getRealPath(savePath);
			File file = new File(realPath);
			File[] fileList = file.listFiles();
			
			for (int i = 0; i < fileList.length; i++) {
				List doc=new ArrayList();
				doc.add(0,fileList[i].getName().substring(14));
				doc.add(1,fileList[i].getName());
				docList.add(doc);
			}
		return SUCCESS;
	}
}
