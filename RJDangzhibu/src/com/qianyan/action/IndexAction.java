package com.qianyan.action;

import java.util.List;

import javax.annotation.Resource;

import com.qianyan.model.Catelog;
import com.qianyan.model.News;
import com.qianyan.model.UserInfo;
import com.qianyan.service.CatelogService;
import com.qianyan.service.NewsService;
import com.qianyan.service.UserInfoService;
import com.qianyan.utils.MD5;
import com.qianyan.utils.PageModel;
import com.qianyan.utils.Validate;

public class IndexAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private PageModel pm;
	private CatelogService catelogService;
	private NewsService newsService;
	private List<Catelog> catelogs;
	private UserInfo userInfo;
	private UserInfoService userInfoService;
	private List<News> news1,news2,news3;
	private Catelog catelog;
	private int catelogId;
	private int userInfoId;
	private int newsId;
	private int currentPage = 1;
	private int pageSize;
	private String password;
	private String error = "";
	private Validate validate;
	
	/**
	 * 首页
	 * @return
	 */
	public String index() {
		
		catelogs = catelogService.listCatlog();
		
		for (int i = 0; i < catelogs.size(); i++) {
			catelog = catelogs.get(i);
			switch (i) {
			case 0:
				news1 = newsService.searchIdTitle(catelog.getId(),10);
				break;
			case 1:
				news2 = newsService.searchIdTitle(catelog.getId(),8);
				break;
			case 2:
				news3 = newsService.searchIdTitle(catelog.getId(),8);
				break;
			default:
				break;
			}
		}
		return "index";
	}
	
	/**
	 * 10代表读取的条数
	 * catelogId代表分类目录
	 * @return
	 */
	public String listByCId() {
		pageSize = 10;
		pm = newsService.searchIdTitle(catelogId, currentPage, pageSize);
		return "newsList";
	}
	
	/**
	 * 请求修改口令
	 */
	public String resetPasswordInput() {
		return "resetPasswordInput";
	}
	
	/**
	 * 修改口令
	 * @return
	 */
	public String resetPassword() {
		
		UserInfo currentUserInfo = this.currentUserInfo();
		
		if(currentUserInfo.getId() == userInfoId) {
			
			userInfo = userInfoService.findById(userInfoId);
			userInfo.setPassword(MD5.MD5Encode(password));
			userInfoService.update(userInfo);
		}
		
		return "resetPassword";
	}
	
	
	
/**
 * ==================================================================
 * 						setXXX(),getXXX()方法
 * ==================================================================
 */
	
	public CatelogService getCatelogService() {
		return catelogService;
	}
	@Resource
	public void setCatelogService(CatelogService catelogService) {
		this.catelogService = catelogService;
	}
	public NewsService getNewsService() {
		return newsService;
	}
	@Resource
	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}
	public List<Catelog> getCatelogs() {
		return catelogs;
	}
	public void setCatelogs(List<Catelog> catelogs) {
		this.catelogs = catelogs;
	}
	public List<News> getNews1() {
		return news1;
	}
	public void setNews1(List<News> news1) {
		this.news1 = news1;
	}
	public List<News> getNews2() {
		return news2;
	}
	public void setNews2(List<News> news2) {
		this.news2 = news2;
	}
	public List<News> getNews3() {
		return news3;
	}
	public void setNews3(List<News> news3) {
		this.news3 = news3;
	}
	public Catelog getCatelog() {
		return catelog;
	}
	public void setCatelog(Catelog catelog) {
		this.catelog = catelog;
	}
	public int getCatelogId() {
		return catelogId;
	}
	public void setCatelogId(int catelogId) {
		this.catelogId = catelogId;
	}
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
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
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public UserInfoService getUserInfoService() {
		return userInfoService;
	}
	@Resource
	public void setUserInfoService(UserInfoService userInfoService) {
		this.userInfoService = userInfoService;
	}
	public int getUserInfoId() {
		return userInfoId;
	}
	public void setUserInfoId(int userInfoId) {
		this.userInfoId = userInfoId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
