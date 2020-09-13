package kr.ac.kopo.remittance.dao;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.remittance.vo.RemInfoVO;

public interface RemInfoDAO {
	
	/**
	 * 모든 송금정보 등록 현황 조회 기능
	 * @param id
	 * @return RemInfoVO list
	 */
	List<RemInfoVO> selectRemInfoList(String id);
	
	/**
	 * 선택한 송금정보 상세내역 조회 기능(수취인)
	 * @param remInfoNo 송금정보번호
	 * @return RemInfoVO 송금정보VO
	 */
	RemInfoVO selectRemInfoDetail(Integer remInfoNo);
	
	/**
	 * 송금정보 등록하기
	 * @param 송금정보VO
	 */
	void insertRemInfo(RemInfoVO remInfo);
	
	/*-------------------------
	   		ADMIN PAGE
	 -------------------------*/
	/**
	 * 모든 송금 정보 신청 내역들을 보는 기능
	 * @return RemInfoVO LIST
	 */
	List<RemInfoVO> selectAllRemInfoList();
	
	/**
	 * 송금정보 총 수 / 대기 수 
	 * @return countAll - 총 / countWaiting - 대기중
	 */
	Map<String, Object> selectRemInfoCount();
	
	/**
	 * 송금정보 심사 
	 * @param remInfo
	 */
	void updateStatusRemInfo(RemInfoVO remInfo);

}
