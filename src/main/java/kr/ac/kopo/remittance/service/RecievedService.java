package kr.ac.kopo.remittance.service;

import java.util.List;

import kr.ac.kopo.remittance.vo.RecievedVO;

public interface RecievedService {
	
	/**
	 * 해당 id의 모든 받은 송금내역 조회
	 * @param id
	 * @return 
	 */
	List<RecievedVO> selectRecieved(String id);

}
