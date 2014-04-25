<%@ page language="java" import="java.util.*,com.qianyan.model.Admin" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	Admin admin = (Admin)request.getSession().getAttribute("login");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/mouseMoveAction.js"></script>

  </head>
  
  <body background="images/bj.jpg">
  <table width="500" border="1" align="center">
  	<tr>
  		<td colspan="2" align="center" style="font-size: 20px;color: #000000">用户个人信息</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">用户账号:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.username }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">用户姓名:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.studentName}</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">所在班级:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.inClass.className }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">所在专业:</td>
  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.inClass.professional.proName }</td>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">递交入党申请书时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.applyParty }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.applyParty }</td>
  			</c:when>
  			<c:otherwise ><td align="left" ><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">系党课结业时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.departGradu }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.departGradu }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">成为入党积极分子时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.activist }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.activist }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">转预备党员时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.ready }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.ready }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">转正式党员时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.positive }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.positive }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">组织关系转入时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.relationIn }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.relationIn }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<tr onmouseover="moveIn(this)" onmouseout="moveOut(this)">
  		<td width="200" align="right" style="font-size: 16px;color: #000000">组织关系转出时间:</td>
  		<c:choose>
  			<c:when test="${!empty userInfo.relationOut }">
		  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.relationOut }</td>
  			</c:when>
  			<c:otherwise><td align="left"><font color="red">请继续努力！</font></td></c:otherwise>
  		</c:choose>
  	</tr>
  	<c:if test="${!empty userInfo.positive }">
	  	<tr>
	  		<td width="200" align="right" style="font-size: 16px;color: #000000">流动党员时间:</td>
	  		<td align="left" style="font-size: 16px;color: #e12f1f">${userInfo.flow }</td>
	  	</tr>
  	</c:if>
  </table>
  </body>
</html>
