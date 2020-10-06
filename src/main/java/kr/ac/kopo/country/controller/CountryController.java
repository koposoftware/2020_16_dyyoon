package kr.ac.kopo.country.controller;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.country.service.CountryService;

@Controller
public class CountryController {
	
	@Autowired
	CountryService countryService;
	
	@ResponseBody
	@GetMapping("/country/remittance/{currencyCode}")
	public BigDecimal getRemittanceRate(@PathVariable("currencyCode") String currencyCode) {
		return countryService.selectCountryRemittanceRate(currencyCode);
	}

}
