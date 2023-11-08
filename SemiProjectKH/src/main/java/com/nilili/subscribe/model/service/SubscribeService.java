package com.nilili.subscribe.model.service;

import java.sql.Connection;

import com.nilili.common.JDBCTemplate;
import com.nilili.subscribe.model.dao.SubscribeDao;

public class SubscribeService {

	public int SubscribeInsert(String memberNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result=new SubscribeDao().SubscribeInsert(conn,memberNo);

		if(result>0) {
			
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

}
