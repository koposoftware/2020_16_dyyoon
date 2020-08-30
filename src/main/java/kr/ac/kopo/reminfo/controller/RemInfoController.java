package kr.ac.kopo.reminfo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.reminfo.service.RemInfoService;

@Controller
public class RemInfoController {
	
	@Autowired
	private RemInfoService service;

	@GetMapping("/remInfo")
	public ModelAndView remInfoList(HttpSession session) {
		
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("rem/remInfo");
		mav.addObject("remInfoList", service.selectRemInfoList(id));
		return mav;
	}
	
	@GetMapping("/remInfo/{remInfoNo}")
	public ModelAndView remInfoDetail(@PathVariable("remInfoNo") int remInfoNo) {
		
		ModelAndView mav = new ModelAndView("rem/remInfoDetail");
		mav.addObject("remInfoDetail", service.selectRemInfoDetail(remInfoNo));
		return mav;
	}
	
	@GetMapping("/remInfoReg")
	public String remInfoReg() {
		return "rem/remInfoRegister";
	}
}
