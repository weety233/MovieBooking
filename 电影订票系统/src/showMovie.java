
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import login.DB;

public class showMovie extends HttpServlet{
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
	}
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=GB2312");
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
	    ResultSet rs=null;
	    PreparedStatement pstmt;
		DB db=new DB();
		try{
			String operat = null;
			out.print("<input type='radio' name='m' value='添加影片' checked='ok'>添加影片");
			out.print(" <input type='radio' name='m' value='删除影片'>删除影片");
			out.print("<input type='radio' name='m' value='修改影片'>修改影片");
			operat="ll";
			operat=request.getParameter("m");
			out.print("operat="+operat);
			pstmt = db.getConn().prepareStatement("select 电影名称  from movieInfo");
	        rs = pstmt.executeQuery();
	        out.print("<br><br><br><Select name='movie'>");
		    while(rs.next()){	
		    	//out.print("<Option value='左耳'>左耳</Option>");
		        out.print("<Option value='"+rs.getString(1)+"'>"+rs.getString(1)+"</Option>");// 增加数据
		    }
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			
		}
	}
}
