package com.nilili.member.service;

import java.sql.Connection;

import com.nilili.common.JDBCTemplate;
import com.nilili.member.dao.MemberDao;
import com.nilili.member.vo.Member;
import com.nilili.subscribe.model.vo.Subscribe;

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

		int count = new MemberDao().findPwd(conn, userId, userName, userEmail);

		JDBCTemplate.close(conn);
		return count;
	}

	public int updatePwd(String userId, String userName, String userEmail, String updatePwd) {

		Connection conn = JDBCTemplate.getConnection();

		int result = new MemberDao().updatePwd(conn, userId, userName, userEmail, updatePwd);

		if (result > 0) {

			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);

		}

		return result;

	}

	public int SubscribeChange(String memberName, String memberNo) {

		Connection conn = JDBCTemplate.getConnection();

		int result = new MemberDao().SubscribeChange(conn, memberName, memberNo);

		if (result > 0) {

			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}

		JDBCTemplate.close(conn);

		return result;
	}

	
	public int overLapCkEmail(String email) {
		
		Connection conn = JDBCTemplate.getConnection();
		
	int result = new MemberDao().overLapCkEmail(conn,email);
		
		JDBCTemplate.close(conn);
		
		return result;
		
		

	}
	
	
	public Member updateMember(Member m) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().updateMember(conn,m);
		
		Member updateMem = null;
		
		if(result>0) {
			JDBCTemplate.commit(conn);
			updateMem = new MemberDao().selectMember(conn,m.getMemberId());
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		
		
		return updateMem;
	}

	public Member mypageUpdatePwd(int memberNo, String memberPwd, String updatePwd) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new MemberDao().mypageUpdatePwd(conn, memberNo, memberPwd, updatePwd);
		Member mpUpdateMem =null; //회원정보 담을 변수
		if(result>0) {
			JDBCTemplate.commit(conn);
			mpUpdateMem = new MemberDao().selectMember2(conn,memberNo);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return mpUpdateMem;
	}

//주석
	public int mypageAbandon(String memberName, String memberNo) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result=new MemberDao().mypageAbandon(conn,memberName,memberNo);

		if(result>0) {
			
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}


	public Subscribe findSubcribe(int memberNo) {
	
		Connection conn = JDBCTemplate.getConnection();
		
	Subscribe sub=	new MemberDao().findSubcribe(conn,memberNo);
		
	JDBCTemplate.close(conn);
	
	return sub;
		
	public int memberDelete(String memberName, String memberNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().memberDelete(conn,memberName,memberNo);
		if(result>0){
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		return result;
	}


	}


