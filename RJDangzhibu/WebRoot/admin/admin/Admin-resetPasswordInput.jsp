<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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
	<script type="text/javascript" src="js/resetPassword.js"></script>

  </head>
  
  <body background="images/bj.jpg">
  <c:choose>
  <c:when test="${session.login.grade == 2 && session.login.state == 2 || session.login.id == adminId}">
  	<form action="admin/Admin-resetPassword?adminId=${adminId }" method="post" onSubmit="return check()">
	  	<table>
			<tr height="20">
				<td width="150" align="right">请输入新密码：</td>
				<td width="150" align="left"><input id="password" type="password" name="password" onblur="checkPwd(this.value)"></td>
				<td><span id="passwordError"></span></td>
			</tr>  		
			<tr>
				<td width="150" align="right">确认新密码：</td>
				<td width="150" align="left"><input id="password2" type="password" name="password2" onblur="checkPassWord(this.value)"></td>
				<td><span id="password2Error"></span></td>
			</tr>  		
			<tr>
				<td width="150" align="right"></td>
				<td width="150" align="left"><input type="submit" value="提交"><input type="reset" value="重置"></td>
				<td><span id="checkError"></span></td>
			</tr>  		
	  	</table>
  	</form>
  	</c:when>
  <c:otherwise><font size="30" color="red">您已非法进入软件学院党支部党务管理系统！党支部有权追究你此次非法侵入！</font></c:otherwise>
  </c:choose>
  </body>
</html>
