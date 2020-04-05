import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import login.DB;
import login.insertUser;

//添加用户记录
public class InsertUser extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
	    String userName=request.getParameter("userName");//获取用户名
	    String realName=request.getParameter("realName");byte b1[]=realName.getBytes("iso-8859-1");realName=new String(b1);//获取真实姓名并汉字处理
	    String cardNum=request.getParameter("cardNum");//获取身份证号
	    String telephone=request.getParameter("telephone");//获取手机号码
	    String password1=request.getParameter("password1");//获取第一次输入的密码
	    String password2=request.getParameter("password2");//获取第二次输入的密码
	    if(userName.equals("")||realName.equals("")||cardNum.equals("")||telephone.equals("")||password1.equals("")||password2.equals("")){//如果信息没有填写完整
	    	out.println("<script>alert('请把信息填完整！');</script>");//弹框
		    response.addHeader ("refresh", "0.1;URL=register.jsp"); //转至注册页面
	    }
	    else{//如果信息都填了
	    	if(password1.equals(password2)){//两次密码一致
	    		DB db=new DB();//连接数据库
	    		//以下是查找数据库中是否存在注册的用户名
				PreparedStatement pstmt;
				try {
					pstmt = db.getConn().prepareStatement("select * from userBiao where userName=?");
					pstmt.setString(1,userName);
			        ResultSet rs = pstmt.executeQuery();
			        String str=null;
				    while(rs.next()){
				    	str=userName;
				    }
				    if(str==null){//如果不存在，则注册成功，进入用户主页
				    	insertUser insert=new insertUser(userName,realName,cardNum,telephone,password1);
					    out.println("<script>alert('注册成功，为您转至登陆页面！');</script>");
					    response.addHeader ("refresh", "0.1;URL=userLogin.jsp");
					}
				    else{//数据库中存在注册的用户名，则注册失败，返回注册页面
				    	out.println("<script>alert('用户名已被注册，请重新注册！');</script>");
					    response.addHeader ("refresh", "0.1;URL=register.jsp");	    	
				    }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    	}
	    	else{//两次密码不一致
	    		out.println("<script>alert('两次输入密码不一致，请重新注册！');</script>");
			    response.addHeader ("refresh", "0.1;URL=register.jsp");	 //返回注册页面
	    	}
	    }    
		out.println("</body></html>");
	}
}
