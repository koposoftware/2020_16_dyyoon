package kr.ac.kopo.email.service;

import javax.mail.MessagingException;

public interface EmailService {
	
	/**
	 * remInfo 정보를 받는 분에게 직접 요청하게 이메일 보내는 메소드
	 * @param emailAddr
	 */
	void sendEmail(String emailAddr, String fromName) throws MessagingException;

}
