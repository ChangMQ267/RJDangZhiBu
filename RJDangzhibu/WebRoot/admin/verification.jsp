<%@ page language="java" import="java.util.*,com.qianyan.model.Admin"
	pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>״̬��֤</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<c:if test="${empty session.login }">
	<script language="JavaScript1.2" type="text/javascript">
		function delayURL(url, time) {
			alert("��¼��ʱ�������µ�¼");
			setTimeout("top.location.href='" + url + "'", time);
		}
	</script>
	<script type="text/javascript">
		if(navigator.userAgent.indexOf("MSIE") != -1) {
			//�ж��������ie
			delayURL("admin/login.jsp",0);
		} else {
			//����
			delayURL("admin/admin/login.jsp",0);
		}
	</script>
</c:if>
</html>