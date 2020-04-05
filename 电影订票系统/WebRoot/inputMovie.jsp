<%@ page contentType="text/html; charset=gb2312" %>
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
	background-image: url(images/manage/add/add/add-bg_03.png);
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

.t {
	color: #FFF;
}
#apDiv4 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 943px;
	top: 385px;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>

<body onLoad="MM_preloadImages('images/home/movie-bt-on.png','images/home/collect-bt-on.png','images/home/search-bt-on.png','images/home/user-bt-on.png','images/manage/add/addsuccess/back-bt-off_03.png')">
<div id="bgbox"></div>
<form action="addmovie" method=post>
  <div id="apDiv1">
  

<table>
<tr>
  <td width="88"><p>电影编号</p></td>
  <td width="316" "><input type="text" name="movieNo" id="bb"></td>
</tr>


<tr>
  <td><p>电影名称</p></td>
  <td ><input type="text" name="movieName" id="bb"></td>
</tr>


<tr>
  <td><p>导演</p></td>
  <td ><input type="text" name="director" id="bb">
    <span class="t">(姓名用、隔开)</span></td>
</tr>


<tr>
  <td><p>主演</p></td>
  <td ><input type="text" name="actor" id="bb">
    <span class="t">(姓名用、隔开)</span></td>
</tr>


<tr>
  <td height="183" valign="top"><p>&nbsp;</p>
    <p>电影简介</p></td>
  <td align="left" valign="top" ><textarea name="movieIntr" class="bbb" id="bbb"></textarea></td>
</tr>
</table>
  </div>
  <div id="apDiv2">
      <table width="417">
<tr>
  <td width="80"><p>上映时间</p></td>
  <td width="325"><input type="text" name="time" id="bb">
    <span class="t">    例：2015-01-01</span></td>
</tr>
<tr>
  <td><p>类型</p></td>
  <td><input type="text" name="type" id="bb"></td>
</tr>
<tr>
  <td><p>片长</p></td>
  <td><input type="text" name="mlong" id="bb">
    <span class="t">    例：90m</span></td>
</tr>
<tr>
  <td><p>价格</p></td>
  <td class="t"><input type="text" name="money" id="bb">
  例：25元</td>
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
<form action="adminIndex.jsp" method="post">
   <div id="apDiv4"><input type="image" src="images/manage/add/addsuccess/back-bt-on_03.png" ></div>
</form>

</body>
</html>
