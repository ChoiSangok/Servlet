package web.service.impl;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import web.dao.face.MemberDao;
import web.dao.impl.MemberDaoImpl;
import web.dto.Memberkh;
import web.service.face.MemberService;

public class MemberServiceImpl implements MemberService {

	//MemberDao 객체
	private MemberDao memberDao = new MemberDaoImpl();
	
	@Override
	public Memberkh getLoginMember(HttpServletRequest req) {
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		Memberkh member = new Memberkh();
		
		member.setUserid( req.getParameter("userid") );
		member.setUserpw( req.getParameter("userpw") );
		
		return member;
	}

	@Override
	public boolean login(Memberkh member) {
		
		if( memberDao.selectCntMemberByUseridUserpw(member) > 0 ) {
			return true; //로그인 성공
		} else {
			return false; //로그인 실패
		}
	}

	@Override
	public Memberkh info(Memberkh member) {
		return memberDao.selectMemberByUserid(member);
	}

	@Override
	public Memberkh getJoinMember(HttpServletRequest req) {
		
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		Memberkh member = new Memberkh();
		
		member.setUserid(req.getParameter("userid"));
		member.setUserpw(req.getParameter("userpw"));
		member.setUsernick(req.getParameter("usernick"));
		
		return member;
		
	}

	@Override
	public void join(Memberkh member) {
		memberDao.insert(member);
		
	}
	
}
