/*package com.dx.zscq.mail;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dx.core.util.mail.mime.MailModel;
import com.dx.core.util.mail.mime.MimeMsgService;

@Component("simpleMailTest")
public class SimpleMailTest {

	@Resource(name="mimeMsgService")
	private MimeMsgService mimeMsgService;
	
	public void sendMail(){
		
		MailModel model = new MailModel();
		// model settings ...
		
		mimeMsgService.sendEmail(model);
	}
	
}
*/