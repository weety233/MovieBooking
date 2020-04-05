package login;
import java.sql.PreparedStatement;
//在数据库添加用户记录
public class insertUser {
	public insertUser(String userName, String realName, String cardNum,
			String telephone, String password){
			int result=0;
		String createSql="insert into userBiao values (?,?,?,?,?)";//数据库插入语句
		DB db=new DB();//连接数据库
		try{
			if(db.getConn()!=null){//已连接数据库
				PreparedStatement pstmt;
				pstmt=db.getConn().prepareStatement(createSql);
				pstmt.setString(1, userName);//设置用户名
				pstmt.setString(2,realName);//设置真实姓名
				pstmt.setString(3,cardNum);//设置身份证号
				pstmt.setString(4,telephone);//设置手机号码
				pstmt.setString(5,password);//设置密码
				result=pstmt.executeUpdate();//执行插入语句
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
