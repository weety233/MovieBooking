<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import ="login.DB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
	background-image: url(images/result/result03.png);
}
#bgb1 {
	position:absolute;
	width:781px;
	height:338px;
	z-index:4;
	left: 318px;
	top: 123px;
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
	width:200px;
	height:115px;
	z-index:4;
	left: 316px;
	top: 130px;
}
#apDiv2 {
	position:absolute;
	width:1054px;
	height:50px;
	z-index:5;
	left: 140px;
	top: 493px;
}
</style>
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
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
<div id="bgbox"></div>
<div id="bgb1">
  <table width="781" height="337" border="0">
    <tr>
    <%String search=request.getParameter("search");
System.out.print("search==="+search);
		if(search==""){
%>
<script>alert('您还未输入关键字！');</script>
<%
		    response.addHeader ("refresh", "0.1;URL=search.jsp"); //转至搜索页面
		}
		else{
			try{byte b[]=search.getBytes("iso-8859-1");
			search=new String(b);}catch(Exception e){}	
			%>
			<font color="white" face="黑体">搜索"<%=search %>"的结果为：</font>
			<%
			boolean exist=false;
			String createSql="select * from movieInfo where 电影名称 like'%"+search+"%' or 主演  like'%"+search+"%'";//模糊搜索语句
			DB db=new DB();//连接数据库
			try{
				if(db.getConn()!=null){//已连接数据库
					Statement stmt;
					stmt=db.getConn().createStatement();
					ResultSet rs=stmt.executeQuery(createSql);//执行模糊搜索
					while(rs.next()){
						exist=true;
						String movieNo=rs.getString("电影编号");
						String movieName=rs.getString("电影名称");%>
  <td width="260" height="337" align="center" valign="middle"><a href="movieInfo.jsp?name=<%=movieNo %>"><img src="movie/<%=movieNo %>.jpg" width="180" height="270" align="left"></img></a>
</td>

<%
					}
				}
			}catch (Exception e){
				e.printStackTrace();
			}finally{
				db.closeConnection();
			}
		}
%>
</tr>
</table>
</div>
<div id="bottom">
  <div id="bottom_box">
    <table width="849" height="50" border="0">
      <tr>
        <td width="212" height="50" align="center"><a href="userIndex.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/home/movie-bt-on.png',1)"><img src="images/home/movie-bt-off.png" alt="" name="Image4" width="120" height="50" border="0" id="Image4" /></a></td>
        <td width="212" height="50" align="center"><a href="favorite.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','images/home/collect-bt-on.png',1)"><img src="images/home/collect-bt-off.png" alt="" name="Image5" width="120" height="50" border="0" id="Image5" /></a></td>
        <td width="212" height="50" align="center"><a href="search.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','images/home/search-bt-on.png',1)"><img src="images/home/search-bt-off.png" alt="" name="Image6" width="120" height="50" border="0" id="Image6" /></a></td>
        <td width="212" height="50" align="center"><a href="user.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','images/home/user-bt-on.png',1)"><img src="images/home/user-bt-off.png" alt="" name="Image7" width="120" height="50" border="0" id="Image7" /></a></td>
      </tr>
    </table>
  </div>
</div>
</body>