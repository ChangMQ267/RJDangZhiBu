<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>���ѧԺ��Ա��Ϣ����ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/layer.css" rel="stylesheet" type="text/css" />
<script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/userlogin.js"></script>
<style>
.a5:link {    
	COLOR: #FF0000; TEXT-DECORATION: underline; font-size:12px;
}
.a5:visited {   
	COLOR: #FF0000; TEXT-DECORATION: none; font-size:12px;
}
.a5:active {    
	COLOR: #FF0000; TEXT-DECORATION: none; font-size:12px;
}
.a5:hover {   
	COLOR: #990000; text-decoration:underline font-size:12px;
}
</style>
</head>

<body link="red">
<table width="1000" height="35" border="0" align="center" cellpadding="0" cellspacing="0" background="images/index_02.gif" class="bai" >
		<form action="admin/Login-userInfoVerificate" method="post" id="form" >
  <tr>
    <td width="540" valign="middle">&nbsp;&nbsp;<!-- <a href="http://www.nyist.net" class="bai" target="_blank">������ѧԺ</a> --><a href="admin/Index-index" class="bai">���ѧԺ��Ա��Ϣ����ϵͳ��ҳ</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="admin/admin/login.jsp" class="a5" target="_blank">���ѧԺ��Ա��Ϣ����ϵͳ��̨��½</a></td>
    <td width="160"><font color="yellow" size="2px">${session.error }</font></td>
    <c:choose>
    	<c:when test="${empty session.userLogin }">
		    <td width="48" class="top">�û���:</td><td width="61" class="top" align="left"><input name="username" type="text" size="12" onblur="checkUsername(this.value)" /></td>
		    <td width="8" class="top"></td>
		    <td width="40" class="top">��    ��:</td><td width="61" class="top" align="left"><input name="password" type="password" size="12" onblur=" checkPassword(this.value)" /></td>
		    <!-- <td width="82" align="right" class="top"><span class="STYLE15">վ������</span></td> -->
		    <td width="82" class="top"><label><a href="javascript:void(0);"><img src="images/denglu.jpg" onclick="checkLogin()" /></a></label></td>
    	</c:when>
    	<c:when test="${!empty session.userLogin }">
    		<td>��ǰ��¼:</td><td><a href="front/showUserInfo.jsp" class="bai">${session.userLogin.username }</a></td>
    		<td><a href="admin/Index-resetPasswordInput" class="bai">�޸Ŀ���</a></td>
    		<td><a href="front/out.jsp" class="bai">�˳�ϵͳ</a></td>
    	</c:when>
    	<c:otherwise><td>��Ǹ��ϵͳ�ڲ�����</td></c:otherwise>
    </c:choose>
  </tr>
	</form>
</table>
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td valign="top"><!--<script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','1003','height','162','src','images/top','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','images/top' ); //end AC code
</script><noscript>--><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" wmode="transparent" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="1003" height="162">
			<param name="movie" value="images/top.swf" />
			<param name="quality" value="high" />
			<param name="wmode" value="Opaque">
			<embed src="images/top.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="1003" height="162"></embed>
    	</object>
   	<!--</noscript>--></td>
  </tr>
</table>
<table width="1003" height="35" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr valign="middle">
    <td width="7" align="left" valign="top"><img src="images/index_05.gif" width="7" height="35" border="0" /></td>
    <td background="images/index_06.gif"><table border="0" align="center" cellpadding="0" cellspacing="0" >
      <tr>
        <td width="69" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/index.htm" target="_blank">ѧԺ��ҳ</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/xyjj/xyjj.htm" target="_blank">ѧԺ���</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/jgsz/jxgg.htm" target="_blank">��������</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/zysz/wlkc.htm" target="_blank">רҵ����</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/xwgk/kcbz.htm" target="_blank">ϵ�񹫿�</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/ghhd/yjgk.htm" target="_blank">����</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="admin/Index-index">����˼��</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/xsgz/cgts.htm" target="_blank">ѧ������</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="http://soft.nyist.edu.cn/yxds/xxgg.htm" target="_blank">Ժϵ����</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href='<s:url action="fileshow"/>'>�ĵ�����</a></span></td>
        <td width="1" align="center"><img src="images/index_08.gif" width="1" height="35" /></td>
        <td width="100" align="center"><span class="STYLE1"><a href="front/about.jsp">��������</a></span></td>
        
        </tr>
    </table></td>
    <td width="6" align="right" valign="top"><img src="images/index_10.gif" width="6" height="35" /></td>
  </tr>
</table>
<table width="1003" height="5" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" >
  <tr>
    <td></td>
  </tr>
</table>
<table width="1003" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" >
  <tr>
    <td height="10"></td>
  </tr>
</table>
</body>
</html>
