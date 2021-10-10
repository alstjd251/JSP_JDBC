package beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

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
		boolean flag = false;
		
		try {
			con = dbcmgr.getCon();
			String sql = "select id from pmember where id = ?";
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
		boolean flag = false;
		
		try { 
			con = dbcmgr.getCon();
			String sql = "select id from pmember where id=? and pwd=?";
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
	
	public MemberBean getMember(String id) {
		MemberBean mbean = new MemberBean();
		
		try {
			con = dbcmgr.getCon();
			String sql = "select * from pmember where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mbean.setId(rs.getString("id"));
				mbean.setPwd(rs.getString("pwd"));
				mbean.setName(rs.getString("name"));
				mbean.setGender(rs.getString("gender"));
				mbean.setBirth(rs.getString("birth"));
				mbean.setEmail(rs.getString("email"));
				mbean.setZipcode(rs.getString("zipcode"));
				mbean.setAddress(rs.getString("address"));
				mbean.setHobby(rs.getString("hobby"));
				mbean.setJob(rs.getString("job"));
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
		} 
		return mbean;
	}
	
	public boolean updateMember(MemberBean mbean) {
		boolean flag = false;
		
		try {
			con = dbcmgr.getCon();
			String sql = "update pmember set pwd = ?, name = ?, gender = ?, birth = ?, email = ?, zipcode = ?, address = ?, hobby = ?, job = ? where id = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mbean.getPwd());
			pstmt.setString(2, mbean.getName());
			pstmt.setString(3, mbean.getGender());
			pstmt.setString(4, mbean.getBirth());
			pstmt.setString(5, mbean.getEmail());
			pstmt.setString(6, mbean.getZipcode());
			pstmt.setString(7, mbean.getAddress());
			pstmt.setString(8, mbean.getHobby());
			pstmt.setString(9, mbean.getJob());
			pstmt.setString(10, mbean.getId());
			if(pstmt.executeUpdate() == 1) {
				flag = true;
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
		} 
		return flag;
	}
	
	public Vector<ZipBean> zipcodeRead(String area3) {
		Vector<ZipBean> vzip = new Vector<ZipBean>();
		
		try {
			con = dbcmgr.getCon();
			String sql = "select * from pzipcode where area3 like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + area3 + "%");
			rs = pstmt.executeQuery();

			while(rs.next()) {
				ZipBean zbean = new ZipBean(); 
				zbean.setZipcode(rs.getString(1));
				zbean.setArea1(rs.getString(2));
				zbean.setArea2(rs.getString(3));
				zbean.setArea3(rs.getString(4)); 
				vzip.addElement(zbean);
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
		} 
		return vzip;
	}
	public void deleteMember(String id) {
		try {
			con = dbcmgr.getCon();
			String sql = "delete from pmember where id = ?";
			pstmt = dbcmgr.con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			pstmt.execute();
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}


