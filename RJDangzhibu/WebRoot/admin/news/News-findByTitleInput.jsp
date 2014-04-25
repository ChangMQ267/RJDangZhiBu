<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>输入姓名</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/validate.js" charset="gbk"></script>
  </head>
  
  <body background="images/bj.jpg">
  <form id="form" action="admin/News-findByTitle" method="post" onsubmit="return validateTitle()">
  	<table align="center">
  		<tr height="160"></tr>
  		<tr>
  			<td><font size="5">输入新闻标题(或部分标题):</font></td>
  			<td width="100" height="40"><input type="text" id="title" name="title"></td>
  			<td><input type="submit" value="查询"></td>
  			<td width="200" height="40"><span id="checkError"></span></td>
  		</tr>
  	</table>
  </form>
  </body>
</html>
