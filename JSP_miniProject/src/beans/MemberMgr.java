package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberMgr {
	DBConnectionMgr dbcmgr = new DBConnectionMgr();
	PreparedStatement pstmt;
	ResultSet rs;
	Connection con;
	
	public void insertMember(MemberBean mbean) {
		try {
			con = dbcmgr.getCon();
			
			String sql = "insert into pmember values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = dbcmgr.con.prepareStatement(sql);
			
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPwd());
			pstmt.setString(3, mbean.getName());
			pstmt.setString(4, mbean.getGender());
			pstmt.setString(5, mbean.getEmail());
			pstmt.setString(6, mbean.getBirth());
			pstmt.setString(7, mbean.getZipcode());
			pstmt.setString(8, mbean.getAddress());
			pstmt.setString(9, mbean.getHobby());
			pstmt.setString(10, mbean.getJob());
			
			pstmt.executeUpdate();
			
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkId(String id) {
		String sql = null;
		boolean flag = false;
		try {
			con = dbcmgr.getCon();
			sql = "select id from pmember where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean loginMember(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try { 
			con = dbcmgr.getCon();
			sql = "select id from pmember where id=? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) { 
			e.printStackTrace(); 
		} 
		return flag; 
	}
}


