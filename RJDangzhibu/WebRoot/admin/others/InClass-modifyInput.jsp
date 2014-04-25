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
    
    <title>修改班级信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/inclass.js" charset="gbk"></script>

  </head>
  <body background="images/bj.jpg">
  	<form action="admin/InClass-modify?inClassId=${inClassId }" method="post" onsubmit="return check()">
	  	<table>
			<tr height="20">
				<td width="150" align="right">专业名称：</td>
				<td width="150" align="left">
					<select name="proId">
						<option value="${inClass.professional.id }">${inClass.professional.proName }</option>
						<c:choose>
							<c:when test="${!empty professionals }">
								<c:forEach items="${professionals }" var="p">
									<c:if test="${p.id != inClass.professional.id }">
										<option value="${p.id }">${p.proName }</option>
									</c:if>
								</c:forEach>
							</c:when>
						</c:choose>
					</select>
				</td>
				<td></td>
			</tr>  		
			<tr>
				<td width="150" align="right">班级名称</td>
				<td width="150" align="left">
					<input id="className" type="text" name="className" value="${inClass.className }" onblur="checkClassName(this.value)"></td>
				<td><span id="inClassError"></span></td>
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
