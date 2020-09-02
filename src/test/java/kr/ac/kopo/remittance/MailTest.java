package kr.ac.kopo.remittance;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/*.xml"})
public class MailTest {
	
	@Autowired
	JavaMailSender mailSender;
	
	@Test
	public void 이메일테스트() throws Exception{
		String title = "제목입니다";
		String content = "내용입니다";
		
		String to = "maebsiyes@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("hanasafetransfer@gmail.com");
		message.setTo(to);
		message.setSubject(title);
		message.setText(content);
		mailSender.send(message);
		
		
		
	}
}
