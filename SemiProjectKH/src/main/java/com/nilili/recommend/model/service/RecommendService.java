package com.nilili.recommend.model.service;

import java.sql.Connection;

import com.nilili.common.JDBCTemplate;
import com.nilili.recommend.model.dao.RecommendDao;
import com.nilili.recommend.model.vo.Recommend;

public class RecommendService {

	public Recommend resultRecommend(int point) {
		//JS에서 포인트를 받아와 DB의 결과값을 JS로 다시 보내기
		
		Connection conn = JDBCTemplate.getConnection();
		
		Recommend r = new RecommendDao().resultRecommend(conn, point);
		
		
		JDBCTemplate.close(conn);
		
		return r;
	}

}
