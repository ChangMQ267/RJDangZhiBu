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
    
    <title>管理员列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/select.js"></script>
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  
  <body background="images/bj.jpg">
  <form action="admin/Admin-batchDel" method="post" onsubmit="return checkIsNull()">
  	<table width="1100" border="1" cellpadding="0" cellspacing="0" align="center">
  		<tr height="40">
  			<c:if test="${session.login.state == 2 && session.login.grade == 2 }">
  				<td align="center" width="100"><input type="checkbox" id="checkAll" onclick="javascript:selectAll(this,'id');">全选/取消</td>
  			</c:if>
  			<td align="center" width="100">ID</td>
  			<td align="center" width="200">管理员账户</td>
  			<td align="center" width="200">管理员姓名</td>
  			<td align="center" width="100">权限状态</td>
  			<td align="center" width="100">等级</td>
  			<td align="center" width="300" colspan="3">操作
	  			<c:if test="${session.login.state == 2 && session.login.grade == 2 }">
	  				<input type="submit" value="批量删除" ><span id="error"></span>
	  			</c:if>
  			</td>
  		</tr>
 		<c:if test="${! empty pm.list}">
 			<c:forEach items="${pm.list}" var="a">
 		<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)" >
 			<c:if test="${session.login.state == 2 && session.login.grade == 2 }">
 				<c:choose>
 				<c:when test="${a.grade != 2 }">
  					<td align="center"><input type="checkbox" name="id" value="${a.id }"></td>
  				</c:when>
  				<c:otherwise><td></td></c:otherwise>
  				</c:choose>
  			</c:if>
  			<td align="center">${a.id}</td>
  			<td align="center">${a.username}</td>
  			<td align="center">${a.adminName}</td>
  			<td align="center"><c:if test="${a.state==1 }">未激活</c:if><c:if test="${a.state==2 }">已激活</c:if></td>
  			<td align="center"><c:if test="${a.grade==1 }">普通管理员</c:if><c:if test="${a.grade==2 }">超级管理员</c:if></td>
  			<c:choose>
  				<c:when test="${session.login.state == 2 && session.login.grade == 2}">
	  				<td align="center"><a href="admin/Admin-resetPasswordInput?adminId=${a.id }">密码重置</a></td>
	  				<td align="center">
	  				<c:if test="${a.grade != 2 }">
	  					<a href="admin/Admin-delete?adminId=${a.id }">删除</a>
	  				</c:if>
	  				</td>
	  					<td align="center"><a href="admin/Admin-modifyInput?adminId=${a.id }">修改信息</a></td>
  				</c:when>
  				<c:otherwise><td colspan="3" align="center"><font color="red" >权限不足，您无权操作</font></td></c:otherwise>
  			</c:choose>
  		</tr>
 			</c:forEach>
 		</c:if>
  	</table>
  </form>
  </body>
</html>
