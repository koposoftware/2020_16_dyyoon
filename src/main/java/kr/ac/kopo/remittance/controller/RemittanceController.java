package kr.ac.kopo.remittance.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.country.vo.CountryVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RemInfoService;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class RemittanceController {
	
	@Autowired
	RemInfoService remInfoService;
	@Autowired
	AccountService accountService;
	
	@GetMapping("/remittance")
	public ModelAndView remRegisterForm(HttpSession session) {
		
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("rem/remRegisterForm");
		mav.addObject("remInfoList", remInfoService.selectRemInfoList(id));
		mav.addObject("accountList", accountService.selectAccountList(id));
		
		RemittanceVO remittanceVO = new RemittanceVO();
		mav.addObject("remittanceVO", remittanceVO);
		
		return mav;
	}
	
	
	 /* 이따 지울것
	  
	  @GetMapping("/remittance/confirm") public ModelAndView
	  remRegisterConfirm(@Valid RemittanceVO remittanceVO, BindingResult result,
	  HttpSession session) {
	  
	  ModelAndView mav = new ModelAndView(); String id =
	  ((MemberVO)session.getAttribute("loginVO")).getId();
	  
	  if(result.hasErrors()) { mav.addObject("remInfoList",
	  remInfoService.selectRemInfoList(id)); mav.addObject("accountList",
	  accountService.selectAccountList(id));
	  mav.setViewName("rem/remRegisterForm"); }else { RemInfoVO remInfoVO =
	  remInfoService.selectRemInfoDetail(remittanceVO.getInfoNo()); String status =
	  "remittanceConfirm";
	  
	  mav.addObject("status", status); mav.addObject("remittanceVO", remittanceVO);
	  mav.addObject("remInfoDetail", remInfoVO);
	  
	  mav.setViewName("rem/remRegisterConfirm"); }
	  
	  return mav; }
	 */
	
	@PostMapping("/remittance")
	public ModelAndView remRegister(@Valid RemittanceVO remittanceVO, BindingResult result, HttpSession session) {
		ModelAndView mav = new ModelAndView(); 
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		if(result.hasErrors()) { 
			mav.addObject("remInfoList", remInfoService.selectRemInfoList(id)); 
			mav.addObject("accountList", accountService.selectAccountList(id));
			mav.setViewName("rem/remRegisterForm"); 
		}else { 
			RemInfoVO remInfoVO = remInfoService.selectRemInfoDetail(remittanceVO.getInfoNo()); 
			String status = "remittanceConfirm";
			mav.addObject("status", status); 
			mav.addObject("remittanceVO", remittanceVO);
			mav.addObject("remInfoDetail", remInfoVO);
			mav.setViewName("rem/remRegister"); 
		}
		return mav;
	}

	
}
