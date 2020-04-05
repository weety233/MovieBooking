package login;

import java.sql.PreparedStatement;
//通过对“电影编号“的查找删除该电影记录
public class deleteMovie {
	public deleteMovie(String movieNo){//movieNo为电影编号
			int result=0;
		String createSql="delete from movieInfo where 电影编号=?";//数据库删除语句
		DB db=new DB();//连接数据库
		try{
			if(db.getConn()!=null){//已经连接数据库
				PreparedStatement pstmt;
				pstmt=db.getConn().prepareStatement(createSql);//预处理
				pstmt.setString(1, movieNo);//找到movieNo的记录
				result=pstmt.executeUpdate();//执行SQL语句
				if (pstmt!=null){
					pstmt.close();
					pstmt=null;
				}
			}
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection();
		}
	}
}
