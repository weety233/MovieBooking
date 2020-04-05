package login;
import java.sql.*;
//通过对”电影名称“的模糊搜索找到用户所查找的电影
public class searchMovie {
	public searchMovie(String search){//search是用户输入的关键字
		String createSql="select * from movieInfo where 电影名称 like'%"+search+"%' or 主演  like'%"+search+"%' or 导演  like'%"+search+"%' or 类型 like'%"+search+"%'";//模糊搜索语句
		DB db=new DB();//连接数据库
		try{
			if(db.getConn()!=null){//已连接数据库
				Statement stmt;
				stmt=db.getConn().createStatement();
				ResultSet rs=stmt.executeQuery(createSql);//执行模糊搜索
				while(rs.next()){
					System.out.print(rs.getString(2));//显示找到的电影名称
				}
			}
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection();
		}
	}
}
