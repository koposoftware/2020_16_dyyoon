package kr.ac.kopo.account.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.statement.service.StatementService;

@Controller
public class AccountController {

	@Autowired
	AccountService accountService;
	@Autowired
	StatementService statementService;
	
	@ResponseBody
	@GetMapping("/account/balance/{accNo}")
	public String getBalance(@PathVariable("accNo") String accNo) {
		return accountService.selectAccountBalance(accNo);
	}
	
	@GetMapping("/account")
	public ModelAndView allAccount(HttpSession session) {
		ModelAndView mav = new ModelAndView("account/allAccount");
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		mav.addObject("accountList", accountService.selectAccountList(id));
		mav.addObject("myBalance", accountService.selectBalanceSumGroupByCurrency(id));
		
		List<AccountVO> accountList = accountService.selectAccountList(id);
		
		System.out.println(accountList.get(0).getBalance());
		System.out.println(accountList.get(1).getBalance());
		System.out.println(accountList.get(2).getBalance());
		   
		
		return mav;
	}
	
	@GetMapping("/account/statement")
	public ModelAndView mainStatementDetail(HttpSession session) {
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("account/accountDetail");
		
		AccountVO mainAccount = accountService.selectFavoriteAccount(id);
		mav.addObject("account", mainAccount);
		mav.addObject("accountList", accountService.selectAccountList(id));
		mav.addObject("statement", statementService.selectStatementByAccNo(mainAccount.getAccNo()));
		return mav;
	}
	
	@PostMapping("/account/statement")
	public ModelAndView statementDetail(HttpSession session, @RequestBody String accNo) {
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		accNo = accNo.substring("accNo=".length());
		ModelAndView mav = new ModelAndView("account/accountDetail");
		
		AccountVO account = accountService.selectAccountByAccNo(accNo);
		mav.addObject("account", account);
		mav.addObject("accountList", accountService.selectAccountList(id));
		mav.addObject("statement", statementService.selectStatementByAccNo(accNo));
		return mav;
	}
	
	
	
}
