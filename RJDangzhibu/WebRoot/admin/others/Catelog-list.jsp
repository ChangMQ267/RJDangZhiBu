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
    
    <title>�����б�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  
  <body background="images/bj.jpg">
  	<table width="1000" border="1" cellpadding="0" cellspacing="0" align="center">
  		<tr height="40">
  			<td width="100" align="center">id</td>
  			<td width="300" align="center">��������</td>
  			<td width="300" align="center">��ע</td>
  			<td width="300" align="center" colspan="3">����</td>
  		</tr>
 		<c:if test="${! empty catelogs}">
 		<c:forEach items="${catelogs}" var="catelog">
 		<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  			<td align="center">${catelog.id}</td>
  			<td align="center">${catelog.name}</td>
  			<td align="center">${catelog.remark}</td>
  			<td align="center"><a href="admin/News-listByCId?catelogId=${catelog.id }" target="main">�÷���ȫ������</a></td>
  			<c:choose>
  				<c:when test="${session.login.grade == 2 && session.login.state == 2}">
  					<td align="center"><a href="admin/Catelog-delete?catelogId=${catelog.id }" target="main">ɾ��</a></td>
  					<td align="center"><a href="admin/Catelog-modifyInput?catelogId=${catelog.id }" target="main">�޸�</a></td>
  				</c:when>
  				<c:otherwise><td colspan="2" align="center"><font color="red">Ȩ�޲��㣬����Ȩ����</font></td></c:otherwise>
  			</c:choose>
  		</tr>
 		</c:forEach>
 		</c:if>
  	</table>
  </body>
</html>
