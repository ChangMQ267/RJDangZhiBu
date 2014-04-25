<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="../verification.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布新闻</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/news.js" charset="gbk"></script>
  </head>
  
  <body background="images/bj.jpg">
  <c:choose>
  <c:when test="${session.login.state == 2 }">
	  <form id="form" action="admin/News-add" method="post" onSubmit="return check()">
	  	<table align="center" width="813" >
	  		<tr>
	  			<td width="200"><font size="5">请选所属分类:</font></td>
	  			<td width="100" height="40" align="left">
	  				<select name="catelogId">
	  					<c:if test="${!empty catelogs }">
	  					<c:forEach items="${catelogs }" var="catelog">
	  						<option value="${catelog.id }">${catelog.name }</option>				
	  					</c:forEach>
	  					</c:if>
	  				</select>
	  			</td>
	  			<td width="513" height="40"></td>
	  		</tr>
	  		<tr>
	  			<td><font size="5">请输新闻标题:</font></td>
	  			<td>
	  				<input id="title" type="text" name="news.title" onblur="checkTitle(this.value)"/>
	  			</td>
	  			<td><span id="titleError"></span></td>
	  		</tr>
	  		<tr>
	  			<td colspan="3"><font size="5">内容(图片路径和名字请不要包含中文):</font><span id="contentError"></span></td>
	  		</tr>
	  		<tr>	
	  			<td colspan="3">
	  				<textarea id="editor1" rows="15" cols="80" name="news.content" onblur="checkContent(this.value)"></textarea>
	  			</td>
	  		</tr>
	  		<tr>
	  			<td>
	  				<input type="submit" value="发布">
	  			</td>
	  		</tr>
	  		
	  	</table>
	  </form>
	  <ckfinder:setupCKEditor basePath="ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="ckeditor/" />
  </c:when>
  <c:otherwise><font size="30" color="red">您已非法进入软件学院党支部党务管理系统！党支部有权追究你此次非法侵入！</font></c:otherwise>
  </c:choose>
  </body>
</html>
