package kr.ac.kopo.account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.account.service.AccountService;

@Controller
public class AccountController {

	@Autowired
	AccountService accountService;
	
	@ResponseBody
	@GetMapping("/account/balance/{accNo}")
	public Float getBalance(@PathVariable("accNo") String accNo) {
		return accountService.selectAccountBalance(accNo);
	}
	
	
}
