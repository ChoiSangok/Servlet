package service.impl;

import javax.servlet.http.HttpServletRequest;

import dao.face.MemberDao;
import dao.impl.MemberDaoImpl;
import dto.Member;
import service.face.MemberService;

public class MemberServiceImpl implements MemberService {
	
	//memberDao 객체생성
	private MemberDao memberDao = new MemberDaoImpl();

	@Override
	public Member getParam(HttpServletRequest req) {
		
		//요청 정보를 저장할 객체 생성
		Member member = new Member();
		
		//userno
		// 사용자가 전달하는 값이 아님 - 여기에서 처리할 필요 없음
		// db에서 member_seq 를 이용하여 생성하는 값
		
		
		//userid - VARCHAR2
		member.setUserid(req.getParameter("userid"));
		
		//nick - VARCHAR2
		member.setNick(req.getParameter("nick"));
		
		
		//email - VARCHAR2
		member.setEmail(req.getParameter("email"));
		
		return member;
	}

	@Override
	public Member join(Member member) {
	
		//db이용
		//1. member_seq 의 다음 nextval 값을 조회하기
//		member 이용
//		select member_seq.nextval() from dual
		
		int next=memberDao.selectNextUserno();
		System.out.println("memberservice: " + next);
		
//		2. 얻어온 시퀀스 값을 member객체에 대입
		
		member.setUserno(next);
		System.out.println("memberservice member with userno - "+ member);

//		3. member객체를 db에 insert		
		memberDao.insert(member);
//		
//		4. member 객체 반환
		return member;
	}
	
	
	
	
	
	

}
