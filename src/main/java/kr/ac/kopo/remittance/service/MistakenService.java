package kr.ac.kopo.remittance.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.remittance.vo.MistakenVO;

public interface MistakenService {
	
	/**
	 * 착오송금 신청 
	 * @param mistakenVO
	 */
	void insertMistaken(MistakenVO mistakenVO);
	
	/**
	 * 나의 모든 착오송금 신청 내역 조회
	 * @param id
	 * @return
	 */
	List<Map<String, Object>> selectAllMistaken(String id);

}
