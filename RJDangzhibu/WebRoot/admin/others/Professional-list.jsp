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
    
    <title>רҵ�б�</title>
    
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
  			<td width="330" align="center">id</td>
  			<td width="340" align="center">רҵ����</td>
  			<td width="330" align="center" colspan="3">����</td>
  		</tr>
 		<c:if test="${! empty pm.list}">
 		<c:forEach items="${pm.list}" var="p">
 		<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  			<td align="center">${p.id}</td>
  			<td align="center">${p.proName}</td>
  			<c:choose>
  				<c:when test="${session.login.state == 2}">
					<td align="center"><a href="admin/Professional-listInClass?professionalId=${p.id }">��ʾ�༶</a></td>
  					<td align="center"><a href="admin/Professional-modifyInput?professionalId=${p.id }">�޸�</a></td>
  					<td align="center"><a href="admin/Professional-delete?professionalId=${p.id }">ɾ��</a></td>
  				</c:when>
  				<c:otherwise><td colspan="3" align="center"><font color="red">Ȩ�޲��㣬����Ȩ����</font></td></c:otherwise>
  			</c:choose>
  		</tr>
 		</c:forEach>
 		</c:if>
 		<tr>
 			<td colspan="5" align="right">
 				<a href="admin/Professional-list?currentPage=1">��ҳ</a>
  				<a href="admin/Professional-list?currentPage=${pm.getPreviousPage() }">��һҳ</a>
  				<c:forEach var="page" begin="1" end="${pm.getTotalPage() }" step="1">
  					<c:choose>
  						<c:when test="${page == pm.currentPage }">
  							<a href="admin/Professional-list?currentPage=${page }"><font color="red" >${page }</font></a>
  						</c:when>
  						<c:otherwise>
  							<a href="admin/Professional-list?currentPage=${page }">${page }</a>
  						</c:otherwise>
  					</c:choose>
  				</c:forEach>
  				<a href="admin/Professional-list?currentPage=${pm.getNextPage() }">��һҳ</a>
  				<a href="admin/Professional-list?currentPage=${pm.getLastPage() }">βҳ</a>
  				��ҳ����${pm.getTotalPage() }
 			</td>
 		</tr>
 		<tr>
 			<td colspan="5" align="center">����רҵ<font color="red">${pm.totalRecords }</font>��</td>
 		</tr>
  	</table>
  </body>
</html>
