package kr.ac.kopo.account.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class AccountController {

	@Autowired
	AccountService accountService;
	
	@ResponseBody
	@GetMapping("/account/balance/{accNo}")
	public Float getBalance(@PathVariable("accNo") String accNo) {
		return accountService.selectAccountBalance(accNo);
	}
	
	@GetMapping("/account")
	public ModelAndView allAccount(HttpSession session) {
		ModelAndView mav = new ModelAndView("account/allAccount");
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		mav.addObject("accountList", accountService.selectAccountList(id));
		
		return mav;
	}
	
	@GetMapping("/account/statement")
	public ModelAndView mainStatement() {
		ModelAndView mav = new ModelAndView("account/accountDetail");
		
		return mav;
	}
	
	
}
