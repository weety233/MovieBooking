import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;
import login.DB;

//通过身份验证显示管理员和密码
public class AdminPassword extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		String realName=request.getParameter("realName");//获取真实姓名
		byte b[]=realName.getBytes("iso-8859-1");//汉子处理
		realName=new String(b);	
		String cardNum=request.getParameter("cardNum");//获取身份证号
		String telephone=request.getParameter("telephone");//获取手机号码
		String adminName=null;//定义管理员变量
		String password=null;//定义密码变量
		if(realName.equals("")||cardNum.equals("")||telephone.equals("")){//如果验证信息没有填写完整
		    out.println("<script>alert('信息未填写完整，为您转至身份验证页面！');</script>");//弹框
			response.addHeader ("refresh", "0;URL=adminforget.jsp");//转至身份验证界面
		}
		else{//如果验证信息填写完整
			DB db=new DB();//连接数据库
			//以下是查找数据库中的记录是否和管理员输入的信息一致
			PreparedStatement pstmt;
			try {
				pstmt = db.getConn().prepareStatement("select * from adminBiao where realName=? and cardNum=? and telePhone=?");
				pstmt.setString(1,realName);
				pstmt.setString(2,cardNum);
				pstmt.setString(3,telephone);
		        ResultSet rs = pstmt.executeQuery();
			    while(rs.next()){//如果数据库中的记录存在管理员输入的记录
				    adminName=rs.getString(1);//获取管理员
				    password=rs.getString(5);//获取密码
			    }
			    if(adminName==null||password==null){//如果没有获取管理员和密码，说明没有该条记录
			    	out.println("<script>alert('身份验证失败，为您转至身份验证页面！');</script>");//弹框
				    response.addHeader ("refresh", "0;URL=adminforget.jsp"); 
			    }
			    else{//如果已经获取管理员和密码，说明数据库中存在该条记录

			    	//out.println("<script>alert('管理员或密码不能为空！');</script>");
			    	out.println("<script>alert('您的管理名为："+adminName+"密码是:"+password+"');</script>");			    	
				    response.addHeader ("refresh", "0;URL=adminLogin.jsp"); 
			    	//out.print("您的管理名为："+adminName);//显示管理员
			    	//out.print("<br>密码是："+adminName);//显示密码
			    }
			} 
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}		
		out.println("</body></html>");
	}
}
