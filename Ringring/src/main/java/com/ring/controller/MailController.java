package com.ring.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value ="/sendMail")
	public String sendMailTest(HttpServletRequest request){
		
		String from = "ringring395@gmail.com";
		String to = request.getParameter("tomail");		//받는 사람 이메일
		String title = request.getParameter("title");	//제목
		String content = request.getParameter("content");	//내용
		
        try {
        	
        	MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
                    
            messageHelper.setFrom(from);
            messageHelper.setTo(to);
            messageHelper.setSubject(title);
            messageHelper.setText(content, true);
            
            mailSender.send(message);
                    
		}catch(Exception e) {
			System.out.println(e);
		}
        return "/Ticket/ticket";
	}

}
