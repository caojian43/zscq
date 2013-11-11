/*package com.dx.zscq.mail;

import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.dx.core.util.mail.mime.MailModel;
import com.dx.core.util.mail.mime.MimeMsgService;

public class MailTest {

	@Test
	public void run() {
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath:/spring/app-email.xml");
		ctx.refresh();

		MimeMsgService mailService = ctx.getBean(
				"mimeMsgService", MimeMsgService.class);
		MailModel model = new MailModel();
		
		mailService.sendEmail(model);
	}
}
*/