<%@ page language="java" import="java.util.*,com.qianyan.utils.SubString" pageEncoding="GB18030"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% SubString subStr = new SubString();  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>
    <c:if test="${!empty news }">${news.title }</c:if>
   	 <c:if test="${empty news }">你所访问的信息已被删除</c:if></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- yinru -->
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/layer.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  	<body background="images/bj.jpg">
	<jsp:include page="../../front/head.jsp"></jsp:include>
	<c:if test="${!empty news }">
 		<table width="1003" cellspacing="0" cellpadding="0" border="0" align="center" bgcolor="#ffffff">
			  <tbody>
			    <tr>
			      <td valign="top" height="49" background="images/2n3.jpg">
			        <table width="100%" cellspacing="0" cellpadding="0" border="0">
			          <tbody>
			            <tr>
			              <td width="6%" height="35">&nbsp;</td>
			              <td width="94%" align="left"><span class="red5"><strong>当前位置 &gt;&gt; <a href="admin/Index-index">首页</a> &gt;&gt; <strong>阅读</strong>信息</strong></span></td>
			            </tr>
			            <tr>
			              <td height="15"></td>
			              <td></td>
			            </tr>
			          </tbody>
			        </table>
			      </td>
			    </tr>
			    <tr>
			      <td valign="top" align="center">
			        <table width="94%" cellspacing="0" cellpadding="0" border="0">
			          <tbody>
			            <tr>
			              <td align="center">
			              <c:set value="${news.title }" var="title"></c:set>
			              <% 
			              	String str = (String)pageContext.getAttribute("title");
			              	String title = str.getBytes("GBK").length > 62?subStr.substr(str, 62, "..."):str;
			              %>
			              <c:remove var="title"/>
			                <h1 style="font-size: 26px"><%=title %></h1>
			              </td>
			            </tr>
			            <tr>
			              <td align="center"><img width="1003" height="10" src="images/yd2.gif"></td>
			            </tr>
			            <tr>
			              <td height="28" align="center" style="font-size:18px" >发布人：${news.admin.username }&#12288;分类：${news.catelog.name }&#12288;时间：${news.releaseTime }&#12288;点击量：${news.visitTotal }</td>
			            </tr>
			            <tr>
			              <td align="center">
			                <table width="94%" cellspacing="0" cellpadding="0" border="0">
			                  <tbody>
			                    <tr>
			                      <td align="left" class="line24">
			                        <div class="content" style="font-size:16px ">
			                          ${news.content }
			                        </div>
			                      </td>
			                    </tr>
			                  </tbody>
			                </table>
			              </td>
			            </tr>
			            <tr>
			              <td>&nbsp;</td>
			            </tr>
			          </tbody>
			        </table>
			      </td>
			    </tr>
			  </tbody>
			</table>
	</c:if>
	<c:if test="${empty news }">
		请求的内容找不到！
	</c:if>
  	</body>
</html>
<jsp:include page="../../front/down.jsp"></jsp:include>
