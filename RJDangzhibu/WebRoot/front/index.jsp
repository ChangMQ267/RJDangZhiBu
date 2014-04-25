<%@ page language="java" import="java.util.*,com.qianyan.utils.SubString" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% SubString subStr = new SubString(); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>软件学院党员信息管理系统首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link href="css/layer.css" rel="stylesheet" type="text/css" />
	<!-- <script type="text/javascript" src="js/common.js"></script> -->
	<script src="js/AC_RunActiveContent.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/layer.js"></script>
	<script type="text/javascript" src="js/picture.js"></script>

  </head>
  
  <body>
  	<jsp:include page="head.jsp"></jsp:include>
<table width="1003" height="5" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" >
  <tr>
    <td></td>
  </tr>
</table>
<table width="1003" height="23" border="0" align="center" cellpadding="1" cellspacing="0" bgcolor="#FFFFFF" >
  <tr>
    <td style="padding:0 5px;">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="295" valign="top" style="padding-top:5px"><table style="width:294px; height:287; background:url(images/index_image.jpg) no-repeat;" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="34">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="15%">&nbsp;</td>
                <td width="59%" class="STYLE1"></td>
                <td width="24%" align="center">
              </tr>
            </table>
			</td>
          </tr>
          <tr>
            <td height="255" align="center"><table width="85%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="190" align="center" valign="top">
<style type="text/css">
ul,li{
    padding:0;
    margin:0;
    list-style:none;}
#flashBoxu_czy1vmjtau_{
    width:276px;
    height:190px;
    border:0px solid #EEE;
    position:relative;
    margin-left: auto;
    margin-right: auto;}
#flashBoxu_czy1vmjtau_ img{
    /*初始不要显示*/
    display:none;
    /*用边框来实现空位，因为margin和paading有时会引起些麻烦*/
    border:0px solid #FFF;}
#flashBoxu_czy1vmjtau_ ul{
    position:absolute;
    right:7px;
    bottom:3px;
    font:9px tahoma;}
#flashBoxu_czy1vmjtau_ ul li{
    display:block;
    float:left;
    width:12px;
    height:12px;
    line-height:12px;
    margin-right:3px;
    border:0px solid #999;
    background:#F0F0F0;
    text-align:center;
    cursor:pointer;}
#flashBoxu_czy1vmjtau_ ul li.hover{
    border-color:red;
    background:#FFE1E1;
    color:red;}
</style>
<script type="text/javascript">
function flashBoxCtrl(o){
    this.obj=document.getElementById(o);
    //这个私有方法虽然写了，但暂时没用到
    function addListener(ele,eventName,functionBody){
        if (ele.attachEvent){
            ele.attachEvent("on"+eventName, functionBody);
        }else if (ele.addEventListener){
            ele.addEventListener("on"+eventName,functionBody, false);
        }else{
            return false;
        }
    }
    //初始化
    this.init=function(){
        var objImg=this.obj.getElementsByTagName("img");
        var tagLength=objImg.length;
        if (tagLength>0){
            var oUl=document.createElement("ul");
            oUl.setAttribute("id",o+"numTag");
            for (var i=0;i<tagLength;i++){
                var oLi=oUl.appendChild(document.createElement("li"));
                if (i==0){
                    oLi.setAttribute("class","hover"); //初始化时把第一个设置为高亮
                    oLi.setAttribute("className","hover");
                }
                //设置标签的数字
                oLi.appendChild(document.createTextNode((i+1)));
            }
            this.obj.appendChild(oUl);
            objImg[0].style.display="block";
            //设置标签事件
            var oTag=this.obj.getElementsByTagName("li");
            for (var i=0;i<oTag.length;i++){
                var flag = 0;
                var temp = 0;
                var timeout=null;
                var step = function(){
                    for (j=0;j<oTag.length;j++){
                        oTag[j].className="";
                        objImg[j].style.display="none";
                    }
                    this.className="hover";
                    flag = flag>=oTag.length-1?0:flag+1;
                    objImg[flag].style.display="block";
                    oTag[flag].className = "hover";
                    timeout = setTimeout(step,4000);
                };
                oTag[i].onmouseover=function(){
                    for (j=0;j<oTag.length;j++){
                        oTag[j].className="";
                        objImg[j].style.display="none";
                        temp = j;
                    }
                    this.className="hover";
                    objImg[this.innerHTML-1].style.display="block";
                    temp = this.innerHTML-1;
                    flag = i;
                    clearInterval(timeout);
                }
                oTag[i].onmouseout = function(){
                    for (j=0;j<oTag.length;j++){
                        oTag[j].className="";
                        objImg[j].style.display="none";
                    }
                    flag = temp;
                    objImg[temp].style.display="block";
                    oTag[temp].className = "hover";
                    timeout = setTimeout(step,4000);
                }
                if(i==0)
                {
                    timeout = setTimeout(step,4000);
                }
            }
        }
    };
    //自动滚动的方法还没写
    this.imgRoll=function(){};
    //生成对象时自动加载init()方法以初始化对象
    this.init();
}
</script>
<table cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td>
			<div id="flashBoxu_czy1vmjtau_">
			<img src="images/p1.jpg" border="0" width="276" height="190" />
			<img src="images/p2.jpg" border="0" width="276" height="190" />
			<img src="images/p3.jpg" border="0" width="276" height="190" />
			<img src="images/p4.jpg" border="0" width="276" height="190" />
			</div></td></tr></table>
			<SCRIPT language="JavaScript">new flashBoxCtrl("flashBoxu_czy1vmjtau_");</SCRIPT>
				</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="10" valign="top">&nbsp;</td>
        <td width="465" valign="top">
        <table width="465" border="0" cellpadding="0" cellspacing="0" style="background:url(images/index_topnews.jpg) no-repeat left 2px;">
          <tr>
            <td width="465" height="33"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="11%">&nbsp;</td>
                  <td height="25" valign="bottom" class="red14">党建要闻</td>
                  <td width="14%"><a href="admin/Index-listByCId?catelogId=1" target="_blank" class="hui">更多&gt;&gt;</a></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="254" align="center" valign="top">
			<!--  2222222222222222222222222222222222222222222222222222222222222222222222   111111111111111111 -->
				<table width="92%" border="0" cellpadding="0" cellspacing="0" class="line20">
                <tr>
                  <td height="8" align="left" valign="top"></td>
                </tr>
                  <c:if test="${!empty news1 }">
                  	<c:forEach items="${news1 }" var="n1">
                	<tr>
                  		<td height="24" align="left" class="linedot">
					  		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			                    <tr>
			                      <td width="13"><img src="images/dian_18.gif" width="10" height="12" /></td>
			                      <c:set var="title" value="${n1.title }"></c:set>
			                      <% 
			                      	String str1 = (String)pageContext.getAttribute("title");
			                      	String title1 = null;
			                      	if(str1.getBytes("GBK").length > 55) {
			                      		title1 = subStr.substr(str1, 55, "……");
			                      	} else {
			                      		title1 = str1;
			                      	}
			                      %>
			                      <c:remove var="title"/>
			                      <td  valign="middle"><a href="admin/News-load?newsId=${n1.id }" title="${n1.title }" target="_blank" class="hui"><%=title1 %></a></td>
			                      <td width="70" class="STYLE16">${n1.releaseTime }</td>
			                    </tr>
	                  		</table>
						</td>
             	 	</tr>
                  	</c:forEach>
                  </c:if>
                
            </table></td>
          </tr>
          <tr>
            <td></td>
          </tr>
        </table></td>
        <td width="10" valign="top">&nbsp;</td>
        <td width="221" rowspan="3" valign="top"><table width="100%" height="548" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" style="padding-top:5px"></td>
          </tr>
          <tr>
            <td height="10"></td>
          </tr>
          <tr>
          	<td>
          		<table width="221" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td height="123"><img id="sbd5" src="images/sbd_5.jpg" width="200" height="112" onmouseover="large50()" onmouseout="large51()"/></td>
					</tr>
					<tr>
						<td height="100"><img id="sbd1" src="images/sbd_1.jpg" width="200" height="91" onmouseover="large10()" onmouseout="large11()"/></td>
					</tr>
					<tr>
						<td height="109"><img id="sbd3" src="images/sbd_3.jpg" width="200" height="100" onmouseover="large30()" onmouseout="large31()"/></td>
					</tr>
					<tr>
						<td height="123"><img id="sbd2" src="images/sbd_2.jpg" width="200" height="112" onmouseover="large20()" onmouseout="large21()"/></td>
					</tr>
					<tr>
						<td height="93"><img id="sbd4" src="images/sbd_4.jpg" width="200" height="93" onmouseover="large40()" onmouseout="large41()"/></td>
					</tr>
				</table>
			</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="10" colspan="3"></td>
        <td height="5"></td>
      </tr>
      <tr>
        <td valign="top">
		<table width="294" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="34" background="images/duan.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="17%">&nbsp;</td>
                  <td width="41%" class="STYLE1">系统公告</td>
                  <td width="42%" class="STYLE1"><a href="admin/Index-listByCId?catelogId=2" target="_blank"><img src="images/kong.gif" width="121" height="15" border="0" /></a></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="232" align="center" valign="top" background="images/l1.gif">
			<!--    2222222222222222222222222222222222222222222222222222222222222222222222   111111111111111111 -->
				<table width="95%" border="0" cellpadding="0" cellspacing="0" class="line20">
			           <tr>
			               <td height="10" align="center" valign="top"></td>
			           </tr>
						<c:if test="${!empty news2 }">
		                  	<c:forEach items="${news2 }" var="n2">
		                  		<c:set var="title" value="${n2.title }"></c:set>
		                  		<% 
			                      	String str2 = (String)pageContext.getAttribute("title");
			                      	String title2 = null;
			                      	if(str2.getBytes("GBK").length > 45) {
			                      		title2 = subStr.substr(str2, 45, "……");
			                      	} else {
			                      		title2 = str2;
			                      	}
			                      %>
			                   <c:remove var="title"/>
				                <tr>
				                  <td height="25" align="left" background="images/line.gif" ><a href="admin/News-load?newsId=${n2.id }" title="${n2.title }" class="hui" target="_blank"><%=title2 %></a></td>
				                </tr>
	            			</c:forEach>
	            		</c:if>
			     </table>
            </td>
          </tr>
          <tr>
            <td><img src="images/l2.gif" width="295" height="3" /></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
        <td valign="top"><table width="465" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="465" height="33" background="images/chang.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="12%">&nbsp;</td>
                  <td width="78%" height="25" valign="bottom" class="STYLE1">党务公开</td>
                  <td width="10%" height="25" valign="bottom"><a href="admin/Index-listByCId?catelogId=3" target="_blank" class="hui">更多&gt;&gt;</a></td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td height="230" align="center" valign="top" background="images/chang2.gif">
			<!--    2222222222222222222222222222222222222222222222222222222222222222222222   111111111111111111 -->
			<table width="95%" border="0" cellpadding="0" cellspacing="0" class="size14">
                <tr>
                  <td height="10" align="center" valign="top"></td>
                </tr>
                <c:if test="${!empty news3 }">
                  <c:forEach items="${news3 }" var="n3">
                  <c:set var="title" value="${n3.title }"></c:set>
                  <%
                  	String str3 = (String)pageContext.getAttribute("title");
                  	String title3 = null;
                  	if(str3.getBytes("GBK").length > 59) {
                  		title3 = subStr.substr(str3, 59, "……");
                  	} else {
                  		title3 = str3;
                  	}
                   %>
                   <c:remove var="title"/>
	                <tr>
	                  <td height="25" align="left" background="images/line24.gif" >
		                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
			                  <tr>
			                     <td width="12"><img src="images/dian_18.gif" width="10" height="12" /></td>
			                     <td valign="middle"><a href="admin/News-load?newsId=${n3.id }" title="${n3.title }" target="_blank" class="hui"><%=title3 %></a></td>
			                     <td width="70">${n3.releaseTime }</td>
			                  </tr>
		                  </table>
	                  </td>
	                </tr>
               </c:forEach>
             </c:if>
       
            </table></td>
          </tr>
          <tr>
            <td><img src="images/chang3.gif" width="465" height="6" /></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
<jsp:include page="down.jsp"></jsp:include>