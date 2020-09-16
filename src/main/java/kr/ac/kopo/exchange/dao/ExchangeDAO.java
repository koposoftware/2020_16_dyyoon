package kr.ac.kopo.exchange.dao;

import java.util.List;

import kr.ac.kopo.exchange.vo.ExchangeVO;

public interface ExchangeDAO {
	
	/**
	 * 모든 국가의 모든 환율 정보 조회
	 * @return
	 */
	List<ExchangeVO> selectAllExchangeRate();

}
