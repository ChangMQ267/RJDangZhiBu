<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'download.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/wdxz.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>
	<table width="1003" height="400" align="center">
		<tr height="400">
			<td width="150">
				<table width="150">
					<tr height="20">
						<td></td>
					</tr>
					<tr height="29">
						<td align="center" width="150"><img width="103" height="20"
							onclick="zbjj()" src="images/wdxz.jpg"
							onmouseover="changePictureIn(this)"
							onmouseout="changePictureOut(this)" /></td>
					</tr>
				</table></td>
			<td width="853">
				<table id="zbjj" width="853">
					<tr height="30">
						<td align="center" style="font-size: 28px;">文档下载</td>
					</tr>
					<tr height="48">
						<td style="font-size: 20px;"><s:iterator value="docList"
								var="doc">
								<br />
								<br />
								<a
									href='<s:url action="filedownload"><s:param name="fileName" value="#doc[1]" ></s:param></s:url>'>
									<s:property value="#doc[0]" /> </a>
							</s:iterator></td>
					</tr>
				</table>
	</table>
	<jsp:include page="down.jsp"></jsp:include>
</body>
</html>
