<%@ page language="java" import="java.util.*,com.qianyan.model.Admin" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../verification.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加新闻分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="js/userinfo.js" charset="gbk"></script>
  </head>
  
  <body background="images/bj.jpg">
 <c:choose>
	<c:when test="${session.login.state == 2 }">
  <form name="form" action="admin/UserInfo-modify?userInfoId=${userInfoId }" method="post" onsubmit="return checkModify()" >
  	<table align="center" width="800">
  		<tr>
  			<td width="300" align="right">用户账号:</td>
  			<td width="300">
  				<input id="username" value="${userInfo.username }" type="text" name="userInfo.username" readonly="readonly"/>
  				<input id="password" type="hidden" name="userInfo.password" />
  			</td>
  			<td width="200"><span id="usernameError"><font color="red">用户账号禁止修改</font></span></td>
  		</tr>
  		<%-- <tr>
  			<td align="right">用户密码:</td>
  			<td>
  				<input id="password" type="password" name="userInfo.password" onblur="checkPassword(this.value)" />
  			</td>
  			<td><span id="passwordError"></span></td>
  		</tr> --%>
  		<tr>
  			<td align="right">用户姓名:</td>
  			<td>
  				<input id="studentName" value="${userInfo.studentName }" type="text" name="userInfo.studentName" onblur="checkStudentName(this.value)" />
  			</td>
  			<td><span id="studentNameError"></span></td>
  		</tr>
  		<tr>
  			<td align="right">用户所在班级:</td>
  			<td>
		  		<select name="inClassId">
		  			<option value="${userInfo.inClass.id }">${userInfo.inClass.className }</option>
	  				<c:if test="${!empty inClasss }">
		  				<c:forEach items="${inClasss }" var="i">
		  					<c:if test="${i.id != userInfo.inClass.id }">
			  					<option  value="${i.id }">${i.className }</option>
			  				</c:if>
			  			</c:forEach>
	  				</c:if>
		  		</select>
  			</td>
  			<td>
  			</td>
  		</tr>
  		<tr>
  			<td align="right">当前入党进度：</td>
  			<td>
  				<c:choose>
  					<c:when test="${userInfo.state =='积极分子' }">
  						<input type="radio" name="userInfo.state" value="积极分子" checked="checked">积极分子<br>
  						<input type="radio" name="userInfo.state" value="预备党员">预备党员<br>
  						<input type="radio" name="userInfo.state" value="正式党员">正式党员<br>
  					</c:when>
  					<c:when test="${userInfo.state =='预备党员' }">
  						<input type="radio" name="userInfo.state" value="积极分子">积极分子<br>
  						<input type="radio" name="userInfo.state" value="预备党员" checked="checked">预备党员<br>
  						<input type="radio" name="userInfo.state" value="正式党员">正式党员<br>
  					</c:when>
  					<c:when test="${userInfo.state =='正式党员' }">
  						<input type="radio" name="userInfo.state" value="积极分子" >积极分子<br>
  						<input type="radio" name="userInfo.state" value="预备党员">预备党员<br>
  						<input type="radio" name="userInfo.state" value="正式党员" checked="checked">正式党员<br>
  					</c:when>
  				</c:choose>
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">递交入党申请书时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.applyParty }" name="userInfo.applyParty" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">系党课结业时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.departGradu }" name="userInfo.departGradu" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">成为入党积极分子时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.activist }" name="userInfo.activist" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">转预备党员时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.ready }" name="userInfo.ready" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">转正式党员时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.positive }" name="userInfo.positive" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">组织关系转入时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.relationIn }" name="userInfo.relationIn" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">组织关系转出时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.relationOut }" name="userInfo.relationOut" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td align="right">流动党员时间：</td>
  			<td>
  				<input class="Wdate" value="${userInfo.flow }" name="userInfo.flow" type="text" onClick="WdatePicker()">
  			</td>
  			<td></td>
  		</tr>
  		<tr>
  			<td></td>
  			<td>
  				<input type="submit" value="更新"> <input type="reset" value="重置">
  			</td>
  			<td></td>
  		</tr> 
  		
  	</table>
  </form>
</c:when>
  <c:otherwise><font size="30" color="red">您已非法进入软件学院党支部党务管理系统！党支部有权追究你此次非法侵入！</font></c:otherwise>
</c:choose>
  </body>
</html>
