package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.face.FileDao;
import dbutil.JDBCTemplate;
import dto.UploadFile;

public class FileDaoImpl implements FileDao{

   // OJDBC연결 객체
   private Connection conn=null;  //DB연결
   private PreparedStatement ps= null; // SQL 연결
   private ResultSet rs= null; // 결과값저장변수
   
   @Override
   public void insert(UploadFile uploadFile) {
      
      conn=JDBCTemplate.getConnection();//DB 연결
      
      //SQL 작성
      
      String sql = "";
      sql +=" INSERT INTO uploadfile (fileno,origin_name, stored_name)";
      sql +=" VALUES (uploadfile_seq.nextval,?,?)";
      
      try {
         ps= conn.prepareStatement(sql);//SQL수행객체 얻기
         
         //파일업로드 정보삽입
         ps.setString(1, uploadFile.getOriginName());
         ps.setString(2, uploadFile.getStoredName());
         
         //SQl 수행
         ps.executeUpdate();
         
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         JDBCTemplate.close(ps);//ps 자원해제
      }
      
      
      
      
      
   }

   
   @Override
   public List<UploadFile> selectAll() {
	
	   conn=JDBCTemplate.getConnection();//DB연결
	   
	   //sql선언
	   String sql="select * from UploadFile";
	   
	   //담을 list 선언
	   List<UploadFile> list= new ArrayList<>();
	   
	   try {
		
		ps = conn.prepareStatement(sql); //sql 객체 선언
		rs = ps.executeQuery(); //업데이트
		
		//sql전체 조회하기
		while(rs.next()) {
			//upload 파일객체
			UploadFile uploadFile = new UploadFile();
			
			//조회 결과 담기
			uploadFile.setFileno(rs.getInt("Fileno"));
			uploadFile.setOriginName(rs.getString("Origin_Name"));
			uploadFile.setStoredName(rs.getString("Stored_Name"));
			
			
			list.add(uploadFile);
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally { //객체 반환
		JDBCTemplate.close(ps);//
		JDBCTemplate.close(rs);//
	}
	   //결과 리스트 반환
	   return list;
   }


   @Override
   public int insertFile(Connection conn, UploadFile up) {
	  
	   conn=JDBCTemplate.getConnection();//DB연결
	   
	   //sql 쿼리 작성
		String sql = "";
		sql += "INSERT INTO uploadfile ( fileno, origin_name, stored_name )";
		sql += " VALUES( uploadfile_seq.nextval, ?, ? )";
	   
	   int res=0;
	   

	   List<UploadFile> list= new ArrayList<>();
	   
	   try {
		ps = conn.prepareStatement(sql);
		
		ps.setString(1, up.getOriginName() );
		ps.setString(2, up.getStoredName());

		res=ps.executeUpdate(); //sql 수행 및 결과 저장
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	   //insert 수행 결과 반환
	   return res;
   }
   
   
   

}





