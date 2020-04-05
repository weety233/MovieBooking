import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import login.DB;
//管理员对电影数据便进行操作
public class operatMovie extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		String operat=request.getParameter("o");//获取操作名称
		if(operat!=null){//这里比较难解释，需要解释的话面谈
			HttpSession session=request.getSession(true);//定义session
		    session.setAttribute("operat",operat);//获取操作名称并保存
		    }
		else
		{HttpSession session=request.getSession(true);//定义session
		operat=(String)session.getAttribute("operat");//获取以保存的操作名称
		}
		response.sendRedirect("chooseOperate.jsp");		
		out.println("</body></html>");
}
}
