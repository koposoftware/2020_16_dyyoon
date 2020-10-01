package kr.ac.kopo.home.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import kr.ac.kopo.exchange.service.ExchangeService;

@Controller
public class HomeController {
	
	@Autowired
	ExchangeService exchangeService;
	
	@GetMapping("/")
	public ModelAndView home(Locale locale, Model model) {
		
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("countryList", exchangeService.selectExchangeRateForIndex());
		mav.addObject("updateTime", exchangeService.selectExchangeRateForIndex().get(1).get("REGDATE"));
		return mav;
	}
	
	
	
	@GetMapping("/change")
	public String changeLocale(Locale locale, HttpSession session) {
		session.setAttribute("langauge", locale.getLanguage());
		return "redirect:/";
	}
	
	
	
}
