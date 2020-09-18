package kr.ac.kopo.email.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.country.service.CountryService;
import kr.ac.kopo.country.vo.CountryVO;
import kr.ac.kopo.email.service.EmailService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RemInfoService;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class EmailController {
	
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private CountryService countryService;
	
	@Autowired
	private RemInfoService remInfoService;

	@PostMapping("/remInfo/ask/ajax")
	@ResponseBody
	public HashMap<String, String> sendEmail(@RequestBody String emailAddr, HttpSession session) {
		
		emailAddr = emailAddr.substring("emailAddr=".length());
		System.out.println(emailAddr);
		String[] email = emailAddr.split("%40");
		emailAddr = email[0] + "@" + email[1];
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		String fromName = ((MemberVO)session.getAttribute("loginVO")).getName();
		try {
			emailService.sendEmail(emailAddr, fromName);
			System.out.println("이메일 : " + emailAddr);
			map.put("msg", "성공적으로 이메일이 전송되었습니다");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("msg", "이메일 전송에 실패했습니다");
		}
		
		return map;
	}
	
	@GetMapping("/remInfo/ask/auth")
	public String authCheckForm() {
		
		return "email/remInfoAuth";
	}
	
	@PostMapping("/remInfo/ask")
	public ModelAndView authChecked(@RequestBody String id) {
		
		id = id.substring("id=".length());
		ModelAndView mav = new ModelAndView("email/remInfoAskForm");
		RemInfoVO remInfoVO = new RemInfoVO();
		List<CountryVO> countryList = countryService.selectAllCountryList();
		
		mav.addObject("remInfoVO", remInfoVO);
		mav.addObject("countryList", countryList);
		mav.addObject("id", id);
		
		return mav;
	}
	
	@PostMapping("/remInfo/ask/register")
	public ModelAndView askedRegister(@Valid RemInfoVO remInfo, BindingResult result, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		
		if(result.hasErrors()) {
			List<CountryVO> countryList = countryService.selectAllCountryList();
			mav.addObject("countryList", countryList);
			mav.setViewName("email/remInfoAskForm");
		}else {
			remInfo.setStatus("신청중");
			remInfoService.insertRemInfo(remInfo);
			
			mav.setViewName("email/remInfoAsk");
			mav.addObject("remInfoDetail", remInfo);
		}
		
		return mav;
	}
	
	
}
