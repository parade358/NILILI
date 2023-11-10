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
		System.out.println("SQL Query: " + sql);
		System.out.println(r);

		return r;
	}

}
