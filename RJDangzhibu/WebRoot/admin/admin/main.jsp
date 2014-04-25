<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
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
	   <BODY background="images/bj.jpg">
		<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0 >
			<TR height=100>
				<TD>
					<TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TR>
							<TD><font size="5">欢迎进入软件学院党员信息管理系统管理中心！</font></TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD colSpan=3 height=10></TD>
			</TR>
		</TABLE>
	
	</BODY>
  </body>
</html>
