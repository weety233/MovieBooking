<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import="login.deleteMovie" %>
<%@ page import="login.DB" %>
<html><body>
<%String operat=(String)session.getAttribute("operat");//获取以保存的操作名称			
			//*******************管理员删除影片信息********************************************
			if(operat.equals("delete")){
			try {
				RequestDispatcher d=request.getRequestDispatcher("delmovie0.jsp");		//转至添加电影页面		   
					d.forward(request,response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//*******************管理员添加影片信息************************************************
			if(operat.equals("add")){			
				try {
				RequestDispatcher d=request.getRequestDispatcher("inputMovie.jsp");		//转至添加电影页面		   
					d.forward(request,response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//*******************管理员修改影片信息**************************************************
			if(operat.equals("update")){
			try {
				RequestDispatcher d=request.getRequestDispatcher("updmovie0.jsp");		//转至添加电影页面		   
					d.forward(request,response);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}%>
</body></html>