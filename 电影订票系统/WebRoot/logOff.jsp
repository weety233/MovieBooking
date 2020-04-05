<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import ="login.DB" %>
<html><body>
<% 
String userName=(String)session.getAttribute("userName");
if(userName==null){
%>
<script>alert('不好意思，您还没有登录！');</script>
<%
response.addHeader ("refresh", "0.1;URL=user.jsp");
}
else{
session.invalidate(); 
out.println("<script>alert('成功注销！');</script>");
response.addHeader ("refresh", "0;URL=userIndex.jsp"); 
}%> 
</body></html>