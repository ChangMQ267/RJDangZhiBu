<%@ page language="java" import="java.util.*,com.qianyan.model.UserInfo" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�û�������Ϣ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  
  <body>
  <jsp:include page="verification.jsp"></jsp:include>
  <jsp:include page="head.jsp"></jsp:include>
  <table width="500" border="2" align="center" bordercolor="#f5cc22">
  	<tr>
  		<td colspan="2" align="center" style="font-size: 20px;color: #000000">�û�������Ϣ</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">�û��˺�:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.username }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">�û�����:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.studentName}</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">���ڰ༶:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.inClass.className }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">����רҵ:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.inClass.professional.proName }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">�ݽ��뵳������ʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.applyParty }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.applyParty }</td>
  			</c:when>
  			<c:otherwise ><td align="left" ><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">ϵ���ν�ҵʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.departGradu }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.departGradu }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">��Ϊ�뵳��������ʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.activist }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.activist }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">תԤ����Աʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.ready }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.ready }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">ת��ʽ��Աʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.positive }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.positive }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">��֯��ϵת��ʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.relationIn }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.relationIn }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">��֯��ϵת��ʱ��:</td>
  		<c:choose>
  			<c:when test="${!empty session.userLogin.relationOut }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.relationOut }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">�����Ŭ����</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<c:if test="${!empty session.userLogin.positive }">
	  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
	  		<td width="200" align="right" style="font-size: 16px;color: #000000">������Աʱ��:</td>
	  		<td align="left" style="font-size: 16px;color: #e12f1f">${session.userLogin.flow }</td>
	  	</tr>
  	</c:if>
  </table>
  <jsp:include page="down.jsp"></jsp:include>
  </body>
</html>
