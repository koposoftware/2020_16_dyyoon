package kr.ac.kopo.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class MemberController {
	
	@GetMapping("/login")
	public String loginForm(Model model) {
		MemberVO memberVO = new MemberVO();
		
		model.addAttribute("memberVO", memberVO);
		
		return "member/login";
	}
}
