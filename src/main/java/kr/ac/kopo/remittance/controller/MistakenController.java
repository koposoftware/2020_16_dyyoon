package kr.ac.kopo.remittance.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.MistakenService;
import kr.ac.kopo.remittance.service.RemittanceService;
import kr.ac.kopo.remittance.vo.MistakenVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class MistakenController {
	
	@Autowired
	RemittanceService remittanceService;
	
	@Autowired
	MistakenService mistakenService;
	
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
	public ModelAndView allRemList() {
		ModelAndView mav = new ModelAndView("admin/mistaken/mistakenCheck");
		
		
		return mav;
	}
}
