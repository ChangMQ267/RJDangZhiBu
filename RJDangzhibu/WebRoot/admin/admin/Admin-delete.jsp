<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:choose>
<c:when test="${session.login.state == 2 }">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>ɾ������Ա</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body background="images/bj.jpg">
  		<c:choose>
  			<c:when test="${!empty session.login && session.login.grade == 2 && session.login.state == 2 }">
  				<font size="20">��ϲ�㣬ɾ������Ա�ɹ� ��</font>
  			</c:when>
  			<c:otherwise>
  				<font size="30" color="red">���ѷǷ��������ѧԺ��֧���������ϵͳ��<br>��֧����Ȩ׷����˴ηǷ����룡</font>
  			</c:otherwise>
  		</c:choose>
  </body>
</html>
</c:when>
<c:otherwise><font size="30" color="red">���ѷǷ��������ѧԺ��֧���������ϵͳ��<br>��֧����Ȩ׷����˴ηǷ����룡</font></c:otherwise>
</c:choose>