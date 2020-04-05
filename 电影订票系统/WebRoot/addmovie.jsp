<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="login.deleteMovie" %>
<%@ page import="login.DB" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
#bgbox {
	position:absolute;
	width:1052px;
	height:449px;
	z-index:1;
	left: 140px;
	top: 40px;
	background-image: url(images/manage/add/addsuccess/addsuccess-bg_03.png);
}

#bottom {
	position:absolute;
	width:1055px;
	height:50px;
	z-index:3;
	left: 139px;
	top: 493px;
}
#bottom_box {
	position:absolute;
	width:849px;
	height:50px;
	z-index:1;
	left: 145px;
}
body {
	
	background-color: #313842;
}

#apDiv1 {
	position:absolute;
	width:609px;
	height:265px;
	z-index:4;
	left: 410px;
	top: 130px;
	overflow: hidden;
}
#ss2{
	font-family: Verdana, Geneva, sans-serif;
	font-size: 20px;
	line-height: 20px;
	color: #DADADA;
	margin: 5px;
	padding: 5px;
}


#ss1 {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 20px;
	line-height: 20px;
	color: #DADADA;
	margin: 5px;
	padding: 5px;
}


#apDiv2 {
	position:absolute;
	width:617px;
	height:241px;
	z-index:1;
	left: 237px;
	top: 98px;
}
#apDiv3 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:2;
	left: 776px;
	top: 395px;
}
#apDiv4 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:3;
	left: 912px;
	top: 395px;
}
td {
	overflow: hidden;
	width:100%;
	word-break:keep-all;
	white-space:nowrap;
	text-overflow:ellipsis;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 20px;
	line-height: 20px;
	color: #DADADA;
	margin: 0px;
	padding: 0px;
}
table {
	table-layout:fixed;
}
</style>
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
</script>
</head>
<body>

<%  String movieNo=(String)session.getAttribute("movieNo");
	String movieName=(String)session.getAttribute("movieName");
	String director=(String)session.getAttribute("director");
	String actor=(String)session.getAttribute("actor");
	String movieIntr=(String)session.getAttribute("movieIntr");
	String time=(String)session.getAttribute("time");
	String type=(String)session.getAttribute("type");
	String mlong=(String)session.getAttribute("mlong");
	String state=(String)session.getAttribute("state");
	String money=(String)session.getAttribute("money");%>
	
	
<div id="bgbox">
 <div id="apDiv2">
    <table width="557" >
     <tr>
      <td width="11%"  height="40" align="center" valign="middle" >编号:</td>
      <td width="39%" align="left" ><%=movieNo%></td>
      <td width="25%" align="center" >上映:</td>
      <td width="25%" align="left" ><%=time%></td>
    </tr>
    <tr>
      <td height="40" align="center" valign="middle">名称:</td>
      <td align="left">《<%=movieName%>》</td>
      <td align="center">类型:</td>
      <td align="left"><%=type%></td>
    </tr>
    <tr>
      <td height="40" align="center" valign="middle">导演:</td>
      <td align="left"><%=director%></td>
      <td align="center">片长:</td>
      <td align="left"><%=mlong%></td>
    </tr>
    <tr>
      <td height="40" align="center" valign="middle">主演:</td>
      <td align="left"><%=actor%></td>
      <td align="center">价格:</td>
      <td align="left"><%=money%></td>
    </tr>
    <tr>
      <td height="40" align="center" valign="middle">简介:</td>
      <td align="left"><%=movieIntr%></td>
      <td align="center">状态:</td>
      <td align="left"><%=state%></td>
    </tr>
    </table>
  </div>
</div>

<form action="adminIndex.jsp" method=post>
<div id="apDiv3"><input type="image" src="images/manage/add/addsuccess/back-bt-on_03.png"></div>
</form>
<form action="inputMovie.jsp" method=post>
<div id="apDiv4"><input type="image" src="images/manage/add/addsuccess/keepadd-bt-on_03.png"></div>
</form>
</body>
</html>
