import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import login.DB;;
//管理员登陆时的密码配对
public class Adminyanzheng extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		String admin=request.getParameter("adminName");//获取输入的管理员	
		String password=request.getParameter("password");//获取输入的密码
		if(admin==""||password==""){//如果没填写完整
			out.println("<script>alert('管理员或密码不能为空！');</script>");
		    response.addHeader ("refresh", "0;URL=login.jsp");//转至管理员登陆页面 
		}
		else{//如果管理员和密码都填写了
		DB db=new DB();//连接数据库
		PreparedStatement pstmt;
		try {
			pstmt = db.getConn().prepareStatement("select * from adminBiao where adminName=?");//查找数据库是否存在该管理员
			pstmt.setString(1,admin);
	        ResultSet rs = pstmt.executeQuery();
	        String str=null;
		    while(rs.next()){
		    	str=admin;
				if(admin.equals(rs.getString(1))&&password.equals(rs.getString(5))){//如果管理员和密码配对
					out.println("<script>alert('管理员登陆成功！');</script>");//弹框
					try {
						 RequestDispatcher d=request.getRequestDispatcher("adminIndex.jsp");//转至管理员主页				   
						d.forward(request,response);
					} catch (ServletException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				   // response.addHeader ("refresh", "0;URL=adminIndex.jsp"); 
				}
				else{//如果管理员和密码不配对
					out.println("<script>alert('管理员或密码错误！');</script>");//弹框
			    response.addHeader ("refresh", "0;URL=login.jsp"); }//转至管理员登陆界面			
		    }
		    if(str==null){//数据库中不存在该管理员
		    	out.println("<script>alert('管理员不存在！');</script>");//弹框
			    response.addHeader ("refresh", "0;URL=login.jsp"); //转至管理员登陆页面
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}				
		out.println("</body></html>");
	}
}
