<%@ page language="java" import="java.util.*,com.qianyan.utils.SubString" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<% SubString subStr = new SubString();  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>新闻列表</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
		-->
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/layer.css">

</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<table width="1003" cellspacing="0" cellpadding="0" border="0"
		bgcolor="#FFFFFF" align="center">
		<tbody>
			<tr>
				<td valign="top" align="right">
					<table width="1003" cellspacing="0" cellpadding="0" border="0">
						<tbody>
							<tr>
								<td height="49" background="images/2n3.jpg">
									<table width="100%" cellspacing="0" cellpadding="0" border="0">
										<tbody>
											<tr>
												<td width="3%" height="24">&nbsp;</td>
												<td width="97%" align="left"><span class="red5"><strong>当前位置›› <a href="admin/Index-index">首页</a> ››新闻列表</strong>
												</span>
												</td>
											</tr>
											<tr>
												<td height="15"></td>
												<td></td>
											</tr>
										</tbody>
									</table></td>
							</tr>
							<tr>
								<td valign="top">
									<table width="98%" cellspacing="0" cellpadding="0" border="0"
										class="size14">
										<tbody>
											<tr>
												<td valign="top" height="10" align="center"></td>
											</tr>
											<c:if test="${!empty pm.list }">
												<c:forEach items="${pm.list }" var="news">
												<c:set var="title" value="${news.title }"></c:set>
												<%
													String str = (String)pageContext.getAttribute("title");
													String title = str.getBytes("GBK").length > 150?subStr.substr(str, 150, "……"):str;
												 %>
												 <c:remove var="title"/>
													<tr>
														<td height="31" background="images/line31.gif" align="left">
															<table width="100%" cellspacing="0" cellpadding="0"
																border="0">
																<tbody>
																	<tr>
																		<td width="14"><img width="14" height="13"
																			src="images/dian4.gif">
																		</td>
																		<td width="588" valign="middle"><a target="_blank" title="${news.title }"
																			class="hui" href="admin/News-load?newsId=${news.id }"><%=title %></a>
																		</td>
																		<td width="120" align="right" class="hui">${news.releaseTime }</td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</c:forEach>
												<c:if test="${pm.list.size() < 10 }">
												<c:forEach begin="1" end="${10 - pm.list.size() }">
													<tr>
														<td height="31" background="images/line31.gif" align="left">
															<table width="100%" cellspacing="0" cellpadding="0"
																border="0">
																<tbody>
																	<tr>
																		<td width="14"></td>
																		<td width="588" valign="middle">
																		</td>
																		<td width="120" align="right" class="hui"></td>
																	</tr>
																</tbody>
															</table>
														</td>
													</tr>
												</c:forEach>
												</c:if>
											</c:if>
										</tbody>
									</table>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
						        <td align="center"><div class="page">
										<a href="admin/Index-listByCId?currentPage=1&catelogId=${catelogId }">首页</a>
										<a href="admin/Index-listByCId?currentPage=${pm.getPreviousPage() }&catelogId=${catelogId }">上一页</a>
										<c:forEach var="page" begin="1" end="${pm.getTotalPage() }" step="1">
											<c:choose>
												<c:when test="${page == pm.currentPage }">
													<a class="current" href="admin/Index-listByCId?currentPage=${page }&catelogId=${catelogId }">${page }</a>
												</c:when>
												<c:otherwise>
													<a href="admin/Index-listByCId?currentPage=${page }&catelogId=${catelogId }">${page }</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<a href="admin/Index-listByCId?currentPage=${pm.getNextPage() }&catelogId=${catelogId}">下一页</a>
										<a href="admin/Index-listByCId?currentPage=${pm.getLastPage() }&catelogId=${catelogId }">尾页</a>
											总页数${pm.getTotalPage() }
									</div></td>
						      </tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
<jsp:include page="down.jsp"></jsp:include>