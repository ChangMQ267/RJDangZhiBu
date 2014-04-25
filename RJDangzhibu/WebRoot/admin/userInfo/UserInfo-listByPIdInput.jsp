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
    
    <title>选择专业</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/professional.css">
	<script type="text/javascript" src="js/professional.js"></script>
  </head>
  
  <body background="images/bj.jpg">
  <form id="form" action="admin/UserInfo-listByPId" method="post">
  	<table align="center">
  		<tr height="160"></tr>
  		<tr>
  			<td><font size="5">请选择专业名称:</font></td>
  			<td width="100" height="40">
  				<select name="professionalId">
  					<c:if test="${!empty professionals }">
  					<c:forEach items="${professionals }" var="p">
  						<option value="${p.id }">${p.proName }</option>				
  					</c:forEach>
  					</c:if>
  				</select>
  			</td>
  			<td width="50" height="40"><input type="submit" value="查询"></td>
  		</tr>
  	</table>
  </form>
  </body>
</html>
