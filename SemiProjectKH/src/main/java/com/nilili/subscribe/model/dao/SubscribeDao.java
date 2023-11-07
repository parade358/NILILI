package com.nilili.subscribe.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.nilili.common.JDBCTemplate;
import com.nilili.member.dao.MemberDao;

public class SubscribeDao {
	
	private Properties prop = new Properties();

	// 기본생성자가 생성되는 시점(메소드호출시점)에 파일 읽어오기
	public SubscribeDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/subscribe-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(filePath));

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int SubscribeInsert(Connection conn, String memberNo) {
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("SubscribeInsert");
		int result = 0;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberNo);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
		}
		
		return result;
	}

}
