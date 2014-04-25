<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../verification.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>
	<script type="text/javascript" src="js/select.js"></script>

  </head>
  
  <body background="images/bj.jpg">
  	<form action="admin/UserInfo-batchDel" method="post" onsubmit="return checkIsNull()">
  		<table width="1100" border="1" cellpadding="0" cellspacing="0" align="center">
  		<tr height="40">
  			<c:if test="${session.login.state == 2 }">
  				<td align="center" width="100"><input type="checkbox" id="checkAll" onclick="javascript:selectAll(this,'id');">全选/取消</td>
  			</c:if>
  			<td align="center" width="50">id</td>
  			<td align="center" width="100">用户账户</td>
  			<td align="center" width="100">用户姓名</td>
  			<td align="center" width="200">当前入党进度</td>
  			<td align="center" width="150">所在班级</td>
  			<td align="center" width="400" colspan="4">操作
  				<c:if test="${session.login.state == 2 }">
	  				<input type="submit" value="批量删除" ><span id="error"></span>
	  			</c:if>
  			</td>
  		</tr>
 		<c:if test="${! empty pm.list}">
 			<c:forEach items="${pm.list}" var="user">
		 		<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
		 			<c:if test="${session.login.state == 2 }">
	  					<td align="center"><input type="checkbox" name="id" value="${user.id }"></td>
	  				</c:if>
		  			<td align="center">${user.id}</td>
		  			<td align="center">${user.username}</td>
		  			<td align="center">${user.studentName}</td>
		  			<td align="center">${user.state }</td>
		  			<td align="center">${user.inClass.className }</td>
		  			<c:choose>
		  				<c:when test="${session.login.state == 2 }">
			  				<td align="center"><a href="admin/UserInfo-load?UserInfoId=${user.id }">详细信息</a></td>
			  				<td align="center"><a href="admin/UserInfo-resetPasswordInput?userInfoId=${user.id }">密码重置</a></td>
			  				<td align="center"><a href="admin/UserInfo-delete?UserInfoId=${user.id }">删除</a></td>
			  				<td align="center"><a href="admin/UserInfo-modifyInput?UserInfoId=${user.id }">修改信息</a></td>
		  				</c:when>
		  				<c:otherwise><td align="center" colspan="4"><font color="red">权限未激活，您无权操作</font></td></c:otherwise>
		  			</c:choose>
		  		</tr>
 			</c:forEach>
 		</c:if>
 		<tr>
         	<td colspan="10" align="right">
         	  <a href="admin/UserInfo-list?currentPage=1" target="main">首页</a>
         	  <a href="admin/UserInfo-list?currentPage=${pm.getPreviousPage()}">上一页</a>
         	  <c:forEach var="page" begin="1" end="${pm.getTotalPage() }" step="1">
         	  	<c:choose>
         	  		<c:when test="${page == pm.currentPage }">
         	  			<a href="admin/UserInfo-list?currentPage=${page }"><font color="red">${page }</font></a>
         	  		</c:when>
         	  		<c:otherwise>
	         	  		<a href="admin/UserInfo-list?currentPage=${page }">${page }</a>
         	  		</c:otherwise>
         	  	</c:choose>
         	  </c:forEach>
         	  <a href="admin/UserInfo-list?currentPage=${pm.getNextPage() }">下一页</a>
         	  <a href="admin/UserInfo-list?currentPage=${pm.getLastPage() }">尾页</a>
         	  总页数：${pm.getTotalPage() }
         	</td>
         </tr>
         <tr><td colspan="10" align="center">系统共有用户:<font color="red">${pm.totalRecords }</font>人</tr>
  	</table>
  </form>
  </body>
</html>
