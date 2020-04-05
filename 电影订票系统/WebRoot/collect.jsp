<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="login.DB" %>
<html>
<body>

<% 
  String movieNo=(String)session.getAttribute("movieNo");
  boolean exist=false;
DB db=new DB();//连接数据库

String userName=(String)session.getAttribute("userName");
if(userName==null){
%>
<script>alert('不好意思，您还没有登录，不可以收藏！');</script>
<%
response.addHeader ("refresh", "0.1;URL=userIndex.jsp");
}
  else{
  PreparedStatement pstmt1 = db.getConn().prepareStatement("insert into favorite values (?,?)");
  pstmt1.setString(1,userName);
  pstmt1.setString(2,movieNo);
  pstmt1.execute();
  %>
<script>alert('收藏成功！');</script>
<%response.addHeader ("refresh", "0.1;URL=userIndex.jsp");}%>
</body></html>