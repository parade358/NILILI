package com.nilili.member.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.nilili.common.JDBCTemplate;
import com.nilili.member.vo.Member;

public class MemberDao {

	private Properties prop = new Properties();

	// 기본생성자가 생성되는 시점(메소드호출시점)에 파일 읽어오기
	public MemberDao() {
		
		String filePath = MemberDao.class.getResource("/db/sql/member-mapper.xml").getPath();

		try {
			prop.loadFromXML(new FileInputStream(filePath));

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int insertMember(Connection conn, Member member) {
		
		PreparedStatement pstmt = null;
		int result =0;
		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPwd());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberBirth());
			pstmt.setString(5, member.getMemberGender());
			pstmt.setString(6, member.getMemberPhone());
			pstmt.setString(7, member.getMemberEmail());
			pstmt.setString(8, member.getMemberAddress());
			
			result = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTemplate.close(pstmt);
			
		}
		
		
		
		
		
		return result;
		
		
	}

	public int overLapCk(Connection conn, String idInput) {
		ResultSet rset =null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("overLapCk");
		int count=0; //아이디 있으면 1 없으면 0
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idInput);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				count = rset.getInt("COUNT");
				
				
				
			}
			
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return count;
		
	}

	public Member loginMember(Connection conn, String memberId, String memberPwd) {
		ResultSet rset = null;
		PreparedStatement pstmt =null;
		String sql= prop.getProperty("loginMember");
		Member member = null;
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, memberPwd);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				member = new Member(rset.getInt("MEMBER_NO")
									,rset.getString("MEMBER_ID")
									,rset.getString("MEMBER_PWD")
									,rset.getString("MEMBER_NAME")
									,rset.getString("MEMBER_BIRTH")
									,rset.getString("MEMBER_GENDER")
									,rset.getString("MEMBER_PHONE")
									,rset.getString("MEMBER_EMAIL")
									,rset.getString("MEMBER_ADDRESS")
									,rset.getString("MEMBER_SUBSCRIBE")
									,rset.getString("MEMBER_DESCRIPTION")
									,rset.getDate("MEMBER_REGI_DATE")
									,rset.getDate("MEMBER_MODI_DATE")
									,rset.getString("MEMBER_USE_YN"));
				
			}
	
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return member;
		
	}

	public String findId(Connection conn, String userName, String userEmail) {
		
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql=prop.getProperty("findId");
		String findId= null;
	
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, userEmail);
			rset =pstmt.executeQuery();
			
			if(rset.next()) {
				findId=rset.getString("MEMBER_ID");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
	return findId;
	}

	public int findPwd(Connection conn, String userId, String userName, String userEmail) {
	
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		int count=0;
		String sql = prop.getProperty("findPwd");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userName);
			pstmt.setString(3, userEmail);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				
				count = rset.getInt("COUNT");
				
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		
		return count;
		
		
	}

	
	
	public int updatePwd(Connection conn, String userId, String userName, String userEmail, String userPwd) {
		PreparedStatement pstmt = null;
		String sql=prop.getProperty("updatePwd");
		int result= 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userPwd);
			pstmt.setString(2, userId);
			pstmt.setString(3, userName);
			pstmt.setString(4, userEmail);
			
			result = pstmt.executeUpdate();
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			JDBCTemplate.close(pstmt);
		}
		return result;
		
		
	}

	public int SubscribeChange(Connection conn, String memberName, String memberNo) {
		
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("SubscribeChange");
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberName);
			pstmt.setString(2, memberNo);
			
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
