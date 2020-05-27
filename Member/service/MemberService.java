package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.Member;

public interface MemberService {
	/**
	 * 전달파라미터 추출(파싱)
	 * @param req - 요청 정보 객체
	 * @return Member - 전달파라미터를 다은 객ㄱ체
	 */

	public Member getParam(HttpServletRequest req) ;

	/**
	 * 전달된 정보를 이용하여 회원가입 처리
	 * @param member - 클라이언트로부터 입력된 회원 정보 객체
	 * @return - db에서 삽입
	 * 			(반환 객체에는 userno가 포함되어있어야 한다 )
	 */
	public Member join(Member member);
		

	
	
	

}
