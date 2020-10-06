package kr.ac.kopo.email.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	@Autowired
	private TemplateEngine springTemplateEngine;
	
	@Override
	public void sendEmail(String emailAddr, String fromName) throws MessagingException{
		
		Context context = new Context();
		context.setVariable("homepageUrl", "http://localhost:9999/Hana-Safe/remInfo/ask/auth");
		
		
		String from = "hanasafetransfer@gmail.com";
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		
		helper.setFrom(from);
		helper.setTo(emailAddr);
		helper.setSubject("[HanaSafe] " + fromName + "님께서 해외송금 정보입력을 요청했습니다");
		
		String htmlContent = springTemplateEngine.process("remInfoEmail", context);
		helper.setText(htmlContent, true);
		
		
		mailSender.send(message);
		
	}

	
}
