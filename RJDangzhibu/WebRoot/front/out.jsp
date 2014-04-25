<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<c:remove var="userLogin" scope="session"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>状态验证</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
		<script language="JavaScript1.2" type="text/javascript">
			function delayURL(url, time) {
				alert("退出成功");
				setTimeout("top.location.href='" + url + "'", time);
			}
		</script>
		<script type="text/javascript">
			if(navigator.userAgent.indexOf("MSIE")!=-1) {
				delayURL("../admin/Index-index",0);
			} else {
				delayURL("admin/Index-index",0);
			}
		</script>
  </body>
</html>
