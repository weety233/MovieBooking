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
	background-image: url(images/manage/delete/deletesuccess/deletdsuccess-bg_03.png);
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
#apDiv8 {
	position:absolute;
	width:381px;
	height:57px;
	z-index:8;
	left: 332px;
	top: 134px;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 18px;
}
#apDiv9 {
	position:absolute;
	width:596px;
	height:94px;
	z-index:9;
	left: 438px;
	top: 206px;
}
#ss {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 36px;
	line-height: 20px;
	color: #FFF;
}
p {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 24px;
	line-height: 24px;
	color: #FFF;
	width: auto;
}
#apDiv9 p {
	font-weight: bold;
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

<% String movieNo=request.getParameter("movie");
 
   String movieName=null;
   String director=null;
   String type=null;
   ResultSet rs=null;
	  PreparedStatement pstmt;
      DB db=new DB();
      pstmt = db.getConn().prepareStatement("select 电影编号,电影名称,导演,类型  from movieInfo where 电影编号=?");
      pstmt.setString(1, movieNo);
	  rs = pstmt.executeQuery();
 while(rs.next()){
    movieName=rs.getString(2);
    director=rs.getString(3);
    type=rs.getString(4);
} 
%>
<div id="bgbox"></div>

  

<form action="adminIndex.jsp" method=post>
  <div id="apDiv8">
  <ss>编号为<ss1><font color="#FFFFFF" size="+2"><%=movieNo %></font></ss1>的影片已经删除</ss>
  </div>
  <div id="apDiv9">
     <p align="center">
      《<%=movieName%>》,<%=director%> ,<%=type%>
     </p>
  </div>
  <div id="apDiv5"><input type="image" src="images/manage/delete/deletesuccess/back-bt-on_03.png"></div>
</form>
<form action="operat" method=post>
<div id="apDiv7"><input type="image" src="images/manage/delete/deletesuccess/keepdelete-bt-on_03.png"></div>
</form>
<% deleteMovie delete=new deleteMovie(movieNo);%>
</body>
</html>