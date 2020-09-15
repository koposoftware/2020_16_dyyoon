package kr.ac.kopo.member.service;

import kr.ac.kopo.member.vo.MemberVO;

public interface MemberService {
	
	/**
	 * 로그인
	 * @param member
	 * @return
	 */
	MemberVO login(MemberVO memberVO);
	
	/**
	 * 내 정보 조회
	 * @param id
	 * @return memberVO 전체 정보
	 */
	MemberVO selectInformationById(String id);
	
	/**
	 * 내 정보 수정 ( 송금 정보에서 )
	 * @param member 영문이름, 전화번호, 이메일, 주소, 상세주소
	 */
	void updateMyInfo(MemberVO member);
	
	/**
	 * 해당 accNo의 멤버 정보 얻기
	 * @param accNo
	 * @return
	 */
	MemberVO selectIdInfoOfAcc(String accNo);
}
