<%@ page language="java" import="java.util.*,com.qianyan.utils.SubString" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% SubString subStr = new SubString(); %>
<jsp:include page="../verification.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="js/select.js"></script>
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  
  <body background="images/bj.jpg"> 
  	<form action="admin/News-batchDel" method="post" onsubmit="return checkIsNull()">
  	<table width="1100" border="1" cellpadding="0" cellspacing="0" align="center">
  		 <tr height="40">
  		 	<c:if test="${session.login.state == 2 }">
  				<td align="center" width="100"><input type="checkbox" id="checkAll" onclick="javascript:selectAll(this,'id');">全选/取消</td>
  			</c:if>
  			<td align="center" width="50">id</td>
  			<td align="center" width="400">标题</td>
  			<td align="center" width="100">作者</td>
  			<td align="center" width="100">发布时间</td>
  			<td align="center" width="50">点击量</td>
  			<td align="center" width="100">所属分类</td>
  			<td align="center" width="200" colspan="3">操作
  				<c:if test="${session.login.state == 2 }">
	  				<input type="submit" value="批量删除" ><span id="error"></span>
	  			</c:if>
  			</td>
  		 </tr>
         <c:forEach items="${pm.list }" var="n1">
         <tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
         	<c:if test="${session.login.state == 2 }">
	  			<td align="center"><input type="checkbox" name="id" value="${n1.id }"></td>
	  		</c:if>
             <td align="center">${n1.id }</td>
             <c:set value="${n1.title }" var="title"></c:set>
             <%
             	String str = (String)pageContext.getAttribute("title");
             	String title = str.getBytes("GBK").length > 50?subStr.substr(str, 50, "……"):str;
              %>
			 <td align="left"><a href="admin/News-load?newsId=${n1.id }" target="_blank" title="${n1.title }"><%=title %></a></td>
			 <td align="center">${n1.admin.adminName }</td>
			 <td align="center">${n1.releaseTime }</td>
			 <td align="center">${n1.visitTotal }</td>
			 <td align="center">${n1.catelog.name }</td>
			 	<c:choose>
			     	<c:when test="${session.login.state == 2 }">
					     <td align="center"><a href="admin/News-load?newsId=${n1.id }" target="_blank" >详细信息</a></td>
					  	  <td align="center"><a href="admin/News-delete?newsId=${n1.id }">删除</a></td>
					  	  <td align="center"><a href="admin/News-modifyInput?newsId=${n1.id }">修改</a></td>
			     	</c:when>
			     	<c:otherwise><td colspan="3" align="center"><font color="red">您的权限未激活，无权操作</font></td></c:otherwise>
			     </c:choose>
        	 </tr>
           </c:forEach>
         <tr>
         	<td colspan="10" align="right">
         	  <a href="admin/News-list?currentPage=1" target="main">首页</a>
         	  <a href="admin/News-list?currentPage=${pm.getPreviousPage()}">上一页</a>
         	  <c:forEach var="page" begin="1" end="${pm.getTotalPage() }" step="1">
         	  	<c:choose>
         	  		<c:when test="${page == pm.currentPage }">
         	  			<a href="admin/News-list?currentPage=${page }"><font color="red">${page }</font></a>
         	  		</c:when>
         	  		<c:otherwise>
	         	  		<a href="admin/News-list?currentPage=${page }">${page }</a>
         	  		</c:otherwise>
         	  	</c:choose>
         	  </c:forEach>
         	  <a href="admin/News-list?currentPage=${pm.getNextPage() }">下一页</a>
         	  <a href="admin/News-list?currentPage=${pm.getLastPage() }">尾页</a>
         	  总页数：${pm.getTotalPage() }
         	</td>
         </tr>
         <tr><td colspan="10" align="center">本系统共有<font color="red">${pm.totalRecords }</font>个新闻</td></tr>
     </table>
     </form>
  </body>
</html>
