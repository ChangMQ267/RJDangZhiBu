<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>密码修改</title>
    
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
  
  <body>
  	<jsp:include page="verification.jsp"></jsp:include>
  	<jsp:include page="head.jsp"></jsp:include>
  	<form id="form" action="admin/Index-resetPassword?userInfoId=${session.userLogin.id }" method="post" onSubmit="return check()">
  		<table width="600" height="270" align="center">
  			<tr align="center">
  				<td>
  					<table align="center" width="600">
  						<tr>
  							<td width="200" align="right">输入新密码：</td>
  							<td width="150"><input id="password" type="password" name="password" onblur="checkPwd(this.value)"></td>
  							<td width="250"><span id="passwordError"></span></td>
  						</tr>
  						<tr>
  							<td align="right">确认新密码：</td>
  							<td><input id="password2" type="password" name="password2" onblur="checkPassWord(this.value)"></td>
  							<td><span id="password2Error"></span></td>
  						</tr>
  						<tr>
  							<td></td>
  							<td><input type="submit" value="提交"><input type="reset" value="重置"></td>
  							<td><span id="checkError"></span></td>
  						</tr>
  					</table>
  				</td>
  			</tr>
  		</table>
  	</form>
  	<jsp:include page="down.jsp"></jsp:include>
  </body>
</html>
