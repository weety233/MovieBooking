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
	background-image: url(images/movieInfo/detail-bg_03.png);
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
	width:555px;
	height:317px;
	z-index:4;
	left: 317px;
	top: 128px;
}
#bgb1 {
	position:absolute;
	width:781px;
	height:338px;
	z-index:4;
	left: 318px;
	top: 123px;
}
#dingpiao {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 533px;
	top: 236px;
}
#shoucang {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 660px;
	top: 236px;
}
#quxiaoshoucang {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 660px;
	top: 237px;
}
p {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 18px;
	font-style: normal;
	font-weight: bold;
	color: #FFF;
	margin:9px 0px 9px 0px;	
	
}

h3{
 	font-family: Verdana, Geneva, sans-serif;
	font-size: 26px;
	font-style: normal;
	font-weight: bold;
	color: #FFF;
	margin:10px 10px;

}
#apDiv2 {
	position:absolute;
	width:254px;
	height:147px;
	z-index:5;
	top: 64px;
	left: 527px;
}
#apDiv3 {
	position:absolute;
	width:115px;
	height:41px;
	z-index:5;
	left: 645px;
	top: 240px;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; 
  for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++)  
	  x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; 
  if(d.images){ 
	  if(!d.MM_p) 
		  d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; 
    for(i=0; i<a.length; i++)
      if (a[i].indexOf("#")!=0){ 
    	  d.MM_p[j]=new Image; 
    	  d.MM_p[j++].src=a[i];}
    }
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; 
  if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);
   }
  if(!(x=d[n])&&d.all) 
	  x=d.all[n]; 
  for (i=0;!x&&i<d.forms.length;i++) 
	  x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
	  x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) 
	  x=d.getElementById(n); 
  return x;
}

 function MM_swapImage() { //v3.0
   var i,j=0,x,a=MM_swapImage.arguments; 
   document.MM_sr=new Array; 
   for(i=0;i<(a.length-2);i+=3)
     if ((x=MM_findObj(a[i]))!=null){
    	 document.MM_sr[j++]=x; 
    	 if(!x.oSrc) x.oSrc=x.src; 
    	 x.src=a[i+2];
     }
}
</script>

<script language="JavaScript" type="text/javascript">
     //定义了城市的二维数组，里面的顺序跟省份的顺序是相同的。通过selectedIndex获得省份的下标值来得到相应的城市数组
     var city=[
     ["大地影院","金逸影城","横店电影城","金影电影城"],
     ["大地影院","中影国际影城","中影星美影城IMAX","金逸影城"],
     ["大地影院","金逸院线永福影城","华影凤凰电影院","国信金逸影城"],
     ["华影国际影城","金逸珠江吴川国际影城"],
     ];
     function getCity(){
         //获得省份下拉框的对象
         var sltProvince=document.form1.area;
         //获得城市下拉框的对象
         var sltCity=document.form1.cinema;         
         //得到对应省份的城市数组
         var provinceCity=city[sltProvince.selectedIndex - 1];
 
         //清空城市下拉框，仅留提示选项
         sltCity.length=1;
 
         //将城市数组中的值填充到城市下拉框中
         for(var i=0;i<provinceCity.length;i++){
             sltCity[i+1]=new Option(provinceCity[i],provinceCity[i]);
         }
     }
 </script>
</head>
 
<body>

<% 
String userName=(String)session.getAttribute("userName");
if(userName==null){
%>

<script>alert('不好意思，您还没有登录，不可以订票！');</script>
<%
response.addHeader ("refresh", "0.1;URL=userIndex.jsp");
}
else{
  String movieNo=(String)session.getAttribute("movieNo");
  String movieName=(String)session.getAttribute("movieName");
  String director=(String)session.getAttribute("director");
  String actor=(String)session.getAttribute("actor");
  String time=(String)session.getAttribute("time");
  String mlong=(String)session.getAttribute("mlong");
  String money=(String)session.getAttribute("money");
  %>
  
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
<div id="bgb1">
  <table width="781" height="337" border="0">
    <tr>
      <td width="260" height="337" align="left" valign="top">
       
       <h3> <%=movieName %></br></h3>
       <p>导演：</p>
        <p><%=director %></br></p>
         <p>主演：</p>
        <p><%=actor %></br></p>
        
        <p>上映时间：<%=time %></br></p>
        <p>片长：<%=mlong %></br></p>
		<p>价格：<%=money %></br></p>
		
		
      </td>
      <td width="260" height="337" align="center" valign="middle">
      <h3><img src="movie/<%=movieNo %>.jpg" align="center" width="200" height="300" border="0" alt="" /></h3></td>
      <td width="260" height="337" align="left" valign="top">

     <div id="apDiv2">  
      <form action="key.jsp" method="post" name="form1" id="form1">
      <p>地区选择 :&nbsp;
      <select name="area" onchange="getCity()">
        <option value="0">请选择所在地区 </option>
        <option value="赤坎">赤坎 </option>
        <option value="霞山">霞山 </option>
        <option value="廉江">廉江 </option>
        <option value="吴川">吴川</option>
      </select>
     </p> 
    <p>影院选择 :&nbsp;
      <select name="cinema">
        <option value="0">请选择影城 </option>
      <option value="大地影院">大地影院</option><option value="金逸影城">金逸影城</option><option value="横店电影城">横店电影城</option><option value="金影电影城">金影电影城</option></select>
    </p>
    <p>一人票</p>
    <p>当天有效</p>  
</div>
<div id="apDiv3"><input type="image" src="images/book/enter-bt-on.png"> </div></td>
    </tr>
  </table>
  </form>
</div>
<%} %>
</body></html>