package kr.ac.kopo.bank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.bank.service.BankService;
import kr.ac.kopo.bank.vo.BankVO;

@Controller
public class BankController {
	
	@Autowired
	private BankService bankService;
	
	@ResponseBody
	@GetMapping("/bank/{bankCode}")
	public BankVO getBankInfo(@PathVariable("bankCode") String bankCode) {
		BankVO bankVO = bankService.selectBankByCode(bankCode);
		System.out.println(bankVO);
		return bankVO;
	}

}
