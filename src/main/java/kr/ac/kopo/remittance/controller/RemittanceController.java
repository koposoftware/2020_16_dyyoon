package kr.ac.kopo.remittance.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RemInfoService;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class RemittanceController {
	
	@Autowired
	RemInfoService remInfoService;
	@Autowired
	AccountService accountService;
	
	@GetMapping("/remittance")
	public ModelAndView remRegisterForm(Model model, HttpSession session) {
		
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("rem/remRegisterForm");
		mav.addObject("remInfoList", remInfoService.selectRemInfoList(id));
		mav.addObject("accountList", accountService.selectAccountList(id));
		
		RemittanceVO remittanceVO = new RemittanceVO();
		model.addAttribute("remittanceVO", remittanceVO);
		
		return mav;
	}

	
}
