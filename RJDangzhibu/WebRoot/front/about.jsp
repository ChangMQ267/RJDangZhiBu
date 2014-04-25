<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于党支部</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/about.js"></script>
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
  	<table width="1003" height="400" align="center">
  		<tr height="400">
  			<td width="150">
  				<table width="150">
  					<tr height="20"><td></td></tr>
  					<tr height="29">
  						<td align="center" width="150">
  							<img width="103" height="20" onclick="zbjj()" src="images/zbjj.jpg" onmouseover="changePictureIn(this)" onmouseout="changePictureOut(this)" />
  						</td>
  					</tr>
  					<tr height="6"><td></td></tr>
  					<tr height="29">
  						<td align="center" width="150">
  							<img width="103" height="20" onclick="zzjg()" src="images/zzjg.jpg" onmouseover="changePictureIn(this)" onmouseout="changePictureOut(this)" />
  						</td>
  					</tr>
  					<tr height="6"><td></td></tr>
  					<tr height="29">
  						<td align="center" width="150">
  							<img width="103" height="20" onclick="zzfg()" src="images/zzfg.jpg" onmouseover="changePictureIn(this)" onmouseout="changePictureOut(this)" />
  						</td>
  					</tr>
  					<tr height="281"><td></td></tr>
  				</table>
  			</td>
  			<td width="853">
  				<table id="zbjj" width="853">
  					<tr height="30">
  						<td align="center" style="font-size: 28px;">支部简介</td>
  					</tr>
  					<tr height="48">
  						<td style="font-size: 20px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;软件学院党支部在院党委和系党总支的领导下，坚持以邓小平理论和“三个代表”重要思想指导，从自身的特点和实际出发，认真履行党章规定的职责，不断的加强了自身的组织建设、制度，并使学生党员培养、学生党员教育步入良性发展的轨道。</td>
  					</tr>
  					<tr height="290"><td></td></tr>
  				</table>
  				<table id="zzjg" width="853" style="display: none;">
  					<tr>
  						<td align="center" style="font-size: 28px;">组织机构</td>
  					</tr>
  					<tr>
  						<td style="font-size: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;一、支部委员会组成  学生党支部书记、宣传委员、组织委员<br> &nbsp;&nbsp;&nbsp;
  						二、学生党支部组织机构 在过去的一年里，软件学院学生党支部在院党委和系党总支的领导下，坚持以邓小平理论和“三个代表”重要思想指导，从自身的特点和实际出发，认真履行党章规定的职责，不断的加强了自身的组织建设、制度，并使学生党员培养、学生党员教育步入良性发展的轨道。</td>
  					</tr>
  					<tr height="240"><td></td></tr>
  				</table>
  				<table id="zzfg" width="853" style="display: none;">
  					<tr>
  						<td align="center" style="font-size: 28px;">职责分工</td>
  					</tr>
  					<tr>
  						<td style="font-size: 20px;">
  							（1）学生党支部书记：总管学生党支部各项工作；<br> 
							（2）宣传委员：负责学生党支部的宣传与对外交流工作；<br> 
							（3）组织委员：负责学生党支部的建设与发展及日常档案的管理工作；<br> 
							（4）宣传小组：确定每期民主生活会的主题，会后作好相关的宣传（党建宣传栏）和报道，维护我系的党建网站；<br> 
							（5）外联小组：组织安排党课、给新生介绍入党申请书和思想汇报的书写要求和具体格式，加强与外系、外校的联系，并组织每学期的党支部学习交流活动；<br> 
							（6）档案小组：负责日常党支部材料的管理，维护电子党务系统；党费的收缴和登记。 <br>
							（7）监督小组：党课、民主生活会、班级党小组学习会等会议的监督和考勤。做好会议记录并按时收集各党员的思想汇报等材料；<br> 
							（8）发展小组：安排入党联系人对入党积极分子定期（每月至少谈话一次）考察并形成报告，详细了解入党程序，在团总支完成入党推优工作后整理好电子档案，并负责外调函的发出与回收。为入党对象的培养和考察提供数据帮助。 <br>
							（9）入党联系人：与入党积极分子定期谈话，了解他们的入党动机、政治觉悟、理论水平、群众基础等入党必备条件，为入党对象培养和考察提供数据；到各班上给入党积极分子上党课并交流。
						</td>
  					</tr>
  				</table>
  			</td>
  		</tr>
  	</table>
	
	<jsp:include page="down.jsp"></jsp:include>
  </body>
</html>
