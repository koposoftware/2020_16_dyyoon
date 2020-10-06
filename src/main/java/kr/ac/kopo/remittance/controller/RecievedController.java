package kr.ac.kopo.remittance.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.bank.service.BankService;
import kr.ac.kopo.bank.vo.BankVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RecievedService;
import kr.ac.kopo.remittance.vo.RecievedVO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class RecievedController {
	
	@Autowired
	private RecievedService recievedService;
	
	@Autowired
	private BankService bankService;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/recieved/{recievedNo}")
	public ModelAndView reservedDetail(@PathVariable("recievedNo") Integer recievedNo, HttpSession session) {
		ModelAndView mav = new ModelAndView("rem/remListRecievedDetail");
		
		mav.addObject("recievedDetail", recievedService.selectRecievedDetail(recievedNo));
		return mav;
	}
	
	
	/*-------------------------------------------
	 * 
	 * 				admin page
	 * 
	 * -------------------------------------------*/
	@GetMapping("/admin/recieved")
	public ModelAndView allRemList() {
		
		ModelAndView mav = new ModelAndView("admin/recieved/recievedCheck");
		List<RecievedVO> recievedList = recievedService.selectAllRecievedAdmin();
		Map<String, Object> recievedCount = recievedService.selectRecievedCount();
		
		mav.addObject("recievedCount", recievedCount);
		mav.addObject("recievedList", recievedList);
		return mav;
	}
	
	@GetMapping("/admin/recieved/{recievedNo}")
	public ModelAndView recievedCheckDetail(@PathVariable("recievedNo") Integer recievedNo) {
		
		ModelAndView mav = new ModelAndView("admin/recieved/recievedCheckDetail");
		RecievedVO recievedDetail = recievedService.selectRecievedDetail(recievedNo);
		
		BankVO bankDetail = bankService.selectBankByCode(recievedDetail.getFromBankCode());
		AccountVO accountVO = accountService.selectAccountByAccNo(recievedDetail.getGetAccNo());
		
		
		String id = accountVO.getId();
		MemberVO member = memberService.selectInformationById(id);
		
		mav.addObject("recievedDetail", recievedDetail);
		mav.addObject("bankDetail", bankDetail);
		mav.addObject("member", member);
		
		return mav;
	}
	
	@PostMapping("/admin/recieved")
	public ModelAndView recievedCheck(RecievedVO recieved) {
		
		ModelAndView mav = new ModelAndView("redirect:/admin/recieved");
		recievedService.updateStatusRecieved(recieved);
		
		
		return mav;
	}
	
	

}
