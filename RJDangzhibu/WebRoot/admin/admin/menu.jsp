<%@ page language="java" import="java.util.*,com.qianyan.model.Admin"
	pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<base href="<%=basePath%>">
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el) {
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none') {
			childObj.style.display = 'block';
		} else {
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<BODY background="images/bj.jpg">
	<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 border=0>
		<TR>
			<TD vAlign=top align=middle>
				<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>

					<TR>
						<TD height=10></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
							class=menuParent onclick=expand(0) href="javascript:void(0);">רҵ����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child0 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<c:if test="${session.login.state == 2 }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="images/menu_icon.gif" width=9>
							</TD>
							<TD><A class=menuChild href="admin/Professional-addInput"
								target=main>���רҵ</A>
							</TD>
						</TR>
					</c:if>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild
							href="admin/Professional-findByPNameInput" target=main>�����Ʋ���</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/Professional-list"
							target=main>רҵ�б�</A>
						</TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
							class=menuParent onclick=expand(1) href="javascript:void(0);">�༶����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<c:if test="${session.login.state == 2 }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="images/menu_icon.gif" width=9>
							</TD>
							<TD><A class=menuChild href="admin/InClass-addInput"
								target=main>��Ӱ༶</A>
							</TD>
						</TR>
					</c:if>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/InClass-findByCNameInput"
							target=main>���Ұ༶</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/InClass-list" target=main>�༶�б�</A>
						</TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>

				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
							class=menuParent onclick=expand(2) href="javascript:void(0);">���Ź���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child2 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<c:if
						test="${session.login.grade == 2 && session.login.state == 2}">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="images/menu_icon.gif" width=9>
							</TD>
							<TD><A class=menuChild href="admin/Catelog-addInput"
								target=main>��ӷ���</A>
							</TD>
						</TR>
					</c:if>
					<c:if test="${session.login.state == 2 }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="images/menu_icon.gif" width=9>
							</TD>
							<TD><A class=menuChild href="admin/News-addInput"
								target=main>��������</A>
							</TD>
						</TR>
					</c:if>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/News-findByTitleInput"
							target=main>��������</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/Catelog-list" target=main>�����б�</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/News-list" target=main>�����б�</A>
						</TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>

				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
							class=menuParent onclick=expand(3) href="javascript:void(0);">�û�����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child3 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<c:if test="${session.login.state == 2 }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="images/menu_icon.gif" width=9>
							</TD>
							<TD><A class=menuChild href="admin/UserInfo-addInput"
								target=main>����û�</A>
							</TD>
						</TR>
					</c:if>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/UserInfo-findByUNameInput"
							target=main>���˺ţ�ѧ�ţ�����</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/UserInfo-findBySNameInput"
							target=main>����������</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/UserInfo-listByIIdInput"
							target=main>���༶���</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/UserInfo-listByPIdInput"
							target=main>��רҵ���</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/UserInfo-list" target=main>�����û��б�</A>
						</TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>

				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>

					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
							class=menuParent onclick=expand(4) href="javascript:void(0);">���˹���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child4 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild
							href="admin/Admin-modifyInput?adminId=${session.login.id }"
							target=main>�޸ĸ�����Ϣ</A>
						</TD>
					</TR>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/out.jsp" target=main>�˳�ϵͳ</A>
						</TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>


				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
					<TR height=22>
						<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
							class=menuParent onclick=expand(5) href="javascript:void(0);">����Ա����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
						</TD>
					</TR>
					<TR height=4>
						<TD></TD>
					</TR>
				</TABLE>
				<TABLE id=child5 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<c:if
						test="${session.login.grade == 2 && session.login.state == 2 }">
						<TR height=20>
							<TD align=middle width=30><IMG height=9
								src="images/menu_icon.gif" width=9>
							</TD>
							<TD><A class=menuChild href="admin/Admin-addInput"
								target=main>��ӹ���Ա</A>
							</TD>
						</TR>
					</c:if>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/Admin-list" target=main>����Ա�б�</A>
						</TD>
					</TR>
					<TR height=4>
						<TD colSpan=2></TD>
					</TR>
				</TABLE>

				<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
						<TR height=22>
							<TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A
								class=menuParent onclick=expand(6) href="javascript:void(0);">�ĵ�����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</A>
							</TD>
						</TR>
						<TR height=4>
							<TD></TD>
						</TR>
				</TABLE>
				<TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0
					width=150 border=0>
					<TR height=20>
						<TD align=middle width=30><IMG height=9
							src="images/menu_icon.gif" width=9>
						</TD>
						<TD><A class=menuChild href="admin/admin/Admin_add_doc.jsp"
							target=main>�ϴ��ĵ�</A>
						</TD>
					</TR>
				</TABLE></TD>
		</TR>
	</TABLE>
	</TD>

	<TD width=1 bgColor=#d1e6f7></TD>
	</TR>
	</TABLE>
</BODY>
</HTML>
