package ch11;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DriverTest {
	
	private Connection con;

	public void UserDAO() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/members?useSSL=false&serverTimezone=Asia/Seoul","root","1234");
				System.out.println("Success");
				}catch(SQLException ex) {System.out.println("SQLException"+ex);}
				catch(Exception ex) { ex.printStackTrace();}
			}
		
	public int registerCheck(String userID) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL="SELECT * FROM USER WHERE userID = ?";
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				return 0; //이미 존재하는 회원
			}
			else {
				return 1;// 가입가능한 회원 아이디
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt!=null) pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1;//데이터베이스 오류
	}

	public int register(UserDTO user) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL="INSERT INTO USER VALUES (?,?,?,?,?,?,?)";
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1,user.getUserID());
			pstmt.setString(2,user.getUserPWD());
			pstmt.setString(3,user.getUserName());
			pstmt.setString(4,user.getUserGender());
			pstmt.setInt(5,user.getUserAge());
			pstmt.setString(6,user.getUserPhone());
			pstmt.setString(7,user.getUserEmail());
			return pstmt.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt!=null) pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return -1;//데이터베이스 오류
	}

}



