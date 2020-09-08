package kr.ac.kopo.remittance.service;

import kr.ac.kopo.remittance.vo.RemittanceVO;

public interface RemittanceService {
	
	/**
	 * 해외송금 신천
	 * @param remittanceVO
	 */
	void insertRemittance(RemittanceVO remittanceVO);
	
	/**
	 * 해외송금 예약
	 * @param remittanceVO
	 */
	void insertReservation(RemittanceVO remittanceVO);

}
