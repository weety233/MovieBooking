<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import ="login.DB" %>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<style type="text/css">
#bgbox {
	position:absolute;
	width:1052px;
	height:449px;
	z-index:1;
	left: 140px;
	top: 40px;
	background-image: url(images/search/search-bg.png);
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
	width:311px;
	height:49px;
	z-index:4;
	left: 533px;
	top: 156px;
	overflow: hidden;
}
#A {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 24px;
	background-color: #FFF;
	background-image: url(images/search/search-input_03.png);
	height: 54px;
	width: 303px;
	color: #FFF;
	margin: 0px;
	padding: 0px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: 0;
	border-right-style: 0;
	border-bottom-style: 0;
	border-left-style: 0;
}
#apDiv2 {
	position:absolute;
	width:56px;
	height:53px;
	z-index:5;
	left: 864px;
	top: 155px;
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

<form action="search2.jsp" method=post>
<div id="apDiv1">
    <input type="text" name="search" id="A" />   
</div>
<div id="apDiv2"><input type="image" src="images/search/search-bt-on_03.png"></div>
</form>


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



</body>
</html>
