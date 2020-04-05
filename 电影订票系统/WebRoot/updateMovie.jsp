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
	background-image: url(images/manage/modify/modify2/modify-bg_03.png);
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
#bb {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 20px;
	background-image: url(images/manage/add/add/input-long_03.png);
	margin: 0px;
	padding: 0px;
	height: 36px;
	width: 184px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: 0;
	border-right-style: 0;
	border-bottom-style: 0;
	border-left-style: 0;
	overflow: hidden;
	line-height: 20px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.bbb {
	background-image: url(images/manage/add/add/input-big_06.png);
	font-family: Verdana, Geneva, sans-serif;
	font-size: 20px;
	background-color: #D6D3D6;
	height: 120px;
	width: 240px;
}

#apDiv1 {
	position:absolute;
	width:417px;
	height:307px;
	z-index:1;
	left: 302px;
	top: 133px;
}
p {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 18px;
	line-height: 20px;
	color: #D6D3D6;
	width: 80px;
	height: auto;
	margin: 0px;
	padding-top: 10px;
	padding-right: 0px;
	padding-bottom: 10px;
}
#apDiv2 {
	position:absolute;
	width:429px;
	height:306px;
	z-index:1;
	left: 719px;
	top: 133px;
}
#apDiv3 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:4;
	left: 805px;
	top: 385px;
}

#apDiv4 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 944px;
	top: 384px;
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

<body onLoad="MM_preloadImages('images/manage/add/addsuccess/back-bt-off_03.png')">
<div id="bgbox"></div>


<form action="updateMovie2.jsp" method=post>
<% String movieNo=request.getParameter("update");
System.out.print("movieNo++++"+movieNo);
   session.setAttribute("movieNo",movieNo);
   String movieName=null;
   String director=null;
   String actor=null;
   String movieIntr=null;
   String time=null;
   String type=null;
   String mlong=null;
   String state=null;
   String money=null;
   ResultSet rs=null;
	  PreparedStatement pstmt;
      DB db=new DB();
      pstmt = db.getConn().prepareStatement("select 电影编号,电影名称,导演,主演,电影简介,上映时间,类型,片长,状态,钱  from movieInfo where 电影编号=?");
      pstmt.setString(1, movieNo);
	  rs = pstmt.executeQuery();
 while(rs.next()){
    movieName=rs.getString(2);    
    director=rs.getString(3);
    actor=rs.getString(4);
    movieIntr=rs.getString(5);
    System.out.print("movieIntr="+movieIntr);
    time=rs.getString(6);
    type=rs.getString(7);
    mlong=rs.getString(8);
    state=rs.getString(9);
    money=rs.getString(10);
} 
%>
 <div id="apDiv1">
<table>
<tr>
  <td width="88"><p>电影编号</p></td>
  <td width="316" "><input type="text" name="movieNo" id="bb" value=<%=movieNo%> disabled="disabled" ></td>
</tr>


<tr>
  <td><p>电影名称</p></td>
  <td ><input type="text" name="movieName" id="bb" value=<%=movieName%> /></td>
</tr>


<tr>
  <td><p>导演</p></td>
  <td ><input type="text" name="director" id="bb" value=<%=director%>>
    <font color="white">(姓名用、隔开)</font></td>
</tr>


<tr>
  <td><p>主演</p></td>
  <td ><input type="text" name="actor" id="bb" value=<%=actor%>>
    <font color="white">(姓名用、隔开)</font></td>
</tr>


<tr>
  <td height="183" valign="top"><p>&nbsp;</p>
    <p>电影简介</p></td>
  <td valign="top" ><textarea name="movieIntr" class="bbb" id="bbb">&nbsp&nbsp&nbsp&nbsp<%=movieIntr%></textarea></td>
</tr>
</table>
  </div>
  <div id="apDiv2">
      <table width="417">
<tr>
  <td width="80"><p>上映时间</p></td>
  <td width="325"><input type="text" name="time" id="bb" value=<%=time%>>    
   <font color="white">例：2015-01-01</font> </td>
</tr>
<tr>
  <td><p>类型</p></td>
  <td><input type="text" name="type" id="bb" value=<%=type%>></td>
</tr>
<tr>
  <td><p>片长</p></td>
  <td><input type="text" name="mlong" id="bb" value=<%=mlong%>>    
    <font color="white">例：90m</font></td>
</tr>
<tr>
  <td><p>价格</p></td>
  <td><input type="text" name="money" id="bb" value=<%=money%>>
  <font color="white">例：25元</font></td>
</tr>
<tr>
  <td><p>状态</p></td>
  <td><Select name="state">
    <Option value="正在上映" >正在上映</Option>
    <Option value="即将上映" >即将上映</Option>
  </Select>
  </td>
</tr>

</table>
</div>
  <div id="apDiv3"><input type="image" src="images/manage/add/add/enter-bt-on.png" ></div>
</form>
<form action="chooseOperate.jsp" method="post">
<div id="apDiv4"><input type="image" src="images/manage/modify/modifysuccess/back-bt-on_03.png"></div>
</form> 
 </body>
</html>