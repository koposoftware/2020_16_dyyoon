package kr.ac.kopo.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes({"loginVO"})
@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String loginForm() {
		
		return "login/login";
	}
	
	@PostMapping("/login")
	public ModelAndView login(MemberVO member, HttpSession session) {
		
		MemberVO loginVO = memberService.login(member);
		ModelAndView mav = new ModelAndView();
		
		if(loginVO == null) {
			//로그인 실패
			System.out.println("로그인실패");
			mav.setViewName("redirect:/login");
		}else {
			//로그인성공
			String dest = (String)session.getAttribute("dest");
			if(dest == null) {
				//로그인 인터셉터 안거친것 - 메인페이지로가면됨
				mav.setViewName("redirect:/");
			}else {
				//로그인 인터셉터 거친 것
				mav.setViewName("redirect:" + dest);
				session.removeAttribute("dest");
			}
			
			mav.addObject("loginVO", loginVO);
		}
		return mav;
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus session) {
		
		session.setComplete();
		
		return "redirect:/";
	}
	
	@PostMapping("/member/modify")
	public ModelAndView modifyMyInfo(MemberVO memberVO, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("redirect:/remInfo/register");
		String id = ((MemberVO)session.getAttribute("loginVO")).getId();
		memberVO.setId(id);
		memberService.updateMyInfo(memberVO);
		
		MemberVO loginVO = memberService.selectInformationById(id);
		
		mav.addObject("loginVO", loginVO);
		
		return mav;
	}
}
