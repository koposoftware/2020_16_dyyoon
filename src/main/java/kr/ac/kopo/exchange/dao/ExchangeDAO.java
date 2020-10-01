package kr.ac.kopo.exchange.dao;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.exchange.vo.ExchangeVO;

public interface ExchangeDAO {
	
	/**
	 * 모든 국가의 모든 환율 정보 조회
	 * @return
	 */
	List<ExchangeVO> selectAllExchangeRate();
	
	/**
	 * 메인 페이지(index)의 환율 정보 10개 국가 조회
	 */
	List<Map<String, Object>> selectExchangeRateForIndex();

}
