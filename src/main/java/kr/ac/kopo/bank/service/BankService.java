package kr.ac.kopo.bank.service;

import kr.ac.kopo.bank.vo.BankVO;

public interface BankService {
	/**
	 * bankCode입력하면 관련 정보 조회
	 * @param bankCode
	 * @return
	 */
	BankVO selectBankByCode(String bankCode);


}
