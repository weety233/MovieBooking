<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="login.DB"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="JS代码,图片特效,JS广告代码,JS特效代码" />
<meta name="description" content="此代码内容为四图横向滚动效果（可自动可手动），属于站长常用代码，更多图片特效代码请访问xw素材网JS代码频道。" />
<title>图片左右无缝滚动带有手动和自动图片滚动_xw素材网</title>
<link type="text/css" href="css/lrtk.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/lrtk.js"></script>
</head>

<body> 
<br/>  <br/>
<!-- 代码开始 -->
<div class="box">
	<div class="picbox">
		<ul class="piclist mainlist">
<%  DB db=new DB();//连接数据库
    PreparedStatement pstmt;
    int count=0;
	try {
		pstmt = db.getConn().prepareStatement("select * from movieInfo where 状态=?");
		pstmt.setString(1,"即将上映");
		ResultSet rs = pstmt.executeQuery();
		String movieNo=null;
		String movieName=null;
		while(rs.next()){
		++count;
		    movieNo=rs.getString("电影编号");
		    movieName=rs.getString("电影名称");
		    System.out.print("movieNo="+movieNo);
%>
		    <li>
		    <a href="movieInfo.jsp?name=<%=movieNo%>">
		    <img src="movie/<%=movieNo%>.jpg"  width="220" height="300"> 
		    <br> 
		    <%=movieName%></img>
		    </a>
		    </li>
		    <%
		    }
		    %>
		    </ul>
        <ul class="piclist swaplist"></ul>
	</div>
	<div class="og_prev"></div>
	<div class="og_next"></div>
</div>
<!-- 代码结束 -->
		    <%
		if(movieNo==null){//如果不存在
		%>
		没有正在上映的电影
		<%
		}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
			e.printStackTrace();
	}
	%>
	
</body>
</html>