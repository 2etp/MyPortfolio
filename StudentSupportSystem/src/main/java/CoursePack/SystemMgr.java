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

	public Vector<CourseBean> courseList(String[] splitCode) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CourseBean> vlist = new Vector<CourseBean>();
	
		try {
			con = pool.getConnection();				
			sql = "select * from course_cart where CourseCode = ?";
			pstmt = con.prepareStatement(sql);
			
			for(int i = 0; i < splitCode.length; ++i) {
				
				pstmt.setString(1, splitCode[i]);

				rs = pstmt.executeQuery();
			
				while(rs.next()) {
					CourseBean cartBean = new CourseBean();
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
}
