package kr.ac.kopo.country.service;

import java.util.List;

import kr.ac.kopo.country.vo.CountryVO;

public interface CountryService {
	/**
	 * 모든 국가 출력하는 메소드
	 * @return CountryVO list
	 */
	List<CountryVO> selectAllCountryList();
	
	/**
	 * 해당 국가의 송금 환율을 보여주는 메소드
	 * @param countryCode 
	 * @return Float 환율(송금보낼때)
	 */
	Float selectCountryRemittanceRate(String currencyCode);

}
