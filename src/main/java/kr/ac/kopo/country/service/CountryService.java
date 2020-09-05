package kr.ac.kopo.country.service;

import java.util.List;

import kr.ac.kopo.country.vo.CountryVO;

public interface CountryService {
	/**
	 * 모든 국가 출력하는 메소드
	 * @return CountryVO list
	 */
	List<CountryVO> selectAllCountryList();

}
