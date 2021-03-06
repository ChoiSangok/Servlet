package web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import web.dao.face.MemberDao;
import web.dbutil.JDBCTemplate;
import web.dto.Memberkh;

public class MemberDaoImpl implements MemberDao {

	private Connection conn = null; //DB연결 객체
	private PreparedStatement ps = null; //SQL수행 객체
	private ResultSet rs = null; //SQL조회 결과 객체
	
	@Override
	public int selectCntMemberByUseridUserpw(Memberkh member) {
		
		//DB연결 객체
		conn = JDBCTemplate.getConnection();
		
		//SQL 작성
		String sql = "";
		sql += "SELECT count(*) FROM memberkh";
		sql += " WHERE 1=1";
		sql += "	AND userid = ?";
		sql += "	AND userpw = ?";
		
		//결과 저장할 변수
		int cnt = -1;
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			
			ps.setString(1, member.getUserid());
			ps.setString(2, member.getUserpw());
			
			rs = ps.executeQuery(); //SQL 수행 및 결과집합 저장
			
			//조회 결과 처리
			while(rs.next()) {
				cnt = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//최종 결과 반환
		return cnt;
	}

	@Override
	public Memberkh selectMemberByUserid(Memberkh member) {
		//DB연결 객체
		conn = JDBCTemplate.getConnection();
		
		//SQL 작성
		String sql = "";
		sql += "SELECT * FROM memberkh";
		sql += " WHERE 1=1";
		sql += "	AND userid = ?";
		
		//조회결과를 저장할 객체
		Memberkh result = null;
		
		try {
			ps = conn.prepareStatement(sql); //SQL수행 객체
			
			ps.setString(1, member.getUserid());
			
			rs = ps.executeQuery(); //SQL 수행 및 결과집합 저장
			
			//조회 결과 처리
			while(rs.next()) {
				result = new Memberkh();
				
				result.setUserid( rs.getString("userid") );
				result.setUserpw( rs.getString("userpw") );
				result.setUsernick( rs.getString("usernick") );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//DB객체 닫기
			JDBCTemplate.close(rs);
			JDBCTemplate.close(ps);
		}
		
		//최종 결과 반환
		return result;
	}

	@Override
	public void insert(Memberkh member) {
		
		//DB연결 객체
		conn = JDBCTemplate.getConnection();

		//쿼리작성
		String sql = "";
		sql += "INSERT INTO memberkh ( userid, userpw, usernick )";
		sql += " VALUES( ?, ?, ? )";
		
		try {
			//DB작업
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, member.getUserid());
			ps.setString(2, member.getUserpw());
			ps.setString(3, member.getUsernick());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				//DB객체 닫기
				if(ps!=null)	ps.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
