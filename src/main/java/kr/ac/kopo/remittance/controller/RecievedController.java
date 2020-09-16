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

import kr.ac.kopo.remittance.service.RecievedService;
import kr.ac.kopo.remittance.vo.RecievedVO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Controller
public class RecievedController {
	
	@Autowired
	RecievedService recievedService;
	
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
		mav.addObject("recievedDetail", recievedService.selectRecievedDetail(recievedNo));
		
		return mav;
	}
	
	@PostMapping("/admin/recieved")
	public ModelAndView recievedCheck(RecievedVO recieved) {
		
		ModelAndView mav = new ModelAndView("redirect:/admin/recieved");
		recievedService.updateStatusRecieved(recieved);
		
		return mav;
	}
	
	

}
