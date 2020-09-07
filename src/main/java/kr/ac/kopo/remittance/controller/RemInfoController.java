package kr.ac.kopo.remittance.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.country.service.CountryService;
import kr.ac.kopo.country.vo.CountryVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RemInfoService;
import kr.ac.kopo.remittance.vo.RemInfoVO;

@Controller
public class RemInfoController {
	
	@Autowired
	private RemInfoService service;
	@Autowired
	private CountryService countryService;

	@GetMapping("/remInfo")
	public ModelAndView remInfoList(HttpSession session) {
		
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("rem/remInfo");
		mav.addObject("remInfoList", service.selectRemInfoList(id));
		return mav;
	}
	
	@GetMapping("/remInfo/{remInfoNo}")
	public ModelAndView remInfoDetail(@PathVariable("remInfoNo") Integer remInfoNo) {
		
		ModelAndView mav = new ModelAndView("rem/remInfoDetail");
		mav.addObject("remInfoDetail", service.selectRemInfoDetail(remInfoNo));
		return mav;
	}
	
	@GetMapping("/remInfo/register")
	public ModelAndView remInfoRegForm(Model model) {
		ModelAndView mav = new ModelAndView("rem/remInfoRegisterForm");
		
		RemInfoVO remInfoVO = new RemInfoVO();
		List<CountryVO> countryList = countryService.selectAllCountryList();
		
		mav.addObject("remInfoVO", remInfoVO);
		mav.addObject("countryList", countryList);
		
		return mav;
	}
	
	@PostMapping("/remInfo/register")
	public ModelAndView remInfoReg(@Valid RemInfoVO remInfo, BindingResult result, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		if(result.hasErrors()) {
			//System.out.println("필수항목 입력 필요");
			List<CountryVO> countryList = countryService.selectAllCountryList();
			mav.addObject("countryList", countryList);
			mav.setViewName("rem/remInfoRegisterForm");
		}else {
			remInfo.setStatus("신청중");
			remInfo.setId(((MemberVO)session.getAttribute("loginVO")).getId());
			service.insertRemInfo(remInfo);
			
			mav.setViewName("rem/remInfoRegister");
			mav.addObject("remInfoDetail", remInfo);
		}
		
		return mav;
	}
}
