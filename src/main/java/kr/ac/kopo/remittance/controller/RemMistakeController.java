package kr.ac.kopo.remittance.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class RemMistakeController {

	
	@GetMapping("/remittance/mistake")
	public ModelAndView remMistakeList(HttpSession session) {
		ModelAndView mav = new ModelAndView("rem/remMistakeList"); 
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		return mav;
	}
	
	
	@GetMapping("/remittance/mistake/write")
	public ModelAndView remMistakeForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("rem/remMistakeForm");
		return mav;
	}
	
}
