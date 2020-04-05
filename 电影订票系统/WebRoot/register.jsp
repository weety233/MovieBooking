<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" %>
<HTML>
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
	background-image: url(images/register/resgiter-bg.png);
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
	width:654px;
	height:354px;
	z-index:4;
	left: 390px;
	top: 127px;
	background-image: url(images/register/register-box_03.png);
}
#apDiv2 {
	position:absolute;
	width:180px;
	height:45px;
	z-index:5;
	left: 130px;
	top: 70px;
}
#apDiv3 {
	position:absolute;
	width:180px;
	height:45px;
	z-index:6;
	left: 130px;
	top: 135px;
}
#apDiv4 {
	position:absolute;
	width:180px;
	height:45px;
	z-index:5;
	left: 130px;
	top: 200px;
}
#apDiv5 {
	position:absolute;
	width:180px;
	height:45px;
	z-index:5;
	left: 418px;
	top: 135px;
}
#apDiv6 {	position:absolute;
	width:180px;
	height:45px;
	z-index:5;
	left: 418px;
	top: 70px;
}
#apDiv7 {
	position:absolute;
	width:180px;
	height:45px;
	z-index:7;
	left: 418px;
	top: 201px;
}
#KK {
	background-image: url(images/register/input.png);
	margin: 0px;
	padding: 0px;
	height: 45px;
	width: 180px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: 0;
	border-right-style: 0;
	border-bottom-style: 0;
	border-left-style: 0;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 20px;
	line-height: 20px;
}
#apDiv8 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 481px;
	top: 270px;
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

<body onload="MM_preloadImages('images/home/movie-bt-on.png','images/home/collect-bt-on.png','images/home/search-bt-on.png','images/home/user-bt-on.png')">
<div id="bgbox">    </div>
<div id="bottom">
  <div id="bottom_box">
    <table width="849" height="50" border="0">
      <tr>
        <td width="212" height="50" align="center"><a href="userIndex.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/home/movie-bt-on.png',1)"><img src="images/home/movie-bt-off.png" name="Image4" width="120" height="50" border="0" id="Image4" /></a></td>
        <td width="212" height="50" align="center"><a href="favorite.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','images/home/collect-bt-on.png',1)"><img src="images/home/collect-bt-off.png" name="Image5" width="120" height="50" border="0" id="Image5" /></a></td>
        <td width="212" height="50" align="center"><a href="search.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','images/home/search-bt-on.png',1)"><img src="images/home/search-bt-off.png" name="Image6" width="120" height="50" border="0" id="Image6" /></a></td>
        <td width="212" height="50" align="center"><a href="user.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','images/home/user-bt-on.png',1)"><img src="images/home/user-bt-off.png" name="Image7" width="120" height="50" border="0" id="Image7" /></a></td>
      </tr>
    </table>
  </div>
</div>

<div id="apDiv1">
  <form action="insert" method="post" name="form" >
  <div id="apDiv2"><input type="text" name="userName" id="KK" /> </div>             
  <div id="apDiv3"> <input type="text" name="realName" id="KK" /></div>
  <div id="apDiv4"><input type="text" name="cardNum" id="KK" /></div>
  <div id="apDiv6"> <input type="text" name="telephone" id="KK" /></div>
  <div id="apDiv5"><input type="password" name="password1" id="KK" /></div>
  <div id="apDiv7"> <input type="password" name="password2" id="KK" /></div>
  <div id="apDiv8"><input type="image" src="images/register/enter-on.png"></div>
  </form>
</div>
  
</BODY>
</HTML>

