package kr.ac.kopo.exchange.service;

import java.util.List;

import kr.ac.kopo.exchange.vo.ExchangeVO;

public interface ExchangeService {
	
	/**
	 * 모든 국가의 모든 환율 정보 조회
	 * @return
	 */
	List<ExchangeVO> selectAllExchangeRate();


}
