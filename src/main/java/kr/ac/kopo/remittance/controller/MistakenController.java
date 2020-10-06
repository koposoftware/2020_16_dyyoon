package kr.ac.kopo.remittance.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.socket.WebSocketHandler;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.MistakenService;
import kr.ac.kopo.remittance.service.RemInfoService;
import kr.ac.kopo.remittance.service.RemittanceService;
import kr.ac.kopo.remittance.vo.MistakenVO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class MistakenController {
	
	@Autowired
	RemittanceService remittanceService;
	
	@Autowired
	MistakenService mistakenService;
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	RemInfoService remInfoService;
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/remittance/mistake")
	public ModelAndView remMistakeList(HttpSession session) {
		ModelAndView mav = new ModelAndView("rem/remMistakeList"); 
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		List<Map<String, Object>> mistakenList = mistakenService.selectAllMistaken(id);
		mav.addObject("mistakenList", mistakenList);
		
		return mav;
	}
	
	
	@GetMapping("/remittance/mistake/write")
	public ModelAndView remMistakeForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		List<Map<String, Object>> remittanceList = remittanceService.selectAllRemittance(id);
		mav.addObject("remittanceList", remittanceList);
		
		mav.setViewName("rem/remMistakeForm");
		return mav;
	}
	
	@PostMapping("/remittance/mistake/write")
	public ModelAndView remMistakeRegister(MistakenVO mistakenVO, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		System.out.println(mistakenVO);
		mistakenService.insertMistaken(mistakenVO);
		mav.setViewName("redirect:/remittance/mistake");
		return mav;
	}
	
	
/*-------------------------------------------
 * 
 * 				admin page
 * 
 * -------------------------------------------*/
	@GetMapping("/admin/mistaken")
	public ModelAndView allMisatkenList() {
		ModelAndView mav = new ModelAndView("admin/mistaken/mistakenCheck");
		
		mav.addObject("mistakenList", mistakenService.selectAllMistakenAdmin());
		mav.addObject("mistakenCount", mistakenService.selectMistakenCount());
		return mav;
	}
	
	@GetMapping("/admin/mistaken/{misNo}")
	public ModelAndView selectOneMistaken(@PathVariable("misNo") Integer misNo) {
		ModelAndView mav = new ModelAndView("admin/mistaken/mistakenCheckDetail");
		
		MistakenVO mistakenVO = mistakenService.selectMistakenByMisNo(misNo);
		RemittanceVO remittanceVO = remittanceService.selectRemittanceByRemNo(mistakenVO.getRemNo());
		AccountVO accountVO = accountService.selectAccountByAccNo(remittanceVO.getAccNo());
		RemInfoVO remInfoVO = remInfoService.selectRemInfoDetail(remittanceVO.getInfoNo());
		MemberVO memberVO = memberService.selectInformationById(accountVO.getId());
		
		mav.addObject("mistaken", mistakenVO);
		mav.addObject("remittance", remittanceVO);
		mav.addObject("account", accountVO);
		mav.addObject("remInfo", remInfoVO);
		mav.addObject("member", memberVO);
		
		return mav;
	}
	
	@PostMapping("/admin/mistaken")
	public ModelAndView mistakenCheck(MistakenVO mistaken) {
		
		ModelAndView mav = new ModelAndView("redirect:/admin/mistaken");
		mistakenService.updateStatusMistaken(mistaken);
		
		return mav;
	}
}
