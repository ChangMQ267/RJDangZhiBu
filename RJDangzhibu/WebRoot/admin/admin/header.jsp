<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<base href="<%=basePath%>">
	<META http-equiv=Content-Type content="text/html; charset=gb2312">
	<link rel="stylesheet" type="text/css" href="css/admin.css">
</HEAD>
<BODY>
	<jsp:include page="../verification.jsp"></jsp:include>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" background="images/header_bg.jpg" border=0>
		<TR height=56>
			<TD width=260><IMG height=56 src="images/header_left.gif"
				width=260></TD>
			<TD style="FONT-WEIGHT: bold; COLOR: #ffff00; PADDING-TOP: 20px"
				align=middle>��ǰ�û���<A style="COLOR: #ffff00"
				href="admin/admin/showAdminInfo.jsp" target="main"><c:choose><c:when test="${session.login.grade == 1 }">��ͨ����Ա</c:when>
				<c:when test="${session.login.grade == 2 }">��������Ա</c:when>
				<c:otherwise>�Ƿ��û�</c:otherwise></c:choose></A> &nbsp;&nbsp; <A
				style="COLOR: #ffff00"
				href="admin/Admin-resetPasswordInput?adminId=${session.login.id }"
				target=main>�޸Ŀ���</A> &nbsp;&nbsp; <A style="COLOR: #ffff00"
				href="admin/out.jsp">�˳�ϵͳ</A> &nbsp;&nbsp;<A style="COLOR: #ffff00"
				href="admin/Index-index" target="_blank">ǰ̨��ҳ</A>
			</TD>
			<TD align=right width=268><IMG height=56
				src="images/header_right.jpg" width=268></TD>
		</TR>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0 bgColor="#f40b06">
		<TR height=4>
			<TD></TD>
		</TR>
	</TABLE>
</BODY>
</HTML>
