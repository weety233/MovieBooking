package login;
import java.sql.PreparedStatement;
//添加电影记录
public class insertMovie {
	public insertMovie(String movieNo,String movieName,String director,String actor,String movieIntr,String time,String type,String mlong,String state,String money){
		int result=0;
	String createSql="insert into movieInfo values (?,?,?,?,?,?,?,?,?,?)";//数据库插入语句
	DB db=new DB();//连接数据库
	try{
		if(db.getConn()!=null){//已经连接数据库
			PreparedStatement pstmt;
			pstmt=db.getConn().prepareStatement(createSql);
			pstmt.setString(1, movieNo);//设置电影编号
		      pstmt.setString(2, movieName);//设置电影名称
			  pstmt.setString(3, director);//设置导演
			  pstmt.setString(4, actor);//设置主演
			  pstmt.setString(5, movieIntr);//设置电影简介
			  pstmt.setString(6, time);//设置上映时间
			  pstmt.setString(7, type);//设置类型
			  pstmt.setString(8, mlong);//设置片长
			  pstmt.setString(9, state);//设置状态
			  pstmt.setString(10, money);//设置状态
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
