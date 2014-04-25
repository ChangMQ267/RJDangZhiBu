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
    
    <title>添加专业</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/inclass.js" charset="gbk"></script>
  </head>
  
  <body onload="getFocus()" background="images/bj.jpg">
<c:choose>
  <c:when test="${session.login.state == 2 }">
  <form id="form" action="admin/InClass-add" method="post" onSubmit="return check()">
  	<table align="left">
  		<tr>
  			<td><font size="5">请选择专业名称:</font></td>
  			<td width="100" height="40">
  				<select name="proId">
  					<c:if test="${!empty professionals }">
  					<c:forEach items="${professionals }" var="pro">
  						<option value="${pro.id }">${pro.proName }</option>				
  					</c:forEach>
  					</c:if>
  				</select>
  			</td>
  			<td width="50" height="40">
  			</td>
  		</tr>
  		<tr>
  			<td><font size="5">请输入班级名称:</font></td>
  			<td>
  				<input id="className" type="text" name="inClass.className" onblur="checkClassName(this.value)"/>
  			</td>
  			<td>
  				<input type="submit" value="添加">
  			</td>
  		</tr>
  		<tr>
  			<td></td>
  			<td>
  				<span id="inClassError"></span>
  			</td>
  			<td></td>
  		</tr>
  		
  	</table>
  </form>
 </c:when>
  <c:otherwise><font size="30" color="red">您已非法进入软件学院党支部党务管理系统！党支部有权追究你此次非法侵入！</font></c:otherwise>
  </c:choose>
  </body>
</html>
