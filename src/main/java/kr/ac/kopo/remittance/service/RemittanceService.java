package kr.ac.kopo.remittance.service;

import java.util.List;

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
	
	/**
	 * 모든 해외송금 내역 조회
	 * @param id
	 * @return
	 */
	List<RemittanceVO> selectAllRemittance(String id);

}
