package kr.ac.kopo.remittance.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.country.vo.CountryVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.remittance.service.RecievedService;
import kr.ac.kopo.remittance.service.RemInfoService;
import kr.ac.kopo.remittance.service.RemittanceService;
import kr.ac.kopo.remittance.vo.RecievedVO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class RemittanceController {
	
	@Autowired
	MemberService memberService;
	@Autowired
	RemInfoService remInfoService;
	@Autowired
	AccountService accountService;
	@Autowired
	RemittanceService remittanceService;
	@Autowired
	RecievedService recievedService;
	
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
			
			System.out.println(remittanceVO);
			remittanceService.insertRemittance(remittanceVO);
			mav.setViewName("rem/remRegister"); 
		}
		return mav;
	}
	
	@GetMapping("/remittance/reserve")
	public ModelAndView remReserveForm(HttpSession session) {
		
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		ModelAndView mav = new ModelAndView("rem/remReserveForm");
		mav.addObject("remInfoList", remInfoService.selectRemInfoList(id));
		mav.addObject("accountList", accountService.selectAccountList(id));
		
		RemittanceVO remittanceVO = new RemittanceVO();
		mav.addObject("remittanceVO", remittanceVO);
		
		return mav;
	}
	
	@PostMapping("/remittance/reserve")
	public ModelAndView remReserve(@Valid RemittanceVO remittanceVO, BindingResult result, HttpSession session) {
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
			
			System.out.println(remittanceVO);
			remittanceService.insertReservation(remittanceVO);
			mav.setViewName("rem/remReserve"); 
		}
		return mav;
	}
	
	@GetMapping("/remittance/list")
	public ModelAndView remList(HttpSession session) {
		ModelAndView mav = new ModelAndView("rem/remList"); 
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		List<Map<String, Object>> remittanceList = remittanceService.selectAllRemittance(id);
		List<RecievedVO> recievedList = recievedService.selectReicevedOnlyApproved(id);
		
		mav.addObject("remittanceList", remittanceList);
		mav.addObject("recievedList", recievedList);
		
		return mav;
	}
	
	@GetMapping("/remittance/{remNo}")
	public ModelAndView remDetail(@PathVariable("remNo") Integer remNo, HttpSession session) {
		ModelAndView mav = new ModelAndView("rem/remListDetail");
		//remittance 정보
		RemittanceVO remittance = remittanceService.selectRemittanceByRemNo(remNo);
		//remInfo정보 얻기
		RemInfoVO remInfo = remInfoService.selectRemInfoDetail(remittance.getInfoNo());
		
		String status = "remittanceConfirm";
		mav.addObject("status", status); 
		mav.addObject("remittanceVO", remittance);
		mav.addObject("remInfoDetail", remInfo);
		
		return mav;
	}
	
	@GetMapping("/reserved/{remNo}")
	public ModelAndView reservedDetail(@PathVariable("remNo") Integer remNo, HttpSession session) {
		ModelAndView mav = new ModelAndView("rem/remListReservedDetail");
		//remittance 정보
		RemittanceVO remittance = remittanceService.selectRemittanceByRemNo(remNo);
		//remInfo정보 얻기
		RemInfoVO remInfo = remInfoService.selectRemInfoDetail(remittance.getInfoNo());
		
		String status = "remittanceConfirm";
		mav.addObject("status", status); 
		mav.addObject("remittanceVO", remittance);
		mav.addObject("remInfoDetail", remInfo);
		
		return mav;
	}
	
	
	/*-------------------------------------------
	 * 
	 * 				admin page
	 * 
	 * -------------------------------------------*/
	@GetMapping("/admin/remittance")
	public ModelAndView allRemList() {
		ModelAndView mav = new ModelAndView("admin/remittance/remittanceCheck");
		
		Map<String, Object> map = remittanceService.selectRemittanceCount();

		mav.addObject("remittanceList", remittanceService.selectAllRemittanceAdmin());
		mav.addObject("remittanceCount", map);
		
		return mav;
	}
	
	@GetMapping("/admin/remittance/{remNo}")
	public ModelAndView remCheckDetail(@PathVariable("remNo") Integer remNo) {
		
		ModelAndView mav = new ModelAndView("admin/remittance/remittanceCheckDetail");
		//remittance 정보
		RemittanceVO remittance = remittanceService.selectRemittanceByRemNo(remNo);
		
		//accNo에 해당하는 id찾고 id관련 정보 취득
		MemberVO member = memberService.selectIdInfoOfAcc(remittance.getAccNo());
		//remInfo정보 얻기
		RemInfoVO remInfo = remInfoService.selectRemInfoDetail(remittance.getInfoNo());
		
		
		mav.addObject("remittance", remittance);
		mav.addObject("member", member);
		mav.addObject("remInfoDetail", remInfo);
		
		
		return mav;
	}
	
	@PostMapping("/admin/remittance")
	public ModelAndView remCheck(RemittanceVO remittance) {
		
		ModelAndView mav = new ModelAndView("redirect:/admin/remittance");
		//remittance 승인(IN 중계은행으로 넘어감) / 승인거절(ER)
		remittanceService.updateStatusRemittance(remittance);
		System.out.println(remittance);
		return mav;
	}

	
}
