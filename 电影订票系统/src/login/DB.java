package login;
import java.sql.*;
public class DB {
	
	private Connection con=null;
	private Statement stmt=null;
	public ResultSet rs=null;
	public PreparedStatement pstmt=null;
	public DB(){}
	/**数据库连接方法，获得Connection对象**/
	public Connection getConn(){
		if(con==null){
			getConnection();
		}
		return con;	
	}
	/**数据库连接方法,获得Statement对象**/
	public void getConnection()
	{
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");      //加载JDBC驱动程序
			String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=database";
	        String user="sa";
	        String password="";
	        con=DriverManager.getConnection(url,user,password);   //创建Connection对象con
		      System.out.print("数据库连接成功");
		}
		catch(Exception e){
			e.getStackTrace(); System.out.print("数据库连接不成功");
		}
	}
	
	/**关闭连接**/	
	public void closeConnection(){
		try{
			if(rs!=null)
			{rs.close();
			 rs=null;
			 }
			if(stmt!=null)
			{stmt.close();
			 stmt=null;
			 }
			if(con!=null)
			{con.close();
			 con=null;
			 }
			if(pstmt!=null)
			{pstmt.close();
			pstmt=null;
			 }
		}catch(SQLException e){
			e.printStackTrace();
		}
	} 
}

