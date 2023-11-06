package com.nilili.member.service;

import java.sql.Connection;

import com.nilili.common.JDBCTemplate;
import com.nilili.member.dao.MemberDao;
import com.nilili.member.vo.Member;

public class MemberService {

	public int insertMember(Member member) {
		Connection conn = JDBCTemplate.getConnection();

		int result = new MemberDao().insertMember(conn, member);

		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}

		return result;

	}

	public int overLapCk(String idInput) {
		Connection conn = JDBCTemplate.getConnection();

		int count = new MemberDao().overLapCk(conn, idInput);

		JDBCTemplate.close(conn);

		return count;

	}

	public Member loginMember(String memberId, String memberPwd) {
		Connection conn = JDBCTemplate.getConnection();

		Member member = new MemberDao().loginMember(conn, memberId, memberPwd);

		JDBCTemplate.close(conn);

		return member;
	}

	public String findId(String userName, String userEmail) {

		Connection conn = JDBCTemplate.getConnection();

		String findId = new MemberDao().findId(conn, userName, userEmail);

		JDBCTemplate.close(conn);

		return findId;

	}

	public int findPwd(String userId, String userName, String userEmail) {
			Connection conn = JDBCTemplate.getConnection();
		
			
		int count=	new MemberDao().findPwd(conn,userId,userName,userEmail);
		
		JDBCTemplate.close(conn);
		return count;
	}

	public int updatePwd(String userId, String userName, String userEmail, String updatePwd) {
	
		Connection conn = JDBCTemplate.getConnection();
		
		int result=  new MemberDao().updatePwd(conn,userId,userName,userEmail,updatePwd);
		
		if(result>0) {
			
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
			
		}
		
		return result;
		
	}
	
public int SubscribeChange(String memberName, String memberNo) {
		
		Connection conn = JDBCTemplate.getConnection();
		
			int result=new MemberDao().SubscribeChange(conn,memberName,memberNo);
	
			if(result>0) {
				
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.rollback(conn);
			}
			
			JDBCTemplate.close(conn);
			
			return result;
	}

	
	
	
	


}
