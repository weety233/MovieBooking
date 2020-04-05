import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import login.insertMovie;
import login.DB;
//添加电影记录的servlet
public class addMovie extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		String movieNo=request.getParameter("movieNo");//获取电影编号
		   String movieName=request.getParameter("movieName");byte b2[]=movieName.getBytes("iso-8859-1");movieName=new String(b2);//获取电影名称并进行汉子处理
		   String director=request.getParameter("director");byte b3[]=director.getBytes("iso-8859-1");director=new String(b3);//获取导演并进行汉子处理
		   String actor=request.getParameter("actor");byte b4[]=actor.getBytes("iso-8859-1");actor=new String(b4);//获取主演并进行汉子处理
		   String movieIntr=request.getParameter("movieIntr");byte b5[]=movieIntr.getBytes("iso-8859-1");movieIntr=new String(b5);//获取电影简介并进行汉子处理	
		   String time=request.getParameter("time");//获取上映时间
		   String type=request.getParameter("type");byte b7[]=type.getBytes("iso-8859-1");type=new String(b7);//获取类型并进行汉子处理	
		   String mlong=request.getParameter("mlong");//获取片长
		   String money=request.getParameter("money");byte b8[]=money.getBytes("iso-8859-1");money=new String(b8);//获取价钱并进行汉子处理
		   String state=request.getParameter("state");byte b9[]=state.getBytes("iso-8859-1");state=new String(b9);//获取状态并进行汉子处理
	   
		   HttpSession session=request.getSession(true);//定义一个session用于存储数据
		   session.setAttribute("movieNo",movieNo);
		   session.setAttribute("movieName",movieName);
		   session.setAttribute("director",director);
		   session.setAttribute("actor",actor);
		   session.setAttribute("movieIntr",movieIntr);
		   session.setAttribute("time",time);
		   session.setAttribute("type",type);
		   session.setAttribute("mlong",mlong);
		   session.setAttribute("state",state);
		   session.setAttribute("money",money);
		   if(movieNo==""||movieName==""||director==""||actor==""||movieIntr==""||time==""||type==""||mlong==""||state==""){//如果填写的信息不完全				
				out.println("<script>alert('信息未填写完整，为您转至输入信息页面！');</script>");//弹框
			    response.addHeader ("refresh", "0;URL=inputMovie.jsp"); //转至输入信息界面并清空所有表单
			}
		   else{//如果电影信息填写完整
			   try {PreparedStatement pstmt=null;DB db=new DB();//连接数据库
			   //以下是查找数据库是否已经存在管理员输入的电影编号
			  pstmt = db.getConn().prepareStatement("select * from movieInfo where 电影编号=?");
			  pstmt.setString(1,movieNo);
			  ResultSet rs = pstmt.executeQuery();
			  String str="str";
			  while(rs.next()){
				  str=null;
			  }
			  if(str==null){//如果数据库已经存在管理员输入的电影编号
		      out.println("<script>alert('电影编号已存在，添加失败！');</script>");//弹框
				response.addHeader ("refresh", "0;URL=inputMovie.jsp"); //转至输入电影信息页面
		      }
		      else{//如果数据库不存在管理员输入的电影编号
		    	  System.out.print("money="+money);
		    	  insertMovie im=new insertMovie(movieNo,movieName,director,actor,movieIntr,time,type,mlong,state,money);//插入新的电影记录
			      RequestDispatcher d=request.getRequestDispatcher("addmovie.jsp");//转至下一个页面		   				
			      try {d.forward(request,response);
			    	} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();}}
		          }catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
		   }
		out.println("</body></html>");
	}
}
