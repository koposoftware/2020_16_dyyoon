package kr.ac.kopo.exchange.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExchangeController {

	@GetMapping("/exchange")
	public ModelAndView allExchangeRate() {
		ModelAndView mav = new ModelAndView("exchange/allExchangeRate");
		
		return mav;
	}
}
