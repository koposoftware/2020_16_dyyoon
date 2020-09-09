package kr.ac.kopo.account.service;

import java.util.List;

import kr.ac.kopo.account.vo.AccountVO;

public interface AccountService {

	/**
	 * 해당 아이디의 모든 계좌 조회
	 * @param id 아이디
	 * @return  계좌 list
	 */
	List<AccountVO> selectAccountList(String id);
	
	/**
	 * 해당 계좌의 잔액 조회
	 * @param accNo 계좌번호
	 * @return float 잔액
	 */
	Float selectAccountBalance(String accNo);

}
