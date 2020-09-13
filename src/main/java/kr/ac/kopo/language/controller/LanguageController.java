package kr.ac.kopo.language.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Controller
public class LanguageController {

	@GetMapping("/change")
	public String changeLanguage(@RequestParam(required = false) String locale, HttpSession session, HttpServletRequest request) {
		Locale locales = null;
		
		if(locale.matches("en")) {
			locales = Locale.ENGLISH;
		}else if (locale.matches("ch")) {
			locales = Locale.CHINESE;
		}else {
			locales = Locale.KOREAN;
		}
		
		session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, locales);
		//String redirectURL = "redirect:" + request.getHeader("referer");
		
		return "redirect:/";
	}
	
}
