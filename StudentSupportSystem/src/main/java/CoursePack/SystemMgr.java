package CoursePack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class SystemMgr {

	
	private DBConnectionMgr pool;

	public SystemMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 희망과목담기한 목록 보여주기 기능
	public Vector<CartBean> cartList(String[] splitCode) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		Vector<CartBean> vlist = new Vector<CartBean>();
	
		try {
			con = pool.getConnection();				
			sql = "select * from course_cart where CourseCode = ?";
			pstmt = con.prepareStatement(sql);
			
			for(int i = 0; i < splitCode.length; ++i) {
				
				pstmt.setString(1, splitCode[i]);

				rs = pstmt.executeQuery();
			
				while(rs.next()) {
					CartBean cartBean = new CartBean();
					
					cartBean.setGroup(rs.getString("Grouping"));
        			cartBean.setCourseType(rs.getString("CourseType"));
        			cartBean.setCourseCode(rs.getString("CourseCode"));
        			cartBean.setCourseTitle(rs.getString("CourseTitle"));
        			cartBean.setSection(rs.getString("Section"));
        			cartBean.setCredit(rs.getDouble("Credit"));
        			cartBean.setClassSchedule(rs.getString("ClassSchedule"));
        			cartBean.setOthers(rs.getString("Others"));
        			
					vlist.addElement(cartBean);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	// 희과담의 교과목검색 창에서 교과목 리스트 보여주기 기능
	public Vector<SearchBean> searchList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		Vector<SearchBean> vlist = new Vector<SearchBean>();
	
		try {
			con = pool.getConnection();				
			sql = "select * from course_search";
			pstmt = con.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			
				while(rs.next()) {
					SearchBean searchBean = new SearchBean();
					
					searchBean.setLanguage(rs.getString("Native"));
					searchBean.setGrade(rs.getString("Grade"));
					searchBean.setCourseType(rs.getString("CourseType"));
					searchBean.setCourseCode(rs.getString("CourseCode"));
					searchBean.setSection(rs.getString("Section"));
					searchBean.setCredit(rs.getDouble("Credit"));
					searchBean.setNumber(rs.getString("Number"));
					searchBean.setCourseTitle(rs.getString("CourseTitle"));
					searchBean.setProfName(rs.getString("ProfName"));
					searchBean.setClassSchedule(rs.getString("ClassSchedule"));
					searchBean.setOthers(rs.getString("Others"));
        			
					vlist.addElement(searchBean);
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}
