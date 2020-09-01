package kr.ac.kopo.remittance.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RemInfoService;

@Controller
public class RemittanceController {
	
	@Autowired
	RemInfoService remInfoService;
	
	public ModelAndView remRegisterForm(HttpSession session) {
		
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("rem/remInfoRegisterForm");
		mav.addObject("remInfoList", remInfoService.selectRemInfoList(id));
		
		
		return mav;
	}

	
}
