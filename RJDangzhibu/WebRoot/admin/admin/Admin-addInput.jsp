<%@ page language="java" import="java.util.*,com.qianyan.model.Admin"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="../verification.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>添加新闻分类</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/adminAdd.js" charset="gbk"></script>
</head>

<body background="images/bj.jpg">
	<c:choose>
		<c:when test="${session.login.grade == 2 && session.login.state == 2}">
			<form id="form" action="admin/Admin-add" method="post" onSubmit="return check()">
				<table align="center" width="500">
					<tr>
						<td width="200"><font size="5">管理员账号:</font>
						</td>
						<td width="100" height="40"><input id="username" type="text"
							name="admin.username" onblur="checkUsername(this.value)" /></td>
						<td width="200" height="40"><span id="usernameError"></span>
						</td>
					<tr>
						<td><font size="5">管理员密码:</font>
						</td>
						<td><input id="password" type="password"
							name="admin.password" onblur="checkPassword(this.value)" /></td>
						<td><span id="passwordError"></span>
						</td>
					</tr>
					<tr>
						<td><font size="5">确认密码:</font>
						</td>
						<td><input id="password2" type="password" name="password2"
							onblur="checkPassword2(this.value)" /></td>
						<td><span id="password2Error"></span>
						</td>
					</tr>
					<tr>
						<td><font size="5">管理员姓名:</font>
						</td>
						<td><input type="text" name="admin.adminName" /> <input
							type="hidden" name="admin.grade" value="1"></td>
						<td></td>
					</tr>
					<tr>
						<td><font size="5">权限状态:</font>
						</td>
						<td><select name="admin.state">
								<option value="1">不激活</option>
								<option value="2">激活</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="添加"> <input
							type="reset" value="重置"></td>
						<td><span id="submitError"></span>
						</td>
					</tr>

				</table>
			</form>
		</c:when>
		<c:otherwise>
			<font size="30" color="red">您已非法进入软件学院党支部党务管理系统！党支部有权追究你此次非法侵入！</font>
		</c:otherwise>
	</c:choose>
</body>
</html>
