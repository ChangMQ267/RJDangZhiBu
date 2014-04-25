<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>软件学院学生党务管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<FRAMESET border=0 frameSpacing=0 rows="60, * ,90" frameBorder=0>
		<FRAME name=header src="admin/admin/header.jsp" frameBorder=0 noResize scrolling=no>
		  <FRAMESET cols="170,*" frameborder="0">
		    <FRAME name=menu src="admin/admin/menu.jsp" frameBorder=0 noResize>
		    <FRAME name=main src="admin/admin/main.jsp" frameBorder=0 noResize scrolling="auto">
		  </FRAMESET>
		  <FRAME name="down" src="admin/admin/down.jsp" frameborder="0" noresize="noresize" scrolling="no">
		 </FRAMESET>
		<noframes></noframes>
</html>
