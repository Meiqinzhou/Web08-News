package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sql.DBUtil;
import user.Student;

public class TestDaoImpl implements TestDao{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	public TestDaoImpl(Connection conn) {
		this.conn = conn;
	}
	
	@Override
	public List<Student> getAllStudent() {
		// TODO Auto-generated method stub
		
		List<Student> list = new ArrayList();
		String sql = "select * from student";
		try {
			this.pstmt = this.conn.prepareStatement(sql);
			ResultSet rs = this.pstmt.executeQuery();
			while(rs.next()) {
				Student s = new Student();
				s.setTitle(rs.getString("title"));
				s.setContent(rs.getString("content"));
				s.setTime(rs.getInt("time"));
				list.add(s); 				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
