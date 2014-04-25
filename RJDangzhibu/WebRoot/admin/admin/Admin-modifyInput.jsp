<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../verification.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员密码重置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/adminAdd.js" charset="gbk"></script>

  </head>
  <body background="images/bj.jpg">
  	<form action="admin/Admin-modify?adminId=${adminId }" method="post" onsubmit="return checkModify()">
	  	<table>
			<tr height="20">
				<td width="150" align="right">账户名：</td>
				<td width="150" align="left">
					<input id="username" type="text" name="admin.username" value="${admin.username }" readonly="readonly">
					<input id="password" type="hidden" value="${admin.password }" name="admin.password">
				</td>
				<td><span id="usernameError"><font color="red">禁止修改</font></span></td>
			</tr>  		
			<%-- <tr>
				<td width="150" align="right">密码：</td>
				<td width="150" align="left"><input id="password" type="password" value="${admin.password }" name="admin.password"></td>
				<td><span id="passwordError"></span></td>
			</tr>  		 --%>
			<tr>
				<c:choose>
					<c:when test="${session.login.grade == 2 && session.login.username != admin.username}" >
						<td width="150" align="right">状态：</td>
						<td width="150" align="left">
							<select name="admin.state">
								<c:choose>
									<c:when test="${admin.state == 1 }">
										<option value="1">未激活</option>
										<option value="2">激活</option>
									</c:when>
									<c:otherwise>
										<option value="2">激活</option>
										<option value="1">未激活</option>
									</c:otherwise>
								</c:choose>
							</select>
						</td>
						<td></td>
					</c:when>
					<c:otherwise>
						<input type="hidden" name="admin.state" value="${admin.state }">
					</c:otherwise>
				</c:choose>
						<input type="hidden" name="admin.grade" value="${admin.grade }"/>
			</tr>  		
			<tr>
				<td width="150" align="right">用户名：</td>
				<td width="150" align="left"><input type="text" name="admin.adminName" value="${admin.adminName }"></td>
				<td><span id="nameError"></span></td>
			</tr>  		
			<tr>
				<td width="150" align="right"></td>
				<td width="150" align="left"><input type="submit" value="提交"><input type="reset" value="重置"></td>
				<td></td>
			</tr>  		
	  	</table>
  	</form>
  </body>
</html>
