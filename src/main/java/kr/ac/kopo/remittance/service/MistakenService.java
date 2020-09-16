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
	
	
	/*------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 * ----------------------------------*/
	/**
	 * 모든 착오송금신청내역조회 
	 * @param id
	 * @return
	 */
	List<Map<String, Object>> selectAllMistakenAdmin();
	/**
	 * 착오송금 처리 건수와 진행률 보여줌
	 * @return countAll countDone percentage
	 */
	Map<String, Object> selectMistakenCount();
	/**
	 * 해당 mis no에 해당하는 상세정보 조회
	 * @param misNo
	 * @return
	 */
	MistakenVO selectMistakenByMisNo(Integer misNo);
	
	/**
	 * 해당 mis no 처리 완료 (status 반환완료 로 변경)
	 * @param mistaken
	 */
	void updateStatusMistaken(MistakenVO mistaken);

}
