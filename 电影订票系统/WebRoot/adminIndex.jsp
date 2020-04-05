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
	background-image: url(images/manage/manage/manage-bg_03.png);
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
	left: 730px;
	top: 340px;
}
#apDiv6 {
	position:absolute;
	width:114px;
	height:41px;
	z-index:6;
	left: 602px;
	top: 339px;
}
</style>
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; 
  if(d.images){ 
	  if(!d.MM_p) d.MM_p=new Array();
          var i,j=d.MM_p.length,a=MM_preloadImages.arguments; 
          for(i=0; i<a.length; i++)
             if (a[i].indexOf("#")!=0)
                { d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}
          }
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; 
  for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  
  if(!d) d=document; 
  if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; 
  for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
	   x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n);
       return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; 
  document.MM_sr=new Array; 
  for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){
	   document.MM_sr[j++]=x; 
	   if(!x.oSrc) 
		   x.oSrc=x.src; 
	       x.src=a[i+2];
	       }
}
</script>
</head>

<body onLoad="MM_preloadImages('images/user/logoff-bt-off_07.png')">
<div id="bgbox">
  <div id="apDiv1"></div>
</div>
<form action="operat" method=post>
  <div id="apDiv2"><input type="radio" name="o" value="delete"></div>
<div id="apDiv3"><input type="radio" name="o" value="add"></div>
<div id="apDiv4"> <input type="radio" name="o" value="update"></div>
<div id="apDiv5"><input type="image" src="images/manage/manage/enter-bt-on.png"></div>
</form>
<div id="apDiv6"><a href="userIndex.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','images/user/logoff-bt-off_07.png',1)"><img src="images/user/logoff-bt-on_07.png" name="Image1" width="117" height="45" border="0"></a></div>
</body>
</html>
