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
    
    <title>按姓名查找</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  <body background="images/bj.jpg">
  <c:if test="${empty error && session.login.state == 2 }">
  		<table width="1000" border="1" cellpadding="0" cellspacing="0" align="center">
  		<tr height="40">
  			<td align="center" width="50">id</td>
  			<td align="center" width="100">用户账户</td>
  			<td align="center" width="100">用户姓名</td>
  			<td align="center" width="200">当前入党进度</td>
  			<td align="center" width="150">所在班级</td>
  			<td align="center" width="400" colspan="4">操作</td>
  		</tr>
 		<c:if test="${! empty pm.list}">
 			<c:forEach items="${pm.list}" var="user">
		 		<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
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
 		<%-- <tr>
         	<td colspan="9" align="right">
         	  <a href="admin/UserInfo-findBySName?studentName=${studentName }&currentPage=1" target="main">首页</a>
         	  <a href="admin/UserInfo-findBySName?studentName=${studentName }&currentPage=${pm.getPreviousPage()}">上一页</a>
         	  <c:forEach var="page" begin="1" end="${pm.getTotalPage() }" step="1">
         	  	<c:choose>
         	  		<c:when test="${page == pm.currentPage }">
         	  			<a href="admin/UserInfo-findBySName?studentName=${studentName }&currentPage=${page }"><font color="red">${page }</font></a>
         	  		</c:when>
         	  		<c:otherwise>
	         	  		<a href="admin/UserInfo-findBySName?studentName=${studentName }&currentPage=${page }">${page }</a>
         	  		</c:otherwise>
         	  	</c:choose>
         	  </c:forEach>
         	  <a href="admin/UserInfo-findBySName?studentName=${studentName }&currentPage=${pm.getNextPage() }">下一页</a>
         	  <a href="admin/UserInfo-findBySName?studentName=${studentName }&currentPage=${pm.getLastPage() }">尾页</a>
         	  总页数：${pm.getTotalPage() }
         	</td> --%>
        </tr>
         <tr><td colspan="9" align="center">本次共找到党员:<font color="red">${pm.totalRecords }人</font></tr>
      </table>
    </c:if>
    <c:if test="${!empty error }">${error }</c:if>
  </body>
</html>
