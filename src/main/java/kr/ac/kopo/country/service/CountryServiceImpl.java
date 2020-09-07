package kr.ac.kopo.country.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.country.dao.CountryDAO;
import kr.ac.kopo.country.vo.CountryVO;

@Service
public class CountryServiceImpl implements CountryService {

	@Autowired
	private CountryDAO countryDAO;

	@Override
	public List<CountryVO> selectAllCountryList() {
		return countryDAO.selectAllCountryList();
	}

	@Override
	public Float selectCountryRemittanceRate(String currencyCode) {
		return countryDAO.selectCountryRemittanceRate(currencyCode);
	}
	
	

}
