package com.dx.zscq.task;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class TestJob2 {

//	@Scheduled(cron="0/2 * * * * ?")
	public void run() {
		System.out.println("===================>执行 TestJob2");
	}
}
