<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*" %>
<%@ page import ="login.DB" %>
<html><body>
<%        
	    String userName=(String)session.getAttribute("userName");
		String password1=request.getParameter("password1");	
		String password2=request.getParameter("password2");
		if(password1.equals("")||password2.equals("")){
			out.println("<script>alert('请把信息填完整！');</script>");
		    response.addHeader ("refresh", "0;URL=reset1.jsp");
		}
		else{
		    DB db=new DB();
            PreparedStatement pstmt; ResultSet rs;
			if(password1.equals(password2)){
				pstmt=db.getConn().prepareStatement("update userBiao set password=? where userName=?");
				pstmt.setString(1,password1);pstmt.setString(2,userName);
				session.invalidate(); 
				int count=pstmt.executeUpdate();
		            out.println("<script>alert('重置密码成功,为您转至登陆页面！');</script>");
				    try {
						 RequestDispatcher d=request.getRequestDispatcher("login.jsp");				   
						d.forward(request,response);
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
			}
			else{
	    		out.println("<script>alert('两次输入密码不一致，请重新填写！');</script>");
			    response.addHeader ("refresh", "0;URL=reset1.jsp");	 
	    	}
		}		
	%>
</body></html>