<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ tag import="login.DB" %>
<%@ attribute name="operat" required="ture" %>
<%  System.out.print("operat="+operat);
      DB db=new DB();
      ResultSet rs=null;
	  PreparedStatement pstmt;
      pstmt = db.getConn().prepareStatement("select 电影名称,导演,类型  from movieInfo");
	  rs = pstmt.executeQuery();
	  out.print("<Select name='movie'>");
	  while(rs.next()){	
		out.print("<Option value='"+rs.getString(1)+"'>"+rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"</Option>");
	}    
%>
