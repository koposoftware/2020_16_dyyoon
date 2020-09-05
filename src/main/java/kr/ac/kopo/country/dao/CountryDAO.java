package kr.ac.kopo.country.dao;

import java.util.List;

import kr.ac.kopo.country.vo.CountryVO;

public interface CountryDAO {

	/**
	 * 모든 국가 출력하는 메소드
	 * @return CountryVO list
	 */
	List<CountryVO> selectAllCountryList();
}
