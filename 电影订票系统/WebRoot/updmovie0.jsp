<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="login.deleteMovie" %>
<%@ page import="login.DB" %>
<html><head>
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
	background-image: url(images/manage/modify/modify1/modify-bg_03.png);
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
	width:297px;
	height:324px;
	z-index:1;
	left: 433px;
	top: 84px;
	background-image: url(images/manage/manage/manage-box_03.png);
}
#apDiv2 {
	position:absolute;
	width:25px;
	height:25px;
	z-index:4;
	left: 676px;
	top: 247px;
}
#apDiv3 {
	position:absolute;
	width:25px;
	height:25px;
	z-index:4;
	left: 676px;
	top: 204px;
}
#apDiv4 {
	position:absolute;
	width:25px;
	height:25px;
	z-index:4;
	left: 676px;
	top: 294px;
}
#apDiv5 {
	position:absolute;
	width:115px;
	height:42px;
	z-index:5;
	left: 735px;
	top: 308px;
}
#apDiv6 {
	position:absolute;
	width:477px;
	height:31px;
	z-index:6;
	left: 481px;
	top: 176px;
}
#dd {
	height: 31px;
	width: 477px;
	background-color: #313842;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 18px;
	font-weight: bold;
	color: #FFF;
	border-style: inset;
}
#apDiv7 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:7;
	left: 884px;
	top: 308px;
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
<div id="bgbox"></div>

  
<form action="updateMovie.jsp" method="post">
<%	DB db=new DB();
	ResultSet rs=null;
	PreparedStatement pstmt;
	pstmt = db.getConn().prepareStatement("select 电影编号,电影名称,导演,类型  from movieInfo");
	rs = pstmt.executeQuery();%>
    
  <div id="apDiv6">
  <select  name="update" id="dd">
   <%  while(rs.next()){	%>
<Option value="<%=rs.getString(1) %>">《<%=rs.getString(2) %>》，<%=rs.getString(3) %>，<%=rs.getString(4)%></Option>
<%} %>	</Select>
  </div>
  <div id="apDiv5"><input type="image" src="images/manage/manage/enter-bt-on.png" name="upd"></div>
</form>
<form action="adminIndex.jsp" method="post">
<div id="apDiv7"><input type="image" src="images/manage/delete/deletesuccess/back-bt-on_03.png"></div>
</form>
</body>
</html>