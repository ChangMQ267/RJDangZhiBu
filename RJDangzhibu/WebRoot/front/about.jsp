<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���ڵ�֧��</title>
    
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
  						<td align="center" style="font-size: 28px;">֧�����</td>
  					</tr>
  					<tr height="48">
  						<td style="font-size: 20px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ѧԺ��֧����Ժ��ί��ϵ����֧���쵼�£�����Ե�Сƽ���ۺ͡�����������Ҫ˼��ָ������������ص��ʵ�ʳ������������е��¹涨��ְ�𣬲��ϵļ�ǿ���������֯���衢�ƶȣ���ʹѧ����Ա������ѧ����Ա�����������Է�չ�Ĺ����</td>
  					</tr>
  					<tr height="290"><td></td></tr>
  				</table>
  				<table id="zzjg" width="853" style="display: none;">
  					<tr>
  						<td align="center" style="font-size: 28px;">��֯����</td>
  					</tr>
  					<tr>
  						<td style="font-size: 20px;">&nbsp;&nbsp;&nbsp;&nbsp;һ��֧��ίԱ�����  ѧ����֧����ǡ�����ίԱ����֯ίԱ<br> &nbsp;&nbsp;&nbsp;
  						����ѧ����֧����֯���� �ڹ�ȥ��һ������ѧԺѧ����֧����Ժ��ί��ϵ����֧���쵼�£�����Ե�Сƽ���ۺ͡�����������Ҫ˼��ָ������������ص��ʵ�ʳ������������е��¹涨��ְ�𣬲��ϵļ�ǿ���������֯���衢�ƶȣ���ʹѧ����Ա������ѧ����Ա�����������Է�չ�Ĺ����</td>
  					</tr>
  					<tr height="240"><td></td></tr>
  				</table>
  				<table id="zzfg" width="853" style="display: none;">
  					<tr>
  						<td align="center" style="font-size: 28px;">ְ��ֹ�</td>
  					</tr>
  					<tr>
  						<td style="font-size: 20px;">
  							��1��ѧ����֧����ǣ��ܹ�ѧ����֧���������<br> 
							��2������ίԱ������ѧ����֧������������⽻��������<br> 
							��3����֯ίԱ������ѧ����֧���Ľ����뷢չ���ճ������Ĺ�������<br> 
							��4������С�飺ȷ��ÿ���������������⣬���������ص��������������������ͱ�����ά����ϵ�ĵ�����վ��<br> 
							��5������С�飺��֯���ŵ��Ρ������������뵳�������˼��㱨����дҪ��;����ʽ����ǿ����ϵ����У����ϵ������֯ÿѧ�ڵĵ�֧��ѧϰ�������<br> 
							��6������С�飺�����ճ���֧�����ϵĹ���ά�����ӵ���ϵͳ�����ѵ��սɺ͵Ǽǡ� <br>
							��7���ලС�飺���Ρ���������ᡢ�༶��С��ѧϰ��Ȼ���ļල�Ϳ��ڡ����û����¼����ʱ�ռ�����Ա��˼��㱨�Ȳ��ϣ�<br> 
							��8����չС�飺�����뵳��ϵ�˶��뵳�������Ӷ��ڣ�ÿ������̸��һ�Σ����첢�γɱ��棬��ϸ�˽��뵳����������֧����뵳���Ź���������õ��ӵ�����������������ķ�������ա�Ϊ�뵳����������Ϳ����ṩ���ݰ����� <br>
							��9���뵳��ϵ�ˣ����뵳�������Ӷ���̸�����˽����ǵ��뵳���������ξ�������ˮƽ��Ⱥ�ڻ������뵳�ر�������Ϊ�뵳���������Ϳ����ṩ���ݣ��������ϸ��뵳���������ϵ��β�������
						</td>
  					</tr>
  				</table>
  			</td>
  		</tr>
  	</table>
	
	<jsp:include page="down.jsp"></jsp:include>
  </body>
</html>
