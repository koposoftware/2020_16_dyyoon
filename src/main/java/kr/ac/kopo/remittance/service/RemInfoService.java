package kr.ac.kopo.remittance.service;

import java.util.List;

import kr.ac.kopo.remittance.vo.RemInfoVO;

public interface RemInfoService {
	
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
}
