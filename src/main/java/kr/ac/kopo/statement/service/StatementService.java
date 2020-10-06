package kr.ac.kopo.statement.service;

import java.util.List;

import kr.ac.kopo.statement.vo.StatementVO;

public interface StatementService {
	
	/**
	 * 해당 계좌의 거래내역 조회
	 * @param AccNo
	 * @return
	 */
	List<StatementVO> selectStatementByAccNo(String accNo);
	
	/**
	 * 해외송금 후 거래내역 insert
	 * @param statement
	 */
	void insertRemittanceStatement(StatementVO statement);

}
