package login;

import java.sql.PreparedStatement;
//通过对“电影编号“的查找删除该电影记录
public class updateMovie {
	public updateMovie(String movieNo,String movieName,String director,String actor,String movieIntr,String time,String type,String mlong,String state,String money){//movieNo为电影编号
			int result=0;
		String createSql="update movieInfo set 电影名称  where 电影编号=?";//数据库删除语句
		DB db=new DB();//连接数据库
		try{
			if(db.getConn()!=null){//已经连接数据库
				PreparedStatement pstmt;
				pstmt=db.getConn().prepareStatement("update movieInfo set 电影名称=?  where 电影编号=?");
				pstmt.setString(1, movieName);//修改电影名称
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 导演=?  where 电影编号=?");
				pstmt.setString(1, director);//修改导演
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 主演=?  where 电影编号=?");
				pstmt.setString(1, actor);//修改主演
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 电影简介=?  where 电影编号=?");
				pstmt.setString(1, movieIntr);//修改电影简介
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 上映时间=?  where 电影编号=?");
				pstmt.setString(1, time);//修改上映时间
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 类型=?  where 电影编号=?");
				pstmt.setString(1, type);//修改类型
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 片长=?  where 电影编号=?");
				pstmt.setString(1, mlong);//修改片长
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 状态=?  where 电影编号=?");
				pstmt.setString(1, state);//修改状态
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update movieInfo set 钱=?  where 电影编号=?");
				pstmt.setString(1, money);//修改价钱
				pstmt.setString(2, movieNo);
				result=pstmt.executeUpdate();//执行
			}
		}catch (Exception e){
			e.printStackTrace();
		}finally{
			db.closeConnection();
		}
	}
}
