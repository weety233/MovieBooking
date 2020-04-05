<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import ="login.DB" %>
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
	background-image: url(images/modifypassword/modifypassword-bg_03.png);
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
	width:298px;
	height:342px;
	z-index:4;
	background-image: url(images/modifypassword/modifypassword-box_03.png);
	left: 533px;
	top: 122px;
}
#apDiv2 {
	position:absolute;
	width:152px;
	height:36px;
	z-index:1;
	left: 114px;
	top: 78px;
}
#KK {
	font-family: Verdana, Geneva, sans-serif;
	height: 35px;
	width: 152px;
	background-image: url(images/findpassword/input.png);
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: 0;
	border-right-style: 0;
	border-bottom-style: 0;
	border-left-style: 0;
	margin: 0px;
	padding: 0px;
	font-size: 18px;
	white-space: nowrap;
	text-align: left;
	vertical-align: middle;
	
}
#apDiv3 {
	position:absolute;
	width:152px;
	height:35px;
	z-index:2;
	left: 114px;
	top: 142px;
}
#apDiv4 {
	position:absolute;
	width:180px;
	height:35px;
	z-index:5;
	left: 129px;
	top: 204px;
}
#apDiv5 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 152px;
	top: 205px;
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

<% 
String userName=(String)session.getAttribute("userName");
if(userName==null){
%>

<script>alert('不好意思，您还没有登录，不可以修改密码！');</script>
<%
response.addHeader ("refresh", "0.1;URL=user.jsp");
}
else{%>


    <div id="apDiv1">
				  <form action="updatePassword2.jsp" method=post>
                  <div id="apDiv2">
                    <input type="password" name="password1" id="KK" />
                  </div>
                  <div id="apDiv3">                 
                    <input type="password" name="password2" id="KK" />    
                  </div>
                  <div id="apDiv5">
                    <INPUT type="image" src="images/book/enter-bt-on.png">
                    </div>
           </form>
  </div>



<%} %>
</body></html>