/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class MailServiceImpl implements MailService{
	
	private MailSender mailSender;
	@Override
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	@Override
	public void sendMail(String from, String to, String subject, String msg) {

		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		mailSender.send(message);	
	}
}
