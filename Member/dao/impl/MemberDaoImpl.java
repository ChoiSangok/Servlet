package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.face.MemberDao;
import dbutil.DBConn;
import dto.Member;

public class MemberDaoImpl implements MemberDao {

	private Connection conn=null; //db연결객체
	private PreparedStatement ps= null; //sql 수행객체
	private ResultSet rs= null; //결과집합

	@Override
	   public int selectNextUserno() {
	     
	      conn= DBConn.getConnection();
	      String sql="SELECT member_seq.nextval FROM dual";
	      int nextval =0; //조회된 시퀀스값
	      try {
	         ps=conn.prepareStatement(sql);
	         rs=ps.executeQuery();
	         
	         while(rs.next()) {
	            nextval=rs.getInt("nextval");
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         try {
	            if(rs!=null)rs.close();
	            if(ps!=null)ps.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      
	      }
	   
	      return nextval;
	   }
	
	
	//삽입 - insert
	@Override
	public void insert(Member member) {
		
	      conn= DBConn.getConnection(); //db연결
	      String sql="insert into member (userno,userid,nick,email) values (?,?,?,? )";

	      try {
	         ps=conn.prepareStatement(sql);
	         ps.setInt(1, member.getUserno());
	         ps.setString(2, member.getUserid());
	         ps.setString(3, member.getNick());
	         ps.setString(4, member.getEmail());
	         
	         ps.executeUpdate();
	         

	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         try {
	            if(ps!=null)ps.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      
	      }

	}

}
