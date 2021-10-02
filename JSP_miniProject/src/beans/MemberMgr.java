package beans;

public class MemberMgr {
	DBConnectionMgr dbcmgr = new DBConnectionMgr();
	
	public void insertMember(MemberBean mbean) {
		try {
			dbcmgr.getCon();
			String sql = "insert into pmember values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			dbcmgr.pstmt = dbcmgr.con.prepareStatement(sql);
			
			dbcmgr.pstmt.setString(1, mbean.getId());
			dbcmgr.pstmt.setString(2, mbean.getPwd());
			dbcmgr.pstmt.setString(3, mbean.getName());
			dbcmgr.pstmt.setString(4, mbean.getGender());
			dbcmgr.pstmt.setString(5, mbean.getEmail());
			dbcmgr.pstmt.setString(6, mbean.getBirth());
			dbcmgr.pstmt.setString(7, mbean.getZipcode());
			dbcmgr.pstmt.setString(8, mbean.getAddress());
			dbcmgr.pstmt.setString(9, mbean.getHobby());
			dbcmgr.pstmt.setString(10, mbean.getJob());
			
			dbcmgr.pstmt.executeUpdate();
			
			dbcmgr.con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
