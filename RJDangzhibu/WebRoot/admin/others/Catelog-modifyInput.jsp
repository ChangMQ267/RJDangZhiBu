<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>管理员密码重置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/resetPassword.js" charset="gbk"></script>

  </head>
  <body background="images/bj.jpg">
  	<form action="admin/Catelog-modify?catelogId=${catelogId }" method="post" onsubmit="return checkPro()">
	  	<table>
			<tr height="20">
				<td width="150" align="right">分类名称：</td>
				<td width="150" align="left"><input id="proName" type="text" name="catelog.name" value="${catelog.name }"></td>
				<td><span id="professinalError"></span></td>
			</tr>  		
			<tr height="20">
				<td width="150" align="right">备注：</td>
				<td width="150" align="left"><input type="text" name="catelog.remark" value="${catelog.remark }"></td>
				<td></td>
			</tr>  		
			<tr>
				<td width="150" align="right"></td>
				<td width="150" align="left"><input type="submit" value="更新"><input type="reset" value="重置"></td>
				<td></td>
			</tr>  		
	  	</table>
  	</form>
  </body>
</html>
