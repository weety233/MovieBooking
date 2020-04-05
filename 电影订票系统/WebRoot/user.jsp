<%@ page contentType="text/html; charset=gb2312" %>
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
	background-image: url(images/user/user-bg.png);
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
	width:255px;
	height:43px;
	z-index:4;
	left: 592px;
	top: 160px;
}
#apDiv2 {
	position:absolute;
	width:255px;
	height:43px;
	z-index:5;
	left: 594px;
	top: 260px;
}
#apDiv3 {
	position:absolute;
	width:255px;
	height:43px;
	z-index:6;
	left: 592px;
	top: 360px;
}
#apDiv4 {
	position:absolute;
	width:117px;
	height:45px;
	z-index:7;
	left: 918px;
	top: 410px;
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

<body onload="MM_preloadImages('images/home/movie-bt-on.png','images/home/collect-bt-on.png','images/home/search-bt-on.png','images/home/user-bt-on.png','images/user/list-bt-off_03.png','images/user/modifymessage-bt-off_03.png','images/user/modifypassword-bt-off_03.png','images/user/logoff-bt-off_07.png')">
<div id="bgbox">    </div>
<div id="apDiv1"><a href="record.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image8','','images/user/list-bt-off_03.png',1)"><img src="images/user/list-bt-on_03.png" name="Image8" width="255" height="43" border="0" id="Image8" /></a></div>
<div id="apDiv3"><a href="updatePassword.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image10','','images/user/modifypassword-bt-off_03.png',1)"><img src="images/user/modifypassword-bt-on_03.png" name="Image10" width="255" height="43" border="0" id="Image10" /></a></div>
<div id="apDiv2"><a href="updateInfo.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image9','','images/user/modifymessage-bt-off_03.png',1)"><img src="images/user/modifymessage-bt-on_03.png" name="Image9" width="255" height="43" border="0" id="Image9" /></a></div>
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
<div id="apDiv4"><a href="logOff.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image11','','images/user/logoff-bt-off_07.png',1)"><img src="images/user/logoff-bt-on_07.png" name="Image11" width="117" height="45" border="0" id="Image11" /></a></div>
</body>
</html>