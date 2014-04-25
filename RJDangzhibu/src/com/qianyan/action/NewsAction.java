package com.qianyan.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.Admin;
import com.qianyan.model.Catelog;
import com.qianyan.model.News;
import com.qianyan.service.CatelogService;
import com.qianyan.service.NewsService;
import com.qianyan.utils.PageModel;
import com.qianyan.utils.Validate;

public class NewsAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int currentPage = 1;
	private int pageSize;
	private int newsId;
	private int catelogId;
	private String content;
	private String title;
	private NewsService newsService;
	private News news;
	private Catelog catelog;
	private Admin admin;
	private List<News> newss;
	private List<Catelog> catelogs;
	private CatelogService catelogService;
	private PageModel pm;
	private String error = "";
	private Validate validate;
	
	/**
	 * 请求发布新闻
	 */
	public String addInput() {
		catelogs = catelogService.listCatlog();
		return "News";
	}
	
	/**
	 * 发布新闻
	 * @return
	 */
	public String add() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			if(validate.isNull(news.getTitle(), news.getContent())) {
				
				catelog = catelogService.findById(catelogId);
				admin = (Admin)request.getSession().getAttribute("login");
				news.setAdmin(admin);
				news.setCatelog(catelog);
				news.setReleaseTime(new Date());
				newsService.add(news);
			}else {
				error = "标题或内容不能为空";
			}
		}
		return "News";
	}
	
	/**
	 * 删除单个新闻
	 */
	public String delete() {
		
		error = isActivated();
		
		if(error.equals("")) {
			newsService.delete(newsId);
		}
		
		return "News";
	}

	/**
	 * 批量删除新闻
	 */
	public String batchDel() {
		
		error = isActivated();
		
		if(error.equals("")) {
			
			String[] ids = request.getParameterValues("id");
			String idStr = "";
			
			for (int i = 0; i < ids.length; i++) {
				idStr += ids[i] + ",";
			}
			
			if(idStr.length() > 0) {
				idStr = idStr.substring(0, idStr.length() - 1);
				newsService.batchDel(idStr);
			} else {
				error = "内部错误";
			}
		}
		return "News";
	}
	
	/**
	 * 请求修改新闻
	 */
	public String modifyInput() {
		news = newsService.findById(newsId);
		catelogs = catelogService.listCatlog();
		return "News";
	}
	
	/**
	 * 修改
	 */
	public String modify() {
		
		error = isActivated();
		
		if(error.equals("")) {
			if(validate.isNull(title, content)) {
				
				news = newsService.findById(newsId);
				catelog = catelogService.findById(catelogId);
				news.setCatelog(catelog);
				news.setTitle(title);
				news.setContent(content);
				newsService.update(news);
			} else {
				error = "新闻标题或内容不能为空";
			}
		}
		return "News";
	}
	
	/**
	 * 载入单个新闻对象
	 * @return
	 */
	public String load() {
		news = newsService.findById(newsId);
		int temp = news.getVisitTotal() + 1;
		news.setVisitTotal(temp);
		newsService.update(news);
		return "News";
	}
	
	/**
	 * 查找指定标题的新闻
	 */
	public String findByTitleInput() {
		return "News";
	}
	
	public String findByTitle() {
		
		if(!validate.checkSpecialCharacter(title)) {
		
			pageSize = 30;
			pm = newsService.findByTitle(title, currentPage, pageSize);
		} else {
			error = "含有非法字符";
		}
		return "News";
	}
	
	/**
	 * 批量显示新闻对象
	 */
	public String list() {
		pageSize = 20;
		pm = newsService.listNews(currentPage, pageSize);
		return "News";
	}
	
	/**
	 * 批量显示指定分类的新闻对象
	 */
	public String listByCId() {
		pageSize = 20;
		pm = (PageModel)newsService.listNews(catelogId, currentPage, pageSize);
		return "News";
	}
	

/**
 * ============================================================
 * 					setXXX(),getXXX()方法
 * ============================================================
 */
	
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	public Catelog getCatelog() {
		return catelog;
	}
	public void setCatelog(Catelog catelog) {
		this.catelog = catelog;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public List<News> getNewss() {
		return newss;
	}
	public void setNewss(List<News> newss) {
		this.newss = newss;
	}
	public List<Catelog> getCatelogs() {
		return catelogs;
	}
	public void setCatelogs(List<Catelog> catelogs) {
		this.catelogs = catelogs;
	}
	public CatelogService getCatelogService() {
		return catelogService;
	}
	@Resource
	public void setCatelogService(CatelogService catelogService) {
		this.catelogService = catelogService;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCatelogId() {
		return catelogId;
	}
	public void setCatelogId(int catelogId) {
		this.catelogId = catelogId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public PageModel getPm() {
		return pm;
	}
	public void setPm(PageModel pm) {
		this.pm = pm;
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
	public NewsService getNewsService() {
		return newsService;
	}
	@Resource
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	
}
