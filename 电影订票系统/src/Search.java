import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

import login.DB;
import login.insertMovie;
import login.searchMovie;;
public class Search extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		String search=request.getParameter("search");
		if(search!=null){
			try{byte b[]=search.getBytes("iso-8859-1");
			search=new String(b);}catch(Exception e){}
		
			boolean exist=false;
			String createSql="select * from movieInfo where 电影名称 like'%"+search+"%' or 主演  like'%"+search+"%'";//模糊搜索语句
			DB db=new DB();//连接数据库
			try{
				if(db.getConn()!=null){//已连接数据库
					Statement stmt;
					stmt=db.getConn().createStatement();
					ResultSet rs=stmt.executeQuery(createSql);//执行模糊搜索
					while(rs.next()){
						exist=true;
						String movieNo=rs.getString("电影编号");
						String movieName=rs.getString("电影名称");
						String director=rs.getString("导演");
						String actor=rs.getString("主演");
						String time=rs.getString("上映时间");
						String type=rs.getString("类型");
						String mlong=rs.getString("片长");
						out.print("<table border=1><tr>");
						out.print("<td><a href='movieInfo.jsp?name="+movieNo+"'><img src='movie/"+movieNo+".jpg' width='200' height='300' align='left'></img></a></td>");//显示找到的电影
						out.println("<td width='500' height='210'>"+movieName);
						out.println("<br>导演："+director);
						out.println("<br>主演："+actor);
						out.println("<br>类型："+type);
						out.println("<br>上映时间："+time);
						out.println("<br>片长："+mlong);
						out.print("</tr></table>");
					}
				}
			}catch (Exception e){
				e.printStackTrace();
			}finally{
				db.closeConnection();
			}
		}
		else{
			out.println("<script>alert('您还未输入关键字！');</script>");//弹框
		    response.addHeader ("refresh", "0.1;URL=search.jsp"); //转至搜索页面
		}
		out.println("<html><body>");
		out.println("");
		out.println("</body></html>");
	}	

}
