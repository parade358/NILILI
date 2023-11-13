package com.nilili.recommend.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.nilili.common.JDBCTemplate;
import com.nilili.recommend.model.vo.Recommend;


public class RecommendDao {
	private Properties prop = new Properties();
	
	public RecommendDao() {

		String filePath = RecommendDao.class.getResource("/db/sql/recommend-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	//PLACE DB값 조회해오는 것
	public Recommend resultRecommend(Connection conn, int point) {
		Recommend r = null;
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		//JDBCTemplate의 prop이 가져와지지 않는 현상으로 아래와 같이 작성 
		String sql = prop.getProperty("resultRecommend");

		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, point);
			
			rset = pstmt.executeQuery();
			

			while(rset.next()) {
				r = new Recommend(
									rset.getInt("PL_NO"),
									rset.getString("PL_NAME"),
									rset.getString("PL_ADDRESS"),
									rset.getString("PL_INFO"),
									rset.getString("USE_YN")
						);
			}

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
			
		}
		
//		System.out.println("SQL Query: " + sql);
//		System.out.println(r);

		return r;
	}

	//TASTE UPDATE
//	public int updateTaste(Connection conn, Recommend r) {
//		
//		int result = 0;
//		PreparedStatement pstmt = null;
//		String sql = prop.getProperty("updateTaste");
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, r.getTaste1());
//			pstmt.setInt(2, r.getTaste2());
//			pstmt.setInt(3, r.getTaste3());
//			pstmt.setInt(4, r.getMemberNo());
//			
//			result = pstmt.executeUpdate();
//			
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally {
//			JDBCTemplate.close(pstmt);
//		}
//		
//		
//		
//		return result;
//	}

	public int updateTaste(Connection conn, int taste1, int taste2, int taste3, int memberNo1) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateTaste");
		Recommend r = new Recommend();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getTaste1());
			pstmt.setInt(2, r.getTaste2());
			pstmt.setInt(3, r.getTaste3());
			pstmt.setInt(4, r.getMemberNo());
			
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
