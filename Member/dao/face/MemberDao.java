package dao.face;

import dto.Member;

public interface MemberDao {



	/**
	 * member_seq 를 이용하여 다음 pk로 사용될 userno를 조회한다
	 * @return - member_seq.nextval
	 */
	public int selectNextUserno();

	/**
	 * 신규회원을 삽입한다
	 * @param member - 삽입할 회원 정보 객체
	 * 			(userno 값을 이미 가지고 있음- 시퀀ㄴ스 사용하지 말 것)
	 */
	public void insert(Member member);

}
