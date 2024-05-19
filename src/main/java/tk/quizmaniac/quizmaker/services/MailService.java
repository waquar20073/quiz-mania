/**
 * 
 */
package tk.quizmaniac.quizmaker.services;

import org.springframework.mail.MailSender;


public interface MailService {
	public void setMailSender(MailSender mailSender);
	public void sendMail(String from, String to, String subject, String msg) ;
}
