<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="login.DB" %>
<html>
<body>
<% 
String userName=(String)session.getAttribute("userName");
String movieName=request.getParameter("name");
try{
byte b[]=movieName.getBytes("ISO-8859-1");
movieName=new String(b);
}catch(Exception e){}
System.out.print("movieName="+movieName);
  DB db=new DB();//连接数据库
  PreparedStatement pstmt = db.getConn().prepareStatement("delete from record where userName=? and 电影名=?");
  pstmt.setString(1,userName);
  pstmt.setString(2,movieName);
  pstmt.execute();
  %>
<script>alert('退票成功！');</script>
<% response.addHeader ("refresh", "0;URL=record.jsp");%>
</body></html>