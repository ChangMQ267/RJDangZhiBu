<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>密码修改</title>
    
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
  	<jsp:include page="verification.jsp"></jsp:include>
  	<jsp:include page="head.jsp"></jsp:include>
  	<c:remove var="userLogin"/>
  		<table width="800" height="270" align="center">
  			<tr align="center">
  				
			<script language="JavaScript1.2" type="text/javascript">
			
			function delayURL(url, time) {
			    setTimeout("top.location.href='" + url + "'", time);
			}
			
			
			</script>
			<script type="text/javascript">
			if(navigator.userAgent.indexOf("Firefox")!=-1) {
				delayURL("admin/Index-index",3000);
			} else {
				delayURL("../admin/Index-index",3000);
			}
			</script>
				<td><font size="6px">恭喜您，密码修改成功，请重新登录！3秒后自动跳转……</a></font></td>
  			</tr>
  		</table>
  	<jsp:include page="down.jsp"></jsp:include>
  </body>
</html>
