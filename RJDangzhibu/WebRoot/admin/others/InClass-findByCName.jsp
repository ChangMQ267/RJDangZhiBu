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
    
    <title>�༶�б�</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  <body background="images/bj.jpg">
  <c:if test="${empty error }">  
  	<table width="1000" border="1" cellpadding="0" cellspacing="0" align="center">
  		<tr height="40">
  			<td width="100" align="center">id</td>
  			<td width="300" align="center">�༶����</td>
  			<td width="300" align="center">רҵ����</td>
  			<td width="300" align="center" colspan="3" >����</td>
  		</tr>
 		<c:if test="${! empty pm.list}">
 			<c:forEach items="${pm.list}" var="i">
		 		<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
		  			<td align="center">${i.id}</td>
		  			<td align="center">${i.className}</td>
		  			<td align="center">${i.professional.proName}</td>
		  			<c:choose>
		  				<c:when test="${session.login.state == 2 }">
		  					<td align="center"><a href="admin/UserInfo-listByIId?inClassId=${i.id }">��ʾȫ��ѧ��</a></td>
		  					<td align="center"><a href="admin/InClass-delete?inClassId=${i.id }">ɾ��</a></td>
		  					<td align="center"><a href="admin/InClass-modifyInput?inClassId=${i.id }">�޸�</a></td>
		  				</c:when>
		  				<c:otherwise><td align="center" colspan="3"><font color="red">Ȩ��δ�������Ȩ����</font></td></c:otherwise>
		  			</c:choose>
		  		</tr>
  			</c:forEach>
 		</c:if>
  		<tr>
  			<td colspan="2" align="left">���ι��鵽<font color="red">${pm.totalRecords }</font>���༶</td>
  			<td colspan="4" align="right">
  				<a href="admin/InClass-list?currentPage=1">��ҳ</a>
  				<a href="admin/InClass-list?currentPage=${pm.getPreviousPage() }">��һҳ</a>
  				<c:forEach var="page" begin="1" end="${pm.getTotalPage() }" step="1">
  					<c:choose>
  						<c:when test="${page == pm.currentPage }">
  							<a href="admin/InClass-list?currentPage=${page }"><font color="red" >${page }</font></a>
  						</c:when>
  						<c:otherwise>
  							<a href="admin/InClass-list?currentPage=${page }">${page }</a>
  						</c:otherwise>
  					</c:choose>
  				</c:forEach>
  				<a href="admin/InClass-list?currentPage=${pm.getNextPage() }">��һҳ</a>
  				��ҳ����${pm.getTotalPage() }
  			</td>
  		</tr>
  	</table>
  </c:if>
  <c:if test="${!empty error }"><font size="20" color="red">��ѯʧ�� ��${error }</font></c:if>
  </body>
</html>
