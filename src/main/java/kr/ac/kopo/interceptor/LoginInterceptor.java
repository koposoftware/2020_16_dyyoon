package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.member.vo.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//HandlerMethod method = (HandlerMethod)handler; //어느 메소드를 호출할때 intercept하는지 알려줌
		//System.out.println("메소드 : " + method);
		//System.out.println("controller : " + method.getBean()); //getBean 하면 어느 controller, 어느 class인지 알 수 있음!
		
		//로그인 여부 체크
		HttpSession session = request.getSession();
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		
		if(loginVO == null) {
			
			String uri = request.getRequestURI();
			uri = uri.substring(request.getContextPath().length());
			
			String query = request.getQueryString();
			if(query != null && query.length() != 0) {
				uri = uri + "?" + query;
			}
			
			session.setAttribute("dest", uri);
			
			response.sendRedirect(request.getContextPath() + "/login");
			
			return false; // 그 컴포넌트로 가는 것을 막음 - 컴포넌트(해당컨트롤러에 해당 메소드)
		}
		
		//return true하면 실행하고, false면 화면이 안 뜸
		return true;
	}


	
}
