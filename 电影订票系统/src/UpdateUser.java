import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import login.DB;
import login.updateUser;


public class UpdateUser extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");	
	    String realName=request.getParameter("realName");
	    byte b2[]=realName.getBytes("iso-8859-1");
		realName=new String(b2);    
	    String cardNum=request.getParameter("cardNum");
	    String telephone=request.getParameter("telephone");
	    if(realName.equals("")||cardNum.equals("")||telephone.equals("")){
	    	out.println("<script>alert('请把信息填完整！');</script>");
		    response.addHeader ("refresh", "0.1;URL=updateInfo.jsp"); 
	    }    
	    else{
	    	HttpSession session=request.getSession();
	    	String userName=(String)session.getAttribute("userName");
		    updateUser update=new updateUser(userName, realName, cardNum, telephone);	
		    out.println("<script>alert('修改信息成功！');</script>");
		    response.addHeader ("refresh", "0.1;URL=userIndex.jsp");
			
	    }    
		out.println("</body></html>");
	}
}