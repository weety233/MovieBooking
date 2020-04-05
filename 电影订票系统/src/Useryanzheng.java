import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.User;
import login.DB;

public class Useryanzheng extends HttpServlet{
	User us=new User();
	
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{

		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		String user=request.getParameter("userName");	
		String password=request.getParameter("password");
		if(user==""||password==""){				
			out.println("<script>alert('用户名或密码不能为空！');</script>");
		    response.addHeader ("refresh", "0;URL=login.jsp"); 
		}
		else{
		DB db=new DB();
		PreparedStatement pstmt;
		try {
			pstmt = db.getConn().prepareStatement("select * from userBiao where userName=?");
			pstmt.setString(1,user);
	        ResultSet rs = pstmt.executeQuery();
	        String str=null;
		    while(rs.next()){
		    	str=user;
				if(user.equals(rs.getString(1))&&password.equals(rs.getString(5))){
					us.setUserName(user);					
					 HttpSession session=request.getSession(true);
					session.setAttribute("userName", user);
					out.println("<script>alert('用户登陆成功！');</script>");
					response.addHeader ("refresh", "0;URL=userIndex.jsp");
				}
				else{
					out.println("<script>alert('用户名或密码错误！');</script>");
				    response.addHeader ("refresh", "0;URL=login.jsp"); 
				}				
		    }
		    if(str==null){
		    	out.println("<script>alert('用户名未注册！');</script>");
			    response.addHeader ("refresh", "0;URL=login.jsp"); 
	        }
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("</body></html>");
	}
	}
}
