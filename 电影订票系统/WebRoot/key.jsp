<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
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
	background-image: url(images/success/success-bg_03.png);
}
#tt {
	font-family: "Arial Black", Gadget, sans-serif;
	font-size: 20px;
	line-height: 20px;
}
#pp {
	  font-size: 25px;
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
	width:210px;
	height:144px;
	z-index:4;
	left: 669px;
	top: 189px;
}
#pp {
	position:absolute;
	width:191px;
	height:46px;
	z-index:1;
	left: 657px;
	top: 344px;
	font-family: Verdana, Geneva, sans-serif;
	font-size: 36px;
}
#apDiv2 {
	position:absolute;
	width:177px;
	height:36px;
	z-index:5;
	
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
<div id="bgbox">
  
</div>
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
String area=request.getParameter("area");try{byte b1[]=area.getBytes("iso-8859-1");area=new String(b1);}catch(Exception e){}
  String cinema=request.getParameter("cinema");try{byte b2[]=cinema.getBytes("iso-8859-1");cinema=new String(b2);}catch(Exception e){}
  System.out.print("area==="+area+"    cinema==="+cinema);
  if("0".equals(area)||"0".equals(cinema)){
%><script>alert('请选择地区或影院！');</script>");
<%response.addHeader ("refresh", "0.1;URL=book.jsp"); }
  else{
int key;
boolean exist=false;
 DB db=new DB();//连接数据库
 String userName=(String)session.getAttribute("userName");
 for(;;){
  key=(int)(Math.random()*1000000)+1;
  PreparedStatement pstmt = db.getConn().prepareStatement("select * from record where 验证码=?");
  pstmt.setInt(1,key);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
		    exist=true;
        }
        if(exist==false){break;}
        }
            
  String movieName=(String)session.getAttribute("movieName");
   
    PreparedStatement pstmt1 = db.getConn().prepareStatement("select * from area where 影院名称=? and 地区=?");
		pstmt1.setString(1,cinema);
		pstmt1.setString(2,area);
		ResultSet rs1 = pstmt1.executeQuery();
		String address=null;
		String tel=null;
		while(rs1.next()){
		    address=rs1.getString("详细地址");
            tel=rs1.getString("影院电话");
            }
        PreparedStatement pstmt2 = db.getConn().prepareStatement("insert into record values (?,?,?,?,?)");
        pstmt2.setInt(1,key);
		pstmt2.setString(2,userName);
		pstmt2.setString(3,area);
		pstmt2.setString(4,cinema);
		pstmt2.setString(5,movieName);
		pstmt2.execute();
%>
<div id="apDiv1">
  <table width="200" border="0">
    <tr>
      <td height="27" align="center" id="tt"><%=movieName%></td>
    </tr>
    <tr>
      <td height="27" align="center" id="tt"><%=area %></td>
    </tr>
    <tr>
      <td height="27" align="center" id="tt"><%=cinema %></td>
    </tr>
    <tr>
      <td height="27" align="center" id="tt"><%=address %></td>
    </tr>
    <tr>
      <td height="27" align="center" id="tt"><%=tel %></td>
    </tr>
  </table>
</div>

<div id="apDiv2">
  <table width="177" height="35" border="0">
    <tr>
      <td id="pp"><%=key%></td>
    </tr>
  </table>
</div>
<%} %>
</body></html>