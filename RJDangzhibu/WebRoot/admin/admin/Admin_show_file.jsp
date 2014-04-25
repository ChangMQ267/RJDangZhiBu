<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'Admin_show_file.jsp' starting page</title>

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
	<center>
		<font size="5">上传的文件列表如下：</font>
	</center>
	<center>
		<s:iterator value="docList" var="doc">
			<br />
			<br />
			<a
				href='<s:url action="filedownload"><s:param name="fileName" value="#doc[1]" ></s:param></s:url>'>
				<s:property value="#doc[0]" /> </a>
		</s:iterator>
	</center>
	<br />
	<br />
	<a href='<s:url action="fileupload"/>'>继续上传文件</a>
</body>
</html>
