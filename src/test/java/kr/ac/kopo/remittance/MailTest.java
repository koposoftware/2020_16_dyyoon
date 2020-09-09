package kr.ac.kopo.remittance;


import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/*.xml"})
public class MailTest {
	
	@Autowired
	JavaMailSender mailSender;
	
	@Autowired
	TemplateEngine emailTemplateEngine;
	
	@Test
	public void 이메일테스트() throws Exception{
		Context context = new Context();
		context.setVariable("name", "윤다영");
		context.setVariable("hero-airballoon", "hero-airballoon");
		context.setVariable("hanasafe-logo", "hanasafe-logo");
		context.setVariable("homepageUrl", "http://localhost:9999/Hana-Safe/");
		
		
		String from = "hanasafetransfer@gmail.com";
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		helper.setFrom(from);
		helper.setTo("maebsiyes@gmail.com");
		helper.setSubject("안녕하세요 윤다영님222~");
		
		String htmlContent = emailTemplateEngine.process("NewFile", context);
		helper.setText(htmlContent, true);
		
		helper.addInline("hero-airballoon", new ClassPathResource("resources/templates/hero-airballoon.jpg"), "image/jpg");
		helper.addInline("hanasafe-logo", new ClassPathResource("resources/templates/hanasafe-logo.png"), "image/png");
		
		mailSender.send(message);
		
		
		/*
		String title = "제목입니다";
		String content = "내용입니다";
		
		String to = "maebsiyes@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("hanasafetransfer@gmail.com");
		message.setTo(to);
		message.setSubject(title);
		message.setText(content);
		mailSender.send(message);
		*/
		
		
	}
}
