    <%@ page contentType="text/html; charset=gb2312" %>
    <%@ page import="java.io.*"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="login.DB"%>
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
	background-image: url(images/home/willshow-bg.png);
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
        width:791px;
        height:315px;
        z-index:1;
        left: 178px;
        top: 89px;
    }
    #btn_user {position:absolute;
        width:89px;
        height:52px;
        z-index:3;
        left: 987px;
        top: 53px;
        border:none;
    }
    #k1 {	position:absolute;
        width:113px;
        height:45px;
        z-index:2;
        left: 153px;
        top: 82px;
    }
    #k2 {	position:absolute;
	width:113px;
	height:45px;
	z-index:1;
	left: 153px;
	top: 163px;
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
    
    <body onload="MM_preloadImages('images/home/movie-bt-on.png','images/home/collect-bt-on.png','images/home/search-bt-on.png','images/home/user-bt-on.png','images/home/onshow-bt-on.png','images/home/willshow-bt-on.png')">
    <div id="bgbox">
      <div id="apDiv1">
        <marquee loop="-1" scrollamount="4" width="800" marqueedirection="right" onMouseOver="this.stop();" onMouseOut="this.start();" id="marqueebb" behavior="alternate" >
        <%  DB db=new DB();//连接数据库
        PreparedStatement pstmt;
        try {
            pstmt = db.getConn().prepareStatement("select * from movieInfo where 状态=?");
            pstmt.setString(1,"即将上映");
            ResultSet rs = pstmt.executeQuery();
            String movieNo=null;
            String movieName=null;
            int count=0;
            while(rs.next()){%>
        <%
            ++count;
            System.out.print("count="+count);
                movieNo=rs.getString("电影编号");
                movieName=rs.getString("电影名称");
                System.out.print("movieNo="+movieNo);
    %>
        <a href="movieInfo.jsp?name=<%=movieNo%>"><img src="movie/<%=movieNo%>.jpg" width="200" height="300"></a>
        <%
           }%>
        </marquee>
      </div>
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
    </div><%
            if(movieNo==null){//如果不存在
            %>
            没有即将上映的电影
            <%
            }
        } catch (SQLException e) {
        // TODO Auto-generated catch block
                e.printStackTrace();
        }
        %>
    <div id="k1"><a href="zhengzai.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image8','','images/home/onshow-bt-on.png',1)"><img src="images/home/onshow-bt-off.png" alt="" name="Image8" width="113" height="45" border="0" id="Image8" /></a></div>
    <div id="k2"><a href="jijiang.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image9','','images/home/willshow-bt-on.png',1)"><img src="images/home/willshow-bt-off.png" alt="" name="Image9" width="113" height="45" border="0" id="Image9" /></a></div>
    <% String userName=null;
   try{
       userName=(String)session.getAttribute("userName");
       }
   catch(Exception e){};
   if(userName==null){
 %>
 	<div id="btn_user">
  <table width="120" height="51" border="0">
    <tr>
      <td width="26" height="26"><img src="images/home/login-icon.png"></td>
      <td width="47" height="26"><a href="login.jsp"><img src="images/home/login-bt.png"></a></td>
      <td width="47" height="26"><a href="register.jsp"><img src="images/home/register-bt.png"></a></td>
    </tr>
  </table>
</div>
<% } 

%>
    
    
    
    
    
</body></html>
