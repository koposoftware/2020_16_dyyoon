package kr.ac.kopo.remittance.dao;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.remittance.vo.RecievedVO;

public interface RecievedDAO {
	
	/**
	 * 해당 id의 모든 받은 송금내역 조회
	 * @param id
	 * @return 
	 */
	List<RecievedVO> selectRecieved(String id);
	
	/**
	 * id의 모든 받은 송금내역 조회 (승인된거만 볼 수 있음! 요청된건 못봄)
	 * @param id
	 * @return
	 */
	List<RecievedVO> selectReicevedOnlyApproved(String id);
	
	
	/**
	 * 해당 받은 송금내역 상세정보
	 * @param recievedNo integer 받은 송금내역 고유번호
	 * @return recievedVO 
	 */
	RecievedVO selectRecievedDetail(Integer recievedNo);
	
	
	
	
	/* -----------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 ----------------------------------------- */
	
	/**
	 * 모든 받은 송금내역 조회할 수 있게(심사용)
	 * @return
	 */
	List<RecievedVO> selectAllRecievedAdmin();
	
	/**
	 * 받은 송금 총 수 / 완료 수 
	 * @return countAll - 총 / countDone - 완료 / percentage - 달성비율
	 */
	Map<String, Object> selectRecievedCount();
	
	/**
	 * 받은 송금내역 심사 (요청됨 / 승인 / 비승인)
	 * @param recieved
	 */
	void updateStatusRecieved(RecievedVO recieved);
	

}
