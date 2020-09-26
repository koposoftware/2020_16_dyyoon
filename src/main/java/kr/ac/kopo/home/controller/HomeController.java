package kr.ac.kopo.home.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@GetMapping("/")
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	
	
	
	@GetMapping("/change")
	public String changeLocale(Locale locale, HttpSession session) {
		
		return "redirect:/";
	}
	
	
	
//	@GetMapping("/change")
//	public String changeLanguage(@RequestParam(required = false) String locale, HttpSession session, HttpServletRequest request) {
//		
//		
//		Locale locales = null;
//		
//		
//		if(locale.matches("en")) {
//			locales = Locale.ENGLISH;
//		}else if (locale.matches("zh")) {
//			locales = Locale.CHINESE;
//		}else {
//			locales = Locale.KOREAN;
//		}
//		
//		session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locales);
//		session.setAttribute("languageSet", locale);
//		
//		return "redirect:/";
//	}
}
