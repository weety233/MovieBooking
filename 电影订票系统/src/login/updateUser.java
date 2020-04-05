package login;
import java.sql.PreparedStatement;
//修改用户信息
public class updateUser {
	public updateUser(String userName, String realName, String cardNum,
			String telephone){
			int result=0;
		DB db=new DB();
		try{
			if(db.getConn()!=null){
				PreparedStatement pstmt;
				pstmt=db.getConn().prepareStatement("update userBiao set realName=? where userName=?");
				pstmt.setString(1, realName);//修改真实姓名
				pstmt.setString(2, userName);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update userBiao set cardNum=? where userName=?");
				pstmt.setString(1,cardNum);//修改身份证号
				pstmt.setString(2, userName);
				result=pstmt.executeUpdate();//执行
				pstmt=db.getConn().prepareStatement("update userBiao set telePhone=? where userName=?");
				pstmt.setString(1,telephone);//修改手机号码
				pstmt.setString(2, userName);
				result=pstmt.executeUpdate();//执行
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
