package kr.ac.kopo.exchange.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.exchange.service.ExchangeService;
import kr.ac.kopo.exchange.vo.ExchangeVO;

@Controller
public class ExchangeController {

	@Autowired
	private ExchangeService exchangeService;
	
	@GetMapping("/exchange")
	public ModelAndView allExchangeRate() {
		ModelAndView mav = new ModelAndView("exchange/allExchangeRate");
		List<ExchangeVO> exchangeList = exchangeService.selectAllExchangeRate();
		String exchangeRegDate = exchangeList.get(1).getRegdate();
		
		mav.addObject("exchangeList", exchangeList);
		mav.addObject("exchangeRegDate", exchangeRegDate);
		return mav;
	}
}
