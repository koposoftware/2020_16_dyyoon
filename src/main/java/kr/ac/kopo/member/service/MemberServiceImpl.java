package kr.ac.kopo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public MemberVO login(MemberVO memberVO) {
		
		return memberDAO.login(memberVO);
	}

	@Override
	public MemberVO selectInformationById(String id) {
		return memberDAO.selectInformationById(id);
	}
	
	@Override
	public void updateMyInfo(MemberVO member) {
		memberDAO.updateMyInfo(member);
	}

	@Override
	public MemberVO selectIdInfoOfAcc(String accNo) {
		return memberDAO.selectIdInfoOfAcc(accNo);
	}

	

}
