<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>软件学院学生党务管理系统管理员登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/admin.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="js/login.js"></script>

  </head>
  
  <body onLoad="getFocus()">
   	<table height="100%" cellspacing=0 cellpadding=0 width="100%"
		border=0 style="background:#f5c91e url(images/pattern.png) repeat top left;">
		<tr>
		   <td align=middle>
		     <table cellspacing=0 cellpadding=0 width=468 border=0>
			      <tr>
			        <td><img height=23 src="images/login_1.jpg" width=468></td>
			      </tr>
				  <tr>
		          	<td><img height=147 src="images/login_2.gif" width=468></td>
		          </tr>
		     </table>
	      <table cellspacing=0 cellpadding=0 width=468 bgcolor=#ffffff border=0>
	        <tr>
	          <td width=56><img height=122 src="images/login_3.jpg" 
	            width=16></td>
	          <td align="left">
	            <table cellspacing=0 cellpadding=0 width=412 border=0>
	              <form id="form" action=admin/Login-adminVerificate method=post onSubmit="return check()">
	                <tr height=5>
	                  <td width=5></td>
	                  <td width=56></td>
	                  <td width="120"></td>
					  <td width="6"></td>
	                  <td width="220"></td>
	                </tr>
	                <tr height=36>
	                  <td></td>
	                  <td>用户名 </td>
	                  <td>
	                    <input 
	                  style="border-right:  #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; border-bottom: #000000 1px solid" 
	                 maxlength=30 size=24 name="username" onBlur="checkUserName(this.value)"/>
	                  </td>
					  <td></td>
	                  <td><span id="usernameError"></span></td>
	                </tr>
	                <tr height=36>
	                  <td>&nbsp; </td>
	                  <td>口　令</td>
	                  <td>
	                    <input 
	                  style="border-right: #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; border-bottom: #000000 1px solid" 
	                  type="password" maxlength=30 size=24  name="password" onBlur="checkPassWord(this.value)"/>
	                  </td>
					  <td></td>
	                  <td><span id="passwordError"></span></td>
	                </tr>
	                <tr height=5>
	                  <td colspan=3></td>
	                </tr>
	                <tr>
	                  <td>&nbsp;</td>
	                  <td>&nbsp;</td>
	                  <td>
	                    <input type="submit"  value="登录" height=18 width=70 >&nbsp;&nbsp;
	                  	<input type="reset" value="重置" height=18 width=70 >
	                  </td>
	                  <td></td>
	                  <td><font color="red">${error }</font></td>
	                </tr>
	              </form>
	            </table>
	          </td>
	          <td width=16><img height=122 src="images/login_4.jpg" 
	            width=16></td>
	        </tr>
	      </table>
	      <table cellspacing=0 cellpadding=0 width=463 border=0>
	        <tr>
	          <td><img height=16 src="images/login_5.jpg" 
	          width=463></td>
	        </tr>
	      </table>
	      <table cellspacing=0 cellpadding=0 width=468 border=0>
	        <tr>
	        </tr>
	      </table>
	    </td>
	  </tr>
	</table>
  </body>
</html>
