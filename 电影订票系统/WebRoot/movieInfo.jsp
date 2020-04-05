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

<%  String movieNo=request.getParameter("name");
    DB db=new DB();//连接数据库
    PreparedStatement pstmt;
		pstmt = db.getConn().prepareStatement("select * from movieInfo where 电影编号=?");
		pstmt.setString(1,movieNo);
		ResultSet rs = pstmt.executeQuery();
		String movieName=null;
		String director=null;
		String actor=null;
		String movieIntr=null;
		String time=null;
		String type=null;
		String mlong=null;
		String state=null;
		String money=null;
		while(rs.next()){
		    movieName=rs.getString("电影名称");
            director=rs.getString("导演");
            actor=rs.getString("主演");
            movieIntr=rs.getString("电影简介");
             time=rs.getString("上映时间");
            type=rs.getString("类型");
            mlong=rs.getString("片长");
             state=rs.getString("状态");
             money=rs.getString("钱");
        }
       session.setAttribute("movieNo",movieNo);
        session.setAttribute("movieName",movieName);
        session.setAttribute("director",director);
        session.setAttribute("actor",actor);
        session.setAttribute("time",time);
        session.setAttribute("mlong",mlong);
        session.setAttribute("money",money);
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
      <td width="260" height="337" align="center" valign="middle">
      <img src="movie/<%=movieNo %>.jpg" align="center" width="200" height="300" border="0" alt="" />
      </td>
      <td width="260" height="337" align="left" valign="top">
        <h3><%= movieName%></h3>
        <p>导演：</p>
        <p><%=director %></p>
        <p>主演：</p>
        <p><%=actor %></p>
        <p>类型：<%=type %> </p>
        <p>上映时间：<%=time %></p>
        <p>价格：<%=money%></p>
      </td>
      <td width="260" height="337" align="left" valign="top">
      <p>简介：</p>
	  <p>&nbsp; &nbsp;&nbsp; &nbsp;<%=movieIntr %></p>
      
      <% 
    boolean exist=false;
    String userName=(String)session.getAttribute("userName");
    PreparedStatement pstmt1 = db.getConn().prepareStatement("select * from favorite where userName=? and 电影编号=?");
    pstmt1.setString(1,userName);
    pstmt1.setString(2,movieNo);
    ResultSet rs1=pstmt1.executeQuery();
    while(rs1.next()){exist=true;}
    if(userName==null||exist==false){
  %>
		<div id="shoucang">
        <form action="collect.jsp" method="post">
		<input type="image" name="cancel" src="images/movieInfo/collect-bt-on_03.png"/>
		</form>
       </div>
<%
  }
    if(exist==true){
  %>
	 	<div id="quxiaoshoucang">
     	 <form action="cancelCollect.jsp" method="post">
		<input type="image" name="cancel" src="images/movieInfo/cancelcollect-bt-on_03.png"/>
		</form>
        </div>	
<%}%>
	  
	  
      <div id="dingpiao">
      <form action="book.jsp" method="post">
	  <input type="image" name="book" src="images/movieInfo/book-bt-on.png"/>
	  </form>  
      </div>
      </td>
    </tr>
  </table>
</div>

</body>
</html>
